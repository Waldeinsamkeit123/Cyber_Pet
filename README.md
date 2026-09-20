# Cyber Pet

[English](README.md) | [简体中文](README.zh-CN.md)

Two custom animated pets for the Codex desktop app:

- **Cyber Shu** — cheerful, in a blue T-shirt and black glasses.
- **Cyber Pao** — sleepy, in a white T-shirt, black trousers, and white sneakers.

Both include the standard Codex animations and 16 look directions.

| Cyber Shu | Cyber Pao |
| --- | --- |
| ![Cyber Shu animation overview](preview/contact-sheet.png) | ![Cyber Pao animation overview](preview/cyber-pao/contact-sheet.png) |

## Quick Start

### macOS / Linux

Clone the repository and run the installer:

```bash
git clone git@github.com:Waldeinsamkeit123/Cyber_Pet.git
cd Cyber_Pet
./install.sh             # Cyber Shu
./install.sh cyber-pao   # Cyber Pao
```

After installation, open or restart Codex and select **Cyber Shu** or **Cyber Pao** in the **Mini / Pet settings**. The exact menu name may vary between Codex versions.

### Manual Installation

For Cyber Shu, copy `pet/pet.json` and `pet/spritesheet.webp` into `${CODEX_HOME:-$HOME/.codex}/pets/cyber-shu/`. For Cyber Pao, copy the two files from `pets/cyber-pao/` into `${CODEX_HOME:-$HOME/.codex}/pets/cyber-pao/`.

For example, to install Cyber Pao manually:

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/pets/cyber-pao"
cp pets/cyber-pao/pet.json pets/cyber-pao/spritesheet.webp \
  "${CODEX_HOME:-$HOME/.codex}/pets/cyber-pao/"
```

Open or restart Codex, then select the installed pet.

## Animation Preview

The GIFs below show Cyber Shu. See [`preview/cyber-pao/`](preview/cyber-pao/) for Cyber Pao's animations.

| State | Preview |
| --- | --- |
| Idle | ![Idle](preview/idle.gif) |
| Running right | ![Running right](preview/running-right.gif) |
| Running left | ![Running left](preview/running-left.gif) |
| Waving | ![Waving](preview/waving.gif) |
| Jumping | ![Jumping](preview/jumping.gif) |
| Waiting | ![Waiting](preview/waiting.gif) |
| Working | ![Working](preview/running.gif) |
| Failed | ![Failed](preview/failed.gif) |
| Code review | ![Code review](preview/review.gif) |

## Project Structure

```text
Cyber_Pet/
├── pet/
│   ├── pet.json          # Codex pet manifest
│   └── spritesheet.webp  # Ready-to-use v2 spritesheet
├── pets/cyber-pao/       # Cyber Pao manifest and spritesheet
├── preview/              # Cyber Shu previews
│   └── cyber-pao/        # Cyber Pao previews
├── qa/                   # Validation reports
│   └── cyber-pao/
├── source/
│   ├── avatar.png        # Cyber Shu stylized artwork
│   └── cyber-pao/avatar.png
├── install.sh            # macOS / Linux installer
├── README.md             # English
└── README.zh-CN.md       # Simplified Chinese
```

## Technical Specifications

- Codex pet format: `spriteVersionNumber: 2`
- Spritesheet size: `1536 × 2288`
- Grid: `8 columns × 11 rows`
- Frame size: `192 × 208`
- Standard animations: 9
- Look directions: 16
- Image format: WebP with transparency

Both final spritesheets passed layout and transparency checks. See [`qa/`](qa/) for the reports.

## Customizing the Name or Description

You can edit `displayName` and `description` in [`pet/pet.json`](pet/pet.json) or [`pets/cyber-pao/pet.json`](pets/cyber-pao/pet.json). Do not change `spriteVersionNumber`, the spritesheet dimensions, or the grid layout, as Codex may no longer play the animations correctly.

## Uninstalling

Remove the installed pet directory:

```bash
rm -rf "${CODEX_HOME:-$HOME/.codex}/pets/cyber-pao"
```

Replace `cyber-pao` with `cyber-shu` to uninstall Cyber Shu. Before running the command, confirm that the path points specifically to the intended pet directory.

## Privacy

Both characters are stylized creations based on private visual references. This repository contains only generated pet assets and does not include the original photographs.
