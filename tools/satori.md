# Satori — HTML/CSS 转 SVG

- **领域**: 视觉创意
- **类型**: SDK (ESM)
- **安装**: `npm install satori`
- **收费**: 🟢 完全免费/开源 (MPL)
- **官网**: https://github.com/vercel/satori

## 调用模板

```javascript
import satori from 'satori';
import fs from 'fs';

const fontData = fs.readFileSync('/path/to/font.ttf');
const svg = await satori(
  {
    type: 'div',
    props: {
      children: 'Hello',
      style: { fontSize: 40, color: '#333' }
    }
  },
  {
    width: 400, height: 100,
    fonts: [{ name: 'sans-serif', data: fontData, weight: 400, style: 'normal' }]
  }
);
fs.writeFileSync('output.svg', svg);
```

## 注意事项

- 必须提供至少一个字体文件(.ttf/.otf)
- 支持 Flexbox 布局（和浏览器CSS一致）
- 适合生成 OG 图片、社交媒体 Banner、海报
