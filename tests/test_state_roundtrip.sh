#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
binary="${TMPDIR:-/tmp}/denis-state-roundtrip"

cc -std=gnu11 -Wall -Wextra -Werror \
  "$repo_root/tests/test_state_roundtrip.c" -lm -o "$binary"
"$binary"
