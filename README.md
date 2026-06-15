# SkillU — Universal Agent Arsenal

> 跨 Agent 通用的「Skill + CLI/SDK」工具武库。
> 28 个本地免费工具，全部端到端测试通过。
> `git clone` 即用，支持一键批量安装或单个安装。

## 🚀 批量安装（推荐）

```bash
git clone https://github.com/ArtiNexus/skillu.git ~/skillu
cd ~/skillu
chmod +x install.sh
./install.sh
```

## 🎯 单个安装

```bash
# ── Homebrew (8个) ──
brew install typst pandoc graphviz ffmpeg d2 silicon gitleaks nuclei

# ── npm 全局 (4个) ──
npm install -g markmap-cli prettier @mermaid-js/mermaid-cli afterwriting

# ── Biome (二进制) ──
curl -L https://github.com/biomejs/biome/releases/latest/download/biome-darwin-x64 -o /usr/local/bin/biome
chmod +x /usr/local/bin/biome

# ── pip3.12 (9个) ──
pip3.12 install weasyprint python-docx edge-tts spleeter openai-whisper playwright litellm llama-index manim --break-system-packages

# ── 项目级 (6个，在项目目录内按需) ──
npm install satori remotion @remotion/cli three puppeteer carbon-now-cli vega-lite

# ── 无需安装 ──
# Excalidraw → Agent直接输出JSON
# Jina Reader → 在线 curl https://r.jina.ai/URL
```

## 📊 工具覆盖 (28/28 ✅)

| 领域 | 工具 |
|:-----|:-----|
| 📄 办公 | Typst, WeasyPrint, Pandoc, python-docx |
| 🎨 画图 | D2, Excalidraw, Graphviz, Mermaid, Markmap, Vega-Lite |
| ✨ 视觉 | Silicon, Carbon, Satori, Three.js, Remotion, Manim |
| 🔧 工程 | Prettier, Biome, Playwright, Gitleaks, Nuclei |
| 🎬 音视频 | FFmpeg, Whisper, Edge-TTS, Spleeter |
| 📖 知识 | Fountain |
| 🤖 AI管道 | LiteLLM, LlamaIndex |
| 🌐 搜索 | Jina Reader |

## 📁 仓库结构

```
skillu/
├── README.md            # 你正在读的这个
├── INDEX.md             # Agent 检索主表
├── install.sh           # 一键/单个安装脚本
├── skillu-tools.xlsx    # Excel 工具清单（可点击链接）
├── test-report.md       # 完整测试报告
└── tools/               # 每个工具的Skill调用规范 (28个)
```

## 🤖 Agent 使用方式

启动时加载 `~/skillu/INDEX.md`，需要某工具时读取 `~/skillu/tools/工具名.md`。
