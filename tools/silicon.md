# Silicon — 代码转精美图片卡片

- **领域**: 视觉创意
- **类型**: CLI
- **安装**: `brew install silicon`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/Aloxaf/silicon

## 调用模板

```bash
# 基本用法
silicon code.py -o card.png

# 指定主题和背景
silicon code.py -o card.png --theme Dracula --background '#1a1b26'

# 带窗口控制按钮 (macOS风格)
silicon code.py -o card.png --window-controls

# 字体设置
silicon code.py -o card.png --font 'JetBrains Mono'

# 行号
silicon code.py -o card.png --no-line-number
```

## 常用主题

| 主题 | 风格 |
|:-----|:-----|
| `Dracula` | 暗色紫调 |
| `Monokai Extended` | 经典暗色 |
| `Nord` | 冷淡蓝灰 |
| `OneHalfDark` | 柔和暗色 |
| `GitHub` | 亮色简洁 |
| `Solarized (dark)` | 护眼暗色 |
