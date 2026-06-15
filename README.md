# SkillU — Universal Agent Arsenal

> 一个跨 Agent 通用的「Skill + CLI/SDK」工具武库。
> 无论你用的是 pi、Hermes、Claude Code 还是 OpenCode，
> 一行 `git clone` 就能获得 28+ 个经过验证的本地免费工具能力。

## 🚀 快速开始

```bash
git clone https://github.com/wybh03/skillu.git ~/skillu
cd ~/skillu
chmod +x install.sh
./install.sh          # 自动安装所有可自动装的工具
```

Agent 启动时，加载 `INDEX.md` 获得全工具检索表。需要某个工具时，让 Agent 读取 `tools/工具名.md` 获取调用规范。

## 📊 工具覆盖

| 领域 | 工具数 | 说明 |
|:-----|:-----:|:-----|
| 📄 办公文档 | 4 | Typst, WeasyPrint, Pandoc, python-docx |
| 🎨 画图图表 | 6 | D2, Excalidraw, Graphviz, Vega-Lite, Markmap, Mermaid |
| ✨ 视觉创意 | 5 | Silicon, Carbon, Satori, Three.js, Remotion |
| 🔧 编程工程 | 6 | Prettier, Biome, Playwright, Trufflehog, Nuclei, Mage-AI |
| 🎬 音视频 | 5 | FFmpeg, Whisper, Edge-TTS, Spleeter, ComfyUI |
| 📖 知识长文 | 3 | Neo4j, LlamaIndex, Fountain |
| 🌐 搜索Agent | 5 | Jina Reader, Firecrawl, LiteLLM, OpenCode, Claude Code |

## 📁 仓库结构

```
skillu/
├── README.md           # 你正在读的这个
├── INDEX.md            # Agent 检索主表（机器可读）
├── install.sh          # 一键安装脚本
├── test-report.md      # 安装与功能测试报告
└── tools/
    ├── typst.md        # 每个工具一个规范文件
    ├── d2-lang.md
    ├── graphviz.md
    └── ...
```

## 🟢/🔴 收费状态

- **🟢 完全免费/开源: 28 个**（本地运行，零成本）
- **🟡 免费额度/需账号: 3 个**（Figma API, MusicMake, Jina Reader）
- **🔴 商业付费: 5 个**（Kling AI, AnyCap, ACE Studio, Claude Code Token）

> 详见 `test-report.md`

## 🤖 怎么让 Agent 使用

告诉你的 Agent：

> "加载 `~/skillu/INDEX.md` 了解可用工具清单，
>  需要画图时读取 `~/skillu/tools/d2-lang.md` 获取调用规范，
>  按规范输出代码，本地 CLI 自动渲染。"

## 📝 许可

MIT — 工具各自保留原有许可。本仓库仅提供检索规范和安装指引。
