# WeasyPrint — HTML 转 PDF

- **领域**: 办公文档
- **类型**: CLI / Python SDK
- **安装**: `pip install weasyprint`
- **收费**: 🟢 完全免费/开源 (BSD)
- **官网**: https://weasyprint.org/

## 调用模板

```bash
# CLI方式
weasyprint input.html output.pdf

# Python方式
python3 -c "
import weasyprint
weasyprint.HTML('input.html').write_pdf('output.pdf')
"
```

## Agent 输出规范

Agent 输出标准 HTML + CSS，支持 `@page` 分页：

```html
<html>
<head>
<style>
  @page { size: A4; margin: 2cm; }
  h1 { color: #333; font-family: Arial; }
  table { border-collapse: collapse; width: 100%; }
  td, th { border: 1px solid #ddd; padding: 8px; }
</style>
</head>
<body>
  <h1>报告标题</h1>
  <table>
    <tr><th>项目</th><th>金额</th></tr>
    <tr><td>收入</td><td>¥10,000</td></tr>
  </table>
</body>
</html>
```
