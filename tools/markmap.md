# Markmap — Markdown 转思维导图

- **领域**: 画图图表
- **类型**: CLI
- **安装**: `npm install -g markmap-cli`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://markmap.js.org/

## 调用模板

```bash
markmap input.md -o output.html
# 生成可交互的 HTML 脑图，浏览器打开可拖拽缩放
```

## HTML → PNG 导出（puppeteer 截图）

```bash
npm install -g puppeteer-core
```

```js
// screenshot.js
const puppeteer = require('puppeteer-core');

async function markmapToPng(htmlPath, outPath) {
  const browser = await puppeteer.launch({
    executablePath: '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
    headless: 'new', args: ['--no-sandbox', '--disable-gpu']
  });
  const page = await browser.newPage();
  
  // 大视口确保markmap完整渲染
  await page.setViewport({ width: 3000, height: 20000, deviceScaleFactor: 2 });
  await page.goto('file://' + htmlPath, { waitUntil: 'networkidle0', timeout: 30000 });
  await page.waitForSelector('svg#mindmap', { timeout: 15000 });
  await new Promise(r => setTimeout(r, 3000));
  
  // 用getBoundingClientRect精确定位内容 → clip裁剪
  const bounds = await page.evaluate(() => {
    const g = document.querySelector('svg#mindmap g');
    if (!g) return { x: 0, y: 0, w: 2000, h: 4000 };
    const r = g.getBoundingClientRect();
    return { x: Math.floor(r.x), y: Math.floor(r.y), w: Math.ceil(r.width), h: Math.ceil(r.height) };
  });
  
  await page.screenshot({
    path: outPath,
    clip: { x: Math.max(0, bounds.x - 20), y: Math.max(0, bounds.y - 20), width: bounds.w + 40, height: bounds.h + 40 }
  });
  console.log(`OK: ${outPath}`);
  await browser.close();
}

markmapToPng(process.argv[2], process.argv[3]);
```

```bash
node screenshot.js 脑图.html 脑图.png
```

**原理**: markmap的SVG用 `100vh` 填满视口，内容通过D3 transform定位在SVG纵向中间。直接用 `--screenshot` 会产生大量上方空白。`getBoundingClientRect()+clip` 精确裁剪到内容区域，无空白、无截断。

> **Chrome路径**: macOS `/Applications/Google Chrome.app/Contents/MacOS/Google Chrome`，Linux `google-chrome`。

## Agent 输出规范

Agent 输出标准 Markdown，用标题层级表达树结构：

```markdown
# 项目架构
## 前端
### React
### CSS
## 后端
### API
### 数据库
## 部署
### Docker
### CI/CD
```
