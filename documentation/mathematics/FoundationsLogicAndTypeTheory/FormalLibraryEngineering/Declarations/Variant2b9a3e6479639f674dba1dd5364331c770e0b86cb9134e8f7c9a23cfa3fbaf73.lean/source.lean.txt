#!/bin/sh
set -eu

if [ "$#" -ne 2 ]; then
  echo "usage: $0 <Lean-module> <fully-qualified-declaration>" >&2
  exit 64
fi

MODULE=$1
DECLARATION=$2

case "$MODULE" in
  *[!A-Za-z0-9_.]*|'')
    echo "invalid Lean module: $MODULE" >&2
    exit 64
    ;;
esac
case "$DECLARATION" in
  *[!A-Za-z0-9_.]*|'')
    echo "invalid Lean declaration: $DECLARATION" >&2
    exit 64
    ;;
esac

ROOT=$(git rev-parse --show-toplevel)
cd "$ROOT"

TMP_DIR=$(mktemp -d "${TMPDIR:-/tmp}/formal-research-audit.XXXXXX")
trap 'rm -rf "$TMP_DIR"' EXIT HUP INT TERM
AUDIT_FILE="$TMP_DIR/Audit.lean"

cat >"$AUDIT_FILE" <<EOF
import $MODULE

#print $DECLARATION
#print axioms $DECLARATION
EOF

if ! OUTPUT=$(lake env lean "$AUDIT_FILE" 2>&1); then
  printf '%s\n' "$OUTPUT" >&2
  exit 1
fi

printf '%s\n' "$OUTPUT"

if printf '%s\n' "$OUTPUT" | grep -F 'sorryAx' >/dev/null 2>&1; then
  echo "registry declaration depends on sorryAx: $DECLARATION" >&2
  exit 1
fi
