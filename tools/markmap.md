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
