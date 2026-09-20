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

| State | Cyber Shu | Cyber Pao |
| --- | --- | --- |
| Idle | ![Cyber Shu idle](preview/idle.gif) | ![Cyber Pao idle](preview/cyber-pao/idle.gif) |
| Running right | ![Cyber Shu running right](preview/running-right.gif) | ![Cyber Pao running right](preview/cyber-pao/running-right.gif) |
| Running left | ![Cyber Shu running left](preview/running-left.gif) | ![Cyber Pao running left](preview/cyber-pao/running-left.gif) |
| Waving | ![Cyber Shu waving](preview/waving.gif) | ![Cyber Pao waving](preview/cyber-pao/waving.gif) |
| Jumping | ![Cyber Shu jumping](preview/jumping.gif) | ![Cyber Pao jumping](preview/cyber-pao/jumping.gif) |
| Waiting | ![Cyber Shu waiting](preview/waiting.gif) | ![Cyber Pao waiting](preview/cyber-pao/waiting.gif) |
| Working | ![Cyber Shu working](preview/running.gif) | ![Cyber Pao working](preview/cyber-pao/running.gif) |
| Failed | ![Cyber Shu failed](preview/failed.gif) | ![Cyber Pao failed](preview/cyber-pao/failed.gif) |
| Code review | ![Cyber Shu code review](preview/review.gif) | ![Cyber Pao code review](preview/cyber-pao/review.gif) |

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
