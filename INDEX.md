# SkillU — Agent Tool Index

> 机器可读格式。Agent 启动时加载本文件即获得全工具检索能力。
> 每个工具的详细调用规范见 `tools/工具名.md`

## 主表

| id | 工具 | 领域 | 类型 | 安装 | 调用模板 | 输出 | 收费 | 状态 |
|:---|:-----|:-----|:-----|:-----|:---------|:-----|:----:|:----:|
| typst | Typst | 文档 | CLI | `brew install typst` | `typst compile in.typ out.pdf` | PDF | 🟢 | ✅ |
| weasyprint | WeasyPrint | 文档 | CLI | `pip install weasyprint` | `python -c "import weasyprint; weasyprint.HTML('in.html').write_pdf('out.pdf')"` | PDF | 🟢 | ✅ |
| pandoc | Pandoc | 文档 | CLI | `brew install pandoc` | `pandoc in.md -o out.docx` | DOCX/PDF/EPUB | 🟢 | ✅ |
| python-docx | python-docx | 文档 | SDK | `pip install python-docx` | Python脚本写入Word | DOCX | 🟢 | ✅ |
| n8n | n8n | 办公 | Docker | `docker run n8nio/n8n` | Webhook→工作流 | JSON | 🟢 | ⏳Docker |
| d2 | D2 Lang | 画图 | CLI | `brew install d2` | `d2 in.d2 out.svg --theme 200` | SVG/PNG/PDF | 🟢 | ✅ |
| graphviz | Graphviz | 画图 | CLI | `brew install graphviz` | `dot -Tsvg in.dot -o out.svg` | SVG/PNG/PDF | 🟢 | ✅ |
| excalidraw | Excalidraw | 画图 | JSON Schema | 无需安装 | 生成JSON→`.excalidraw`文件 | excalidraw/SVG/PNG | 🟢 | ⚠️前端包 |
| markmap | Markmap | 画图 | CLI | `npm i -g markmap-cli` | `markmap in.md -o out.html` | HTML脑图 | 🟢 | ✅ |
| mermaid | Mermaid | 画图 | CLI | `npm i -g @mermaid-js/mermaid-cli` | `mmdc -i in.mmd -o out.png` | PNG/SVG | 🟢 | ⏳ |
| vegalite | Vega-Lite | 画图 | SDK | `npm i vega-lite` | JSON→交互图表 | HTML/SVG | 🟢 | ⏳ |
| silicon | Silicon | 视觉 | CLI | `brew install silicon` | `silicon code.py -o card.png --theme Dracula` | PNG | 🟢 | ✅ |
| carbon | Carbon-now-cli | 视觉 | CLI | `npm i carbon-now-cli` | `npx carbon-now code.py` | PNG/SVG | 🟢 | ✅ |
| satori | Satori | 视觉 | SDK | `npm i satori` | HTML/CSS→SVG(需字体) | SVG | 🟢 | ⚠️需字体 |
| threejs | Three.js/R3F | 视觉 | SDK | `npm i three @react-three/fiber` | JS→3D场景 | Web/GLB | 🟢 | ✅ |
| remotion | Remotion | 视觉 | CLI | `npm i remotion` | React→MP4视频 | MP4 | 🟢 | ✅ |
| prettier | Prettier | 编程 | CLI | `npm i -g prettier` | `prettier --write "**/*.js"` | 格式化代码 | 🟢 | ✅ |
| biome | Biome | 编程 | CLI | ⚠️平台问题 | `biome format --write src/` | 格式化代码 | 🟢 | ❌二进制 |
| playwright | Playwright | 编程 | CLI | `pip install playwright` | 自动化E2E测试 | 测试报告 | 🟢 | ✅ |
| trufflehog | Trufflehog | 编程 | CLI | `brew install trufflehog` | `trufflehog git file://.` | 密钥扫描报告 | 🟢 | ✅ |
| nuclei | Nuclei | 编程 | CLI | `brew install nuclei` | `nuclei -t template.yaml -u URL` | 漏洞报告 | 🟢 | ✅ |
| mageai | Mage-AI | 编程 | Docker | `docker run mageai/mageai` | Python→ETL Pipeline | 数据管道 | 🟢 | ⏳Docker |
| ffmpeg | FFmpeg | 音视频 | CLI | `brew install ffmpeg` | `ffmpeg -i in.mp4 ... out.mp4` | MP4/MP3/GIF | 🟢 | ✅ |
| whisper | Whisper | 音视频 | CLI | `pip install openai-whisper` | `whisper audio.mp3 --model small` | SRT/TXT字幕 | 🟢 | ✅ |
| edge-tts | Edge-TTS | 音视频 | CLI | `pip install edge-tts` | `edge-tts --text "..." --write-media out.mp3` | MP3 | 🟢 | ✅ |
| spleeter | Spleeter | 音视频 | CLI | `pip install spleeter` | `spleeter separate -p spleeter:2stems in.mp3` | WAV分轨 | 🟢 | ⚠️需音频 |
| comfyui | ComfyUI | 音视频 | Self-host | `git clone` + GPU | 视频处理工作流 | MP4 | 🟢 | ⏳GPU |
| neo4j | Neo4j | 知识 | Docker | `docker run neo4j` | Cypher查询图 | JSON | 🟢 | ⏳Docker |
| llamaindex | LlamaIndex | 知识 | SDK | `pip install llama-index` | 向量索引+检索 | JSON | 🟢 | ❌Py3.9 |
| fountain | Fountain | 知识 | CLI | `npm i -g afterwriting` | Fountain→PDF剧本 | PDF | 🟢 | ✅ |
| jina | Jina Reader | 搜索 | API | 无需安装 | `https://r.jina.ai/URL` → Markdown | Markdown | 🟢 | ✅ |
| firecrawl | Firecrawl | 搜索 | SDK | `npm i @mendable/firecrawl-js` | URL→清洗Markdown | Markdown | 🟢 | ✅ |
| litellm | LiteLLM | Agent | CLI | `pip install litellm` | 统一LLM代理 | 流式响应 | 🟢 | ❌Py3.9 |
| opencode | OpenCode | Agent | CLI | `go install` 或`brew` | 终端Coding Agent | - | 🟢 | ⏳ |
| dify | Dify | Agent | Docker | `docker compose up` | 工作流API | JSON | 🟢 | ⏳Docker |
| claude-code | Claude Code | Agent | CLI | `npm i -g @anthropic-ai/claude-code` | 终端Agent(需API Key) | - | 🟡 | ⚠️需Key |

## 收费工具（不包含在主安装脚本中）

| id | 工具 | 原因 |
|:---|:-----|:-----|
| kling | Kling AI 3.0 | 🔴 商业付费视频API |
| anycap | AnyCap Music CLI | 🔴 底层调用付费音乐API |
| ace-studio | ACE Studio | 🔴 商业软件 |
| musicmake | MusicMake.ai | 🟡 超额付费 |
| figma | Figma API | 🟡 需Figma商业账号 |

## 协议/概念（无安装）

| id | 名称 | 说明 |
|:---|:-----|:-----|
| mcp | Model Context Protocol | Agent工具集成标准协议 |
| git | Git | 系统自带版本控制 |
| obsidian-canvas | Obsidian Canvas | Obsidian内置功能+插件 |

## 状态图例

| 标记 | 含义 |
|:----:|:-----|
| ✅ | 安装+功能测试通过，立即可用 |
| ⚠️ | 已安装/需额外配置 |
| ❌ | 安装失败（环境问题） |
| ⏳ | 需要Docker/GPU/Go等前置条件 |
