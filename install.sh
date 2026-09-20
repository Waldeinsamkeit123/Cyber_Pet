#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
PET_ID=${1:-cyber-shu}
case "$PET_ID" in
  cyber-shu) SOURCE_DIR="$SCRIPT_DIR/pet" ;;
  cyber-pao) SOURCE_DIR="$SCRIPT_DIR/pets/cyber-pao" ;;
  *) printf 'Unknown pet: %s\n' "$PET_ID" >&2; exit 2 ;;
esac
PET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/$PET_ID"

mkdir -p "$PET_DIR"
cp "$SOURCE_DIR/pet.json" "$PET_DIR/pet.json"
cp "$SOURCE_DIR/spritesheet.webp" "$PET_DIR/spritesheet.webp"

printf '%s installed at: %s\n' "$PET_ID" "$PET_DIR"
printf 'Open or restart Codex, then select the pet in Mini / Pet settings.\n'
