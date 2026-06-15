#!/bin/bash
# SkillU — 一键安装脚本 (28个免费工具)
set -e

G='\033[0;32m'; Y='\033[1;33m'; R='\033[0;31m'; N='\033[0m'
ok() { echo -e "${G}✅${N} $1"; }
wn() { echo -e "${Y}⚠️${N} $1"; }
er() { echo -e "${R}❌${N} $1"; }

echo "🛠  SkillU Installer"
echo "━━━━━━━━━━━━━━━━━━━━━━━━"

# ── 环境 ──
OS=$(uname -s); echo "📌 $OS"
HAS_BREW=false; HAS_NPM=false; HAS_PIP=false
command -v brew &>/dev/null && HAS_BREW=true
command -v npm  &>/dev/null && HAS_NPM=true
command -v python3.12 &>/dev/null && HAS_PIP=true

# ═════════════════════════════════════
# Homebrew (8个)
# ═════════════════════════════════════
BREWS="typst pandoc graphviz ffmpeg d2 silicon gitleaks nuclei"
if $HAS_BREW; then
  echo ""; echo "── 📦 Homebrew ──"
  for p in $BREWS; do
    brew list $p &>/dev/null && ok "$p" || { echo "  安装 $p..."; brew install $p &>/dev/null && ok "$p" || er "$p"; }
  done
else
  wn "无 brew → 跳过: $BREWS"
fi

# ═════════════════════════════════════
# npm 全局 (4个)
# ═════════════════════════════════════
NPMS="markmap-cli prettier @mermaid-js/mermaid-cli afterwriting"
if $HAS_NPM; then
  echo ""; echo "── 📦 npm 全局 ──"
  for p in $NPMS; do
    n=$(echo $p | sed 's/@//' | cut -d@ -f1 | tr -d '/')
    npm ls -g --depth=0 2>/dev/null | grep -q "$n" && ok "$p" || { echo "  安装 $p..."; npm i -g "$p" &>/dev/null && ok "$p" || er "$p"; }
  done
else
  wn "无 npm → 跳过: $NPMS"
fi

# ═════════════════════════════════════
# Biome 二进制 (1个)
# ═════════════════════════════════════
echo ""; echo "── 📦 Biome(binary) ──"
if command -v biome &>/dev/null; then ok "biome"
else
  URL="https://github.com/biomejs/biome/releases/latest/download/biome-darwin-x64"
  curl -sL "$URL" -o /usr/local/bin/biome 2>/dev/null && chmod +x /usr/local/bin/biome && ok "biome" || er "biome"
fi

# ═════════════════════════════════════
# pip3.12 (9个)
# ═════════════════════════════════════
PIPS="weasyprint python-docx edge-tts spleeter openai-whisper playwright litellm llama-index manim"
if $HAS_PIP; then
  echo ""; echo "── 📦 pip3.12 ──"
  for p in $PIPS; do
    pip3.12 show "$p" &>/dev/null && ok "$p" || { echo "  安装 $p..."; pip3.12 install "$p" --break-system-packages &>/dev/null && ok "$p" || er "$p"; }
  done
else
  wn "无 python3.12 → 跳过: $PIPS (先: brew install python@3.12)"
fi

# ═════════════════════════════════════
# 提示 (无需安装 + 项目级)
# ═════════════════════════════════════
echo ""
echo "── 💡 无需安装 ──"
echo "   Excalidraw → Agent直接输出JSON"
echo "   Jina Reader → 在线API: curl https://r.jina.ai/URL"
echo ""
echo "── 💡 项目级(按需npm install) ──"
echo "   satori remotion @remotion/cli three puppeteer carbon-now-cli vega-lite"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 完成！单个安装见下方说明。"
echo ""

# ═════════════════════════════════════
# 单个安装指引
# ═════════════════════════════════════
if [ "${1}" = "--guide" ]; then
  echo "══════ 单个安装命令 ══════"
  echo "brew install typst pandoc graphviz ffmpeg d2 silicon gitleaks nuclei"
  echo "npm i -g markmap-cli prettier @mermaid-js/mermaid-cli afterwriting"
  echo "curl -L https://...biome-darwin-x64 -o /usr/local/bin/biome && chmod +x ..."
  echo "pip3.12 install weasyprint python-docx edge-tts spleeter openai-whisper playwright litellm llama-index manim --break-system-packages"
fi
