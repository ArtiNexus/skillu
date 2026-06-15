# SkillU 能力索引

> Agent 收到任务时，先在此文件检索关键词。
> 命中后读取对应 `tools/` 文档获取调用规范。
> 仓库根: `~/skillu/` 或 `https://github.com/ArtiNexus/skillu/blob/main/`

---

## 📄 文档与排版

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| PDF, 排版, 论文, 报告 | Typst | [tools/typst.md](tools/typst.md) |
| HTML转PDF, 网页转PDF, 发票, 简历PDF | WeasyPrint | [tools/weasyprint.md](tools/weasyprint.md) |
| 格式转换, MD转Word, MD转PPT, MD转EPUB | Pandoc | [tools/pandoc.md](tools/pandoc.md) |
| 生成Word, Word文档, 公文 | python-docx | [tools/python-docx.md](tools/python-docx.md) |

## 🎨 画图与图表

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| 架构图, 流程图, 系统图, 网络图 | D2 Lang | [tools/d2-lang.md](tools/d2-lang.md) |
| 手绘图, 白板图, 草图, 脑暴图 | Excalidraw | [tools/excalidraw.md](tools/excalidraw.md) |
| 拓扑图, 关系图, 因果图, 复杂网络 | Graphviz | [tools/graphviz.md](tools/graphviz.md) |
| 思维导图, 脑图, 大纲可视化 | Markmap | [tools/markmap.md](tools/markmap.md) |
| 数据图表, 柱状图, 折线图, 散点图, 热力图 | Vega-Lite | [tools/vega-lite.md](tools/vega-lite.md) |
| 时序图, 甘特图, 类图, 状态图 | Mermaid | [tools/mermaid.md](tools/mermaid.md) |

## ✨ 视觉与创意

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| 代码卡片, 代码截图, 代码美图, 代码分享 | Silicon / Carbon | [tools/silicon.md](tools/silicon.md) 或 [tools/carbon.md](tools/carbon.md) |
| SVG生成, OG图片, 社交媒体图, 海报, Banner | Satori | [tools/satori.md](tools/satori.md) |
| 3D场景, 三维, Web3D, 虚拟展厅 | Three.js | [tools/threejs.md](tools/threejs.md) |
| 视频渲染, React视频, 动画视频, 数据动效 | Remotion | [tools/remotion.md](tools/remotion.md) |
| 数学动画, 公式动画, 教学视频 | Manim | [tools/manim.md](tools/manim.md) |

## 🔧 编程与工程

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| 代码格式化, 代码美化 | Prettier | [tools/prettier.md](tools/prettier.md) |
| 代码检查, Lint, 格式纠偏 | Biome | [tools/biome.md](tools/biome.md) |
| 浏览器测试, E2E, 自动化测试, 网页截图 | Playwright | [tools/playwright.md](tools/playwright.md) |
| 密钥扫描, 泄露检测, 安全扫描, 隐私检查 | Gitleaks | [tools/gitleaks.md](tools/gitleaks.md) |
| 漏洞扫描, 安全审计, 渗透测试 | Nuclei | [tools/nuclei.md](tools/nuclei.md) |

## 🎬 音视频

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| 视频处理, 转码, 剪辑, 压缩, 格式转换, GIF | FFmpeg | [tools/ffmpeg.md](tools/ffmpeg.md) |
| 语音转文字, 转录, 字幕生成, 听写 | Whisper | [tools/whisper.md](tools/whisper.md) |
| 文字转语音, 语音合成, 配音, 朗读, TTS | Edge-TTS | [tools/edge-tts.md](tools/edge-tts.md) |
| 人声分离, 伴奏提取, 音轨分离, 消音 | Spleeter | [tools/spleeter.md](tools/spleeter.md) |

## 📖 写作与知识

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| 剧本, 电影剧本, 好莱坞格式, 场景对白 | Fountain | [tools/fountain.md](tools/fountain.md) |

## 🤖 AI 管道

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| LLM路由, 模型代理, 多模型切换, API统一 | LiteLLM | [tools/litellm.md](tools/litellm.md) |
| 语义检索, RAG, 文档索引, 知识库, 向量搜索 | LlamaIndex | [tools/llamaindex.md](tools/llamaindex.md) |

## 🌐 搜索与抓取

| 关键词 | 工具 | 规范文档 |
|:-------|:-----|:---------|
| 网页转MD, 网页清洗, 去广告抓取, 内容提取 | Jina Reader | [tools/jina-reader.md](tools/jina-reader.md) |

---

> 共 28 个工具，全部经过端到端测试验证。
> 测试报告: [test-report.md](test-report.md)
> 安装: `./install.sh`
