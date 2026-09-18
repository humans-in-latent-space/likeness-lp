#!/usr/bin/env bash

# Exit immediately if a command fails or an unset variable is used
set -euo pipefail

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
    echo "Error: 'ffmpeg' is required but not installed." >&2
    exit 1
fi

# Get file path from command-line argument or prompt user if not provided
FILE="${1:-}"

if [[ -z "$FILE" ]]; then
    read -rp "Please enter the file path (.wav or .mp3): " FILE
fi

# Validate that the file exists
if [[ ! -f "$FILE" ]]; then
    echo "Error: File '$FILE' does not exist or is not a regular file." >&2
    exit 1
fi

# Extract and normalize extension to lowercase
EXT="${FILE##*.}"
EXT_LOWER=$(echo "$EXT" | tr '[:upper:]' '[:lower:]')

# Validate file extension
if [[ "$EXT_LOWER" != "wav" && "$EXT_LOWER" != "mp3" ]]; then
    echo "Error: Invalid file extension ('.$EXT'). Only .wav and .mp3 files are supported." >&2
    exit 1
fi

# Reduce path to "parent_dir/filename" for cleaner display output
DISPLAY_FILE=$(echo "$FILE" | awk -F'/' '{if (NF>=2) print $(NF-1)"/"$NF; else print $0}')

echo ""
echo "=== AUDIO ANALYSIS ==="
echo ""
echo "File:                  $DISPLAY_FILE"

echo ""

# 1. Extract Duration and Sample Rate using ffprobe
DURATION_SEC=$(ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 "$FILE" || echo "N/A")
SAMPLE_RATE=$(ffprobe -v error -select_streams a:0 -show_entries stream=sample_rate -of default=noprint_wrappers=1:nokey=1 "$FILE" || echo "N/A")

# Calculate total samples and formatted duration (MM:SS.ms)
if [[ "$DURATION_SEC" != "N/A" && "$SAMPLE_RATE" != "N/A" ]]; then
    TOTAL_SAMPLES=$(awk -v d="$DURATION_SEC" -v sr="$SAMPLE_RATE" 'BEGIN { printf "%.0f", d * sr }')
    DURATION_FORMATTED=$(awk -v d="$DURATION_SEC" 'BEGIN {
        m = int(d / 60);
        s = d - (m * 60);
        printf "%02d:%05.2f", m, s
    }')
else
    TOTAL_SAMPLES="N/A"
    DURATION_FORMATTED="N/A"
fi

echo "Duration:              ${DURATION_FORMATTED}"
echo "Sample Rate:           ${SAMPLE_RATE} Hz"
echo "Total Samples:         ${TOTAL_SAMPLES}"

echo ""

# 2. Analyze audio properties (TruePeak, LRA/LDR, Integrated Loudness) using ffmpeg ebur128 filter
MEASUREMENT=$(ffmpeg -nostats -hide_banner -i "$FILE" -af ebur128=peak=true -f null - 2>&1)

# Extract summary metrics from the summary block
INTEGRATED_LUFS=$(echo "$MEASUREMENT" | grep -oP '^\s*I:\s*\K[-0-9.]+' | head -n1 || echo "N/A")
LRA_LU=$(echo "$MEASUREMENT" | grep -oP '^\s*LRA:\s*\K[-0-9.]+' | head -n1 || echo "N/A")
TRUE_PEAK=$(echo "$MEASUREMENT" | grep -oP '^\s*(Peak|TP):\s*\K[-0-9.]+' | head -n1 || echo "N/A")

# Extract Max Short-Term loudness from frame-by-frame log lines
MAX_SHORT_TERM=$(echo "$MEASUREMENT" | grep -oP '\bS:\s*\K[-0-9.]+' | sort -n | tail -n1)
MAX_SHORT_TERM="${MAX_SHORT_TERM:-N/A}"

# Calculate PLR (Peak-to-Loudness Ratio / Crest Factor approximation)
# PLR = True Peak - Integrated Loudness
if [[ "$TRUE_PEAK" != "N/A" && "$INTEGRATED_LUFS" != "N/A" ]]; then
    PLR=$(awk -v tp="$TRUE_PEAK" -v lufs="$INTEGRATED_LUFS" 'BEGIN { printf "%.2f", tp - lufs }')
else
    PLR="N/A"
fi

echo "Integrated Loudness:   ${INTEGRATED_LUFS} LUFS"
echo "True Peak:             ${TRUE_PEAK} dBTP"
echo "Max Short-Term:        ${MAX_SHORT_TERM} LUFS"
echo "Loudness Range (LDR):  ${LRA_LU} LU"
echo "Peak-Loudness (PLR):   ${PLR} dB"
echo ""

# 3. Calculate and print the SHA-256 hash of the decoded audio stream
echo -n "SHA-256 Audio Hash:    "
ffmpeg -nostats -loglevel error -i "$FILE" -map 0:a -c:a pcm_s16le -f s16le - | sha256sum | awk '{print $1}'

echo ""