# Excalidraw — 手绘风格场景图

- **领域**: 画图图表
- **类型**: JSON Schema
- **安装**: 无需安装
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://docs.excalidraw.com/

## 调用模板

Agent 直接输出 JSON，保存为 `.excalidraw` 文件，双击即渲染。

## Agent 输出规范

```json
{
  "type": "excalidraw",
  "version": 2,
  "source": "Agent",
  "elements": [
    {
      "id": "r1",
      "type": "rectangle",
      "x": 100, "y": 50,
      "width": 200, "height": 60,
      "strokeColor": "#1e1e1e",
      "backgroundColor": "#a5d8ff",
      "roughness": 1,
      "roundness": { "type": 3 }
    },
    {
      "id": "t1",
      "type": "text",
      "x": 120, "y": 65,
      "text": "Hello",
      "fontSize": 20,
      "fontFamily": 1
    },
    {
      "id": "a1",
      "type": "arrow",
      "x": 300, "y": 80,
      "width": 100, "height": 0,
      "strokeColor": "#e03131",
      "roughness": 1,
      "points": [[0,0],[100,0]]
    }
  ],
  "appState": {
    "viewBackgroundColor": "#ffffff"
  }
}
```

## 元素类型

| type | 说明 |
|:-----|:-----|
| `rectangle` | 矩形，设roundness=3可圆角 |
| `ellipse` | 椭圆 |
| `diamond` | 菱形 |
| `text` | 文本 |
| `arrow` | 箭头 |
| `line` | 直线 |

## 导出

保存为 `.excalidraw` → 用 Excalidraw 打开 → 导出 SVG/PNG。
