# Cyber Shu

Cyber Shu is a custom animated pet for the Codex desktop app. He wears a blue T-shirt and black glasses, with animations for idling, running, waving, jumping, waiting, failure, code review, and more.

![Cyber Shu animation overview](preview/contact-sheet.png)

## Quick Start

### macOS / Linux

Clone the repository and run the installer:

```bash
git clone git@github.com:Waldeinsamkeit123/Cyber_Shu.git
cd Cyber_Shu
./install.sh
```

After installation, open or restart Codex and select **Cyber Shu** in the **Mini / Pet settings**. The exact menu name may vary between Codex versions.

### Manual Installation

1. Create a pet directory inside the Codex configuration directory:

   ```bash
   mkdir -p "${CODEX_HOME:-$HOME/.codex}/pets/cyber-shu"
   ```

2. Copy the pet manifest and spritesheet:

   ```bash
   cp pet/pet.json pet/spritesheet.webp \
     "${CODEX_HOME:-$HOME/.codex}/pets/cyber-shu/"
   ```

3. Open or restart Codex, then select **Cyber Shu**.

## Animation Preview

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
Cyber_Shu/
├── pet/
│   ├── pet.json          # Codex pet manifest
│   └── spritesheet.webp  # Ready-to-use v2 spritesheet
├── preview/              # Animation GIFs and overview image
├── qa/                   # Layout, transparency, and animation checks
├── source/
│   └── avatar.png        # Stylized character artwork; no original photo
├── install.sh            # macOS / Linux installer
└── README.md
```

## Technical Specifications

- Codex pet format: `spriteVersionNumber: 2`
- Spritesheet size: `1536 × 2288`
- Grid: `8 columns × 11 rows`
- Frame size: `192 × 208`
- Standard animations: 9
- Look directions: 16
- Image format: WebP with transparency

The final spritesheet passed layout, transparency, chroma-key residue, and animation-completeness checks. See [`qa/`](qa/) for the reports.

## Customizing the Name or Description

You can edit `displayName` and `description` in [`pet/pet.json`](pet/pet.json). Do not change `spriteVersionNumber`, the spritesheet dimensions, or the grid layout, as Codex may no longer play the animations correctly.

## Uninstalling

Remove the installed pet directory:

```bash
rm -rf "${CODEX_HOME:-$HOME/.codex}/pets/cyber-shu"
```

Before running the command, confirm that the path is complete and points specifically to the `cyber-shu` pet directory.

## Privacy

The character is a stylized creation based on a private visual reference. This repository contains only generated pet assets and does not include the original photograph.
