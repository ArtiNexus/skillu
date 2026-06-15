# Mermaid — Markdown 图表

- **领域**: 画图图表
- **类型**: CLI
- **安装**: `npm install -g @mermaid-js/mermaid-cli`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/mermaid-js/mermaid-cli

## 调用模板

```bash
mmdc -i input.mmd -o output.png -w 800 -H 600
# 或SVG: mmdc -i input.mmd -o output.svg
```

## Agent 输出规范

```mermaid
graph TD
    A[用户请求] --> B{判断}
    B -->|是| C[执行]
    B -->|否| D[拒绝]
    C --> E[返回结果]
```

也支持时序图、甘特图、类图等。
