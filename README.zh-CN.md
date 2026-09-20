# Cyber Pet

[English](README.md) | [简体中文](README.zh-CN.md)

这里有两个可用于 Codex 桌面端的动态宠物：

- **Cyber Shu**：蓝色 T 恤、黑框眼镜，性格开朗。
- **Cyber Pao**：白 T 恤、黑裤白鞋，困倦又可爱。

两者都有 Codex 标准动画和 16 个注视方向。

| Cyber Shu | Cyber Pao |
| --- | --- |
| ![Cyber Shu 动画总览](preview/contact-sheet.png) | ![Cyber Pao 动画总览](preview/cyber-pao/contact-sheet.png) |

## 快速安装

### macOS / Linux

克隆仓库后运行：

```bash
git clone git@github.com:Waldeinsamkeit123/Cyber_Pet.git
cd Cyber_Pet
./install.sh             # 安装 Cyber Shu
./install.sh cyber-pao   # 安装 Cyber Pao
```

安装完成后，打开或重启 Codex，在 **Mini / 宠物设置** 中选择 **Cyber Shu** 或 **Cyber Pao**。不同版本的 Codex 中入口名称可能略有不同。

### 手动安装

安装 Cyber Shu 时，把 `pet/` 下的两个文件复制到 `${CODEX_HOME:-$HOME/.codex}/pets/cyber-shu/`；安装 Cyber Pao 时，把 `pets/cyber-pao/` 下的两个文件复制到对应目录。

例如，手动安装 Cyber Pao：

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/pets/cyber-pao"
cp pets/cyber-pao/pet.json pets/cyber-pao/spritesheet.webp \
  "${CODEX_HOME:-$HOME/.codex}/pets/cyber-pao/"
```

打开或重启 Codex，然后选择已安装的宠物。

## 动画预览

| 状态 | Cyber Shu | Cyber Pao |
| --- | --- | --- |
| 待机 | ![Cyber Shu 待机](preview/idle.gif) | ![Cyber Pao 待机](preview/cyber-pao/idle.gif) |
| 向右奔跑 | ![Cyber Shu 向右奔跑](preview/running-right.gif) | ![Cyber Pao 向右奔跑](preview/cyber-pao/running-right.gif) |
| 向左奔跑 | ![Cyber Shu 向左奔跑](preview/running-left.gif) | ![Cyber Pao 向左奔跑](preview/cyber-pao/running-left.gif) |
| 挥手 | ![Cyber Shu 挥手](preview/waving.gif) | ![Cyber Pao 挥手](preview/cyber-pao/waving.gif) |
| 跳跃 | ![Cyber Shu 跳跃](preview/jumping.gif) | ![Cyber Pao 跳跃](preview/cyber-pao/jumping.gif) |
| 等待 | ![Cyber Shu 等待](preview/waiting.gif) | ![Cyber Pao 等待](preview/cyber-pao/waiting.gif) |
| 执行中 | ![Cyber Shu 执行中](preview/running.gif) | ![Cyber Pao 执行中](preview/cyber-pao/running.gif) |
| 失败 | ![Cyber Shu 失败](preview/failed.gif) | ![Cyber Pao 失败](preview/cyber-pao/failed.gif) |
| 代码审查 | ![Cyber Shu 代码审查](preview/review.gif) | ![Cyber Pao 代码审查](preview/cyber-pao/review.gif) |

## 项目结构

```text
Cyber_Pet/
├── pet/
│   ├── pet.json          # Codex 宠物配置
│   └── spritesheet.webp  # 可直接使用的 v2 精灵图
├── pets/cyber-pao/       # Cyber Pao 配置和精灵图
├── preview/              # Cyber Shu 动图
│   └── cyber-pao/        # Cyber Pao 动图
├── qa/                   # 验证报告
│   └── cyber-pao/
├── source/
│   ├── avatar.png        # Cyber Shu 风格化原画
│   └── cyber-pao/avatar.png
├── install.sh            # macOS / Linux 安装脚本
├── README.md             # English
└── README.zh-CN.md       # 简体中文
```

## 技术规格

- Codex 宠物格式：`spriteVersionNumber: 2`
- 精灵图尺寸：`1536 × 2288`
- 网格：`8 列 × 11 行`
- 单帧尺寸：`192 × 208`
- 标准动画：9 组
- 注视方向：16 个方向
- 图像格式：带透明通道的 WebP

两张最终精灵图均通过结构和透明度检查，详见 [`qa/`](qa/)。

## 自定义名称或说明

可以修改 [`pet/pet.json`](pet/pet.json) 或 [`pets/cyber-pao/pet.json`](pets/cyber-pao/pet.json) 中的 `displayName` 和 `description`。请不要修改 `spriteVersionNumber`、精灵图尺寸或网格布局，否则 Codex 可能无法正确播放动画。

## 卸载

删除安装目录即可：

```bash
rm -rf "${CODEX_HOME:-$HOME/.codex}/pets/cyber-pao"
```

若要卸载 Cyber Shu，把 `cyber-pao` 换成 `cyber-shu`。删除前请确认路径确实指向目标宠物目录。

## 隐私说明

两个角色都来自私人视觉参考的风格化创作。本仓库仅包含生成后的宠物素材，不包含原始真人照片。
