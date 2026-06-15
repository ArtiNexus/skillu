# Prettier — 代码格式化

- **领域**: 编程工程
- **类型**: CLI
- **安装**: `npm install -g prettier`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://prettier.io/

## 调用模板

```bash
# 格式化所有JS/TS文件
prettier --write "src/**/*.js"

# 检查但不修改
prettier --check "**/*.ts"

# 指定缩进和引号
prettier --write --tab-width 2 --single-quote "*.js"
```

## 支持语言

JS, TS, JSX, CSS, HTML, JSON, YAML, Markdown, GraphQL, Vue, Svelte 等 20+
