#!/bin/sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
PET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/cyber-shu"

mkdir -p "$PET_DIR"
cp "$SCRIPT_DIR/pet/pet.json" "$PET_DIR/pet.json"
cp "$SCRIPT_DIR/pet/spritesheet.webp" "$PET_DIR/spritesheet.webp"

printf 'Cyber Shu 已安装到：%s\n' "$PET_DIR"
printf '请打开或重启 Codex，然后在 Mini / 宠物设置中选择 Cyber Shu。\n'

