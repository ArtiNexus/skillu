#!/bin/bash
# SkillU — 一键安装脚本
# 自动探测系统环境，批量安装所有可自动装的免费工具
set -e

RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'
pass() { echo -e "${GREEN}✅${NC} $1"; }
warn() { echo -e "${YELLOW}⚠️${NC} $1"; }
fail() { echo -e "${RED}❌${NC} $1"; }

echo "🛠  SkillU Installer — $(date '+%Y-%m-%d %H:%M')"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ── Step 0: 环境探测 ──
OS=$(uname -s)
echo "📌 OS: $OS"
HAS_BREW=false; HAS_NPM=false; HAS_PIP=false; HAS_DOCKER=false
command -v brew &>/dev/null && HAS_BREW=true
command -v npm  &>/dev/null && HAS_NPM=true
command -v pip3 &>/dev/null && HAS_PIP=true
command -v docker &>/dev/null && HAS_DOCKER=true

# ── Step 1: Homebrew 工具 ──
if $HAS_BREW; then
  echo ""; echo "── 📦 Homebrew 工具 ──"
  BREW_PKGS="typst pandoc graphviz ffmpeg d2 silicon trufflehog nuclei"
  for pkg in $BREW_PKGS; do
    if brew list $pkg &>/dev/null; then pass "$pkg (已安装)"; else
      echo "  安装 $pkg..."
      brew install $pkg &>/dev/null && pass "$pkg" || fail "$pkg"
    fi
  done
else
  warn "brew 未安装，跳过 Homebrew 工具。请先安装: https://brew.sh"
fi

# ── Step 2: npm 全局工具 ──
if $HAS_NPM; then
  echo ""; echo "── 📦 npm 全局工具 ──"
  NPM_PKGS="markmap-cli prettier carbon-now-cli afterwriting @anthropic-ai/claude-code"
  for pkg in $NPM_PKGS; do
    name=$(echo $pkg | sed 's/@//' | cut -d@ -f1)
    if npm ls -g --depth=0 2>/dev/null | grep -q "$name"; then pass "$pkg (已安装)"; else
      echo "  安装 $pkg..."
      npm install -g "$pkg" &>/dev/null && pass "$pkg" || fail "$pkg"
    fi
  done
else
  warn "npm 未安装，跳过 Node 工具"
fi

# ── Step 3: pip3 Python 工具 ──
if $HAS_PIP; then
  echo ""; echo "── 📦 pip3 Python 工具 ──"
  PIP_PKGS="weasyprint python-docx edge-tts spleeter openai-whisper playwright"
  for pkg in $PIP_PKGS; do
    if pip3 show "$pkg" &>/dev/null; then pass "$pkg (已安装)"; else
      echo "  安装 $pkg..."
      pip3 install "$pkg" &>/dev/null && pass "$pkg" || fail "$pkg"
    fi
  done
else
  warn "pip3 未安装，跳过 Python 工具"
fi

# ── Step 4: Docker 提醒 ──
echo ""
if $HAS_DOCKER; then
  echo "💡 Docker 可用，可手动安装: neo4j, n8n, dify, mage-ai, comfyui"
else
  warn "Docker 未安装。以下工具需 Docker: neo4j, n8n, dify, mage-ai, comfyui"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 SkillU 安装完成！"
echo "   查看工具: cat ~/skillu/INDEX.md"
echo "   测试报告: cat ~/skillu/test-report.md"
