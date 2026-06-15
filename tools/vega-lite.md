# Vega-Lite — 声明式数据图表

- **领域**: 画图图表
- **类型**: SDK (ESM)
- **安装**: `npm install vega-lite vega`
- **收费**: 🟢 完全免费/开源 (BSD)
- **官网**: https://github.com/vega/vega-lite

## 调用模板

```javascript
import * as vl from 'vega-lite';
const spec = {
  mark: 'bar',
  data: { values: [{a:'A',b:28},{a:'B',b:55}] },
  encoding: {
    x: {field:'a', type:'nominal'},
    y: {field:'b', type:'quantitative'}
  }
};
const vegaspec = vl.compile(spec).spec;
```

## Agent 输出规范

输出完整的 JSON 规格，含 `data` + `mark` + `encoding`。

支持的 mark 类型: `bar` `line` `point` `area` `circle` `rect` `text` `tick` `rule`
