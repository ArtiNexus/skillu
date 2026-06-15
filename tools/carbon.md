# Carbon — 代码转精美图片

- **领域**: 视觉创意
- **类型**: CLI
- **安装**: `npm install puppeteer carbon-now-cli`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/mixn/carbon-now-cli

## 调用模板

```bash
# 使用本地Chrome渲染
PUPPETEER_EXECUTABLE_PATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
npx carbon-now code.js -t dracula -h

# 主题选项
# -t dracula | one-dark | vscode | night-owl | panda-syntax | material
```

## 与 Silicon 对比

| | Carbon | Silicon |
|:---|:---|:---|
| 速度 | 需要浏览器(秒级) | Rust原生(毫秒级) |
| 效果 | 丰富主题+窗口控件 | 简洁高效 |
| 依赖 | Puppeteer+Chrome | 无 |
| 推荐 | 需要Carbon风格时 | 日常首选 |
