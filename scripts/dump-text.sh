#!/usr/bin/env bash
set -euo pipefail

# Directory resolution and targets
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
OUTPUT_DIR="${REPO_ROOT}/stages"
OUTPUT_FILE="${OUTPUT_DIR}/${1:-dump.md}"

mkdir -p "${OUTPUT_DIR}"

# Match files adhering to [0-9]{2}_*.md
shopt -s nullglob
LC_COLLATE=C
SOURCE_FILES=("${REPO_ROOT}"/[0-9][0-9]_*.md)

if [ ${#SOURCE_FILES[@]} -eq 0 ]; then
  echo "Error: No matching Markdown files found in ${REPO_ROOT}" >&2
  exit 1
fi

# Strip leading and trailing blank lines from stream
trim_blank_lines() {
  awk '
    /^[[:space:]]*$/ {
      if (started) { buffer = buffer $0 RS }
      next
    }
    {
      if (started) { printf "%s", buffer }
      buffer = ""
      print
      started = 1
    }
  ' "$1"
}

# Metadata extraction and dump initialization
GIT_HASH="$(git -C "${REPO_ROOT}" rev-parse HEAD 2>/dev/null || echo "unknown")"
TIMESTAMP="$(date -u +"%Y-%m-%d %H:%M:%S")"

{
  echo "<!-- ${TIMESTAMP} -->"
  echo "<!-- commit ${GIT_HASH} -->"
  echo ""
} > "${OUTPUT_FILE}"

# Sequential file aggregation
FIRST_ENTRY=true
for filepath in "${SOURCE_FILES[@]}"; do
  filename="$(basename "${filepath}")"

  if [ "${FIRST_ENTRY}" = true ]; then
    FIRST_ENTRY=false
  else
    printf "\n---\n\n" >> "${OUTPUT_FILE}"
  fi

  {
    echo "<!-- BEGIN FILE: ${filename} -->"
    echo ""
    trim_blank_lines "${filepath}"
    echo ""
    echo "<!-- END FILE: ${filename} -->"
  } >> "${OUTPUT_FILE}"
done

echo "Wrote ${#SOURCE_FILES[@]} file(s) to ${OUTPUT_FILE}"