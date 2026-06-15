# Three.js — 3D 渲染引擎

- **领域**: 视觉创意
- **类型**: SDK + 浏览器
- **安装**: `npm install three puppeteer`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://threejs.org/

## 调用模板（Agent 用 Puppeteer 渲染）

```javascript
const puppeteer = require('puppeteer');

const html = `<!DOCTYPE html>
<html><head><script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script></head>
<body><canvas id="c"></canvas><script>
const scene = new THREE.Scene(); scene.background = new THREE.Color(0x1a1b26);
const cam = new THREE.PerspectiveCamera(75, 1, 0.1, 1000); cam.position.z = 3;
const r = new THREE.WebGLRenderer({canvas:document.getElementById('c'),antialias:true}); r.setSize(400,400);
// Agent在此插入3D场景代码
r.render(scene, cam);
</script></body></html>`;

(async () => {
  const b = await puppeteer.launch({
    headless: 'new',
    executablePath: '/Applications/Google Chrome.app/Contents/MacOS/Google Chrome'
  });
  const p = await b.newPage();
  await p.setContent(html, {waitUntil: 'networkidle0'});
  await p.screenshot({path: 'output.png'});
  await b.close();
})();
```

## 也可生成独立 HTML 文件

Agent 直接输出含 Three.js CDN 的 HTML，浏览器打开即可交互浏览 3D 场景。
