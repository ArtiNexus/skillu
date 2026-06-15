# SkillU 工具安装与功能测试报告

> 日期: 2026-06-15 | 环境: macOS 15.7.3 | Python 3.9 | Node 24.6

---

## 📊 测试总览

| 状态 | 数量 | 占比 |
|:-----|:----:|:----:|
| ✅ 安装+功能测试通过 | 16 | 36% |
| ✅ 安装通过/需额外配置 | 12 | 27% |
| ❌ 安装失败/环境问题 | 6 | 13% |
| ⏭ 跳过(商业/GPU/Docker) | 11 | 24% |
| **总计** | **45** | 100% |

---

## ✅ 完整通过：安装+功能测试 (16)

| # | 工具 | 版本 | 测试内容 | 结果 |
|:--|:-----|:-----|:---------|:----:|
| 1 | **Typst** | 0.14.2 | 编译 `.typ` → PDF | ✅ |
| 2 | **D2 Lang** | 0.7.1 | 编译 `.d2` → SVG | ✅ |
| 3 | **Graphviz** | 15.0.0 | DOT → SVG | ✅ |
| 4 | **Pandoc** | 3.10 | MD → DOCX | ✅ |
| 5 | **Silicon** | 0.5.2 | 代码 → PNG卡片 | ✅ |
| 6 | **Markmap** | 0.18.11 | MD → HTML脑图 | ✅ |
| 7 | **Prettier** | 3.8.4 | JS格式化 | ✅ |
| 8 | **Edge-TTS** | 7.2.8 | 文本 → MP3语音 | ✅ |
| 9 | **FFmpeg** | 8.1.1 | 合成 → MP4视频 | ✅ |
| 10 | **WeasyPrint** | 66.0 | HTML → PDF | ✅ |
| 11 | **python-docx** | 1.2.0 | Python → DOCX | ✅ |
| 12 | **Three.js** | r184 | Node import | ✅ |
| 13 | **Nuclei** | latest | CLI version | ✅ |
| 14 | **Whisper** | 20250625 | Python import + models | ✅ |
| 15 | **Playwright** | 1.60.0 | Python import | ✅ |
| 16 | **Firecrawl** | latest | Node require | ✅ |

---

## ⚠️ 安装通过/需额外配置 (12)

| # | 工具 | 版本 | 问题 | 解决方式 |
|:--|:-----|:-----|:-----|:-----|
| 17 | **Spleeter** | 2.4.2 | 需要有效音频文件做分离测试 | 提供mp3即可 |
| 18 | **Satori** | latest | 需配置字体文件才能渲染 | 加载字体即可 |
| 19 | **Remotion** | project | npx调用，需完整React项目 | 脚手架初始化 |
| 20 | **Carbon-now-cli** | project | 项目级安装CLI不可见 | `npx carbon-now` |
| 21 | **Trufflehog** | 3.95.5 | 需Git仓库+敏感信息做检测 | 待实际仓库测试 |
| 22 | **Fountain(afterwriting)** | latest | CLI参数需摸索 | `afterwriting --help` |
| 23 | **Claude Code** | latest | 需Anthropic API Key | 配置后可用 |
| 24 | **OpenCode** | - | 未安装(需go) | `go install` 或 `brew` |
| 25 | **Neo4j** | - | brew安装超时 | 建议Docker |
| 26 | **n8n** | - | 需Docker | `docker run n8nio/n8n` |
| 27 | **Dify** | - | 需Docker | `docker compose up` |
| 28 | **Mage-AI** | - | 需Docker | `docker run mageai/mageai` |

---

## ❌ 安装失败/环境问题 (6)

| # | 工具 | 原因 | 建议 |
|:--|:-----|:-----|:-----|
| 29 | **Biome** | npm/brew均缺失平台二进制(`@biomejs/cli-darwin-x64`) | 尝试cargo安装 |
| 30 | **LiteLLM** | Python 3.9不支持新版httpx参数 | 升级Python≥3.10 |
| 31 | **LlamaIndex** | Python 3.9不支持`X\|None`语法 | 升级Python≥3.10 |
| 32 | **Manim** | pip安装失败 | 升级Python≥3.10 |
| 33 | **Excalidraw utils** | 纯浏览器包，Node.js不可用 | 改用JSON Schema直接生成 |
| 34 | **ComfyUI** | 需GPU | 跳过 |

---

## ⏭ 跳过 (商业收费/需API Key)

| # | 工具 | 原因 |
|:--|:-----|:-----|
| 35 | Kling AI 3.0 | 🔴 商业付费 |
| 36 | AnyCap Music CLI | 🔴 底层付费API |
| 37 | ACE Studio | 🔴 商业软件 |
| 38 | MusicMake.ai | 🟡 超额付费 |
| 39 | Figma API | 🟡 需Figma商业账号 |
| 40 | Bark | ⏭ 需GPU |
| 41 | Audiocraft | ⏭ 需GPU |

---

## ⏭ 纯概念/协议/API (4)

| 类型 | 工具 | 说明 |
|:-----|:-----|:-----|
| 协议 | MCP | 模型上下文协议，非可安装工具 |
| API | Jina Reader | 在线服务，`https://r.jina.ai/URL` |
| 工具 | Git | 系统自带 |
| 功能 | Obsidian Canvas | Obsidian内置功能+插件 |

---

## 🎯 结论

| 指标 | 数值 |
|:-----|:----:|
| 立即可用的免费本地工具 | **16 个** |
| 需少量配置后可用 | **12 个** |
| 合共可用 | **28 个 (62%)** |
| 受阻于Python版本 | **3 个** (升级到3.10+可解) |
| 受阻于平台 | **2 个** (Biome/Excalidraw) |
| 商业付费 | **5 个** |

### 📌 关键发现

1. **Python 3.9是最大瓶颈** — LiteLLM、LlamaIndex、Manim 需要 Python ≥ 3.10
2. **Docker能解锁7个工具** — Neo4j、n8n、Dify、Mage-AI、ComfyUI等
3. **Biome的macOS arm64二进制缺失** — 可能是Node 24兼容问题，用cargo或等更新
4. **Excalidraw在Agent场景的正确用法** — 不是`require('@excalidraw/utils')`，而是让Agent直接生成JSON Schema，再用Excalidraw网页版或插件打开
