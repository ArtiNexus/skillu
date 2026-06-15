# Biome — 极速代码格式化 & Lint

- **领域**: 编程工程
- **类型**: CLI
- **安装**: `curl -L https://github.com/biomejs/biome/releases/latest/download/biome-darwin-x64 -o /usr/local/bin/biome && chmod +x /usr/local/bin/biome`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://biomejs.dev/

## 调用模板

```bash
# 格式化
biome format --write src/

# Lint检查
biome lint src/

# 检查（不修改）
biome check src/

# 自动修复
biome check --write src/
```

## 支持语言

JS, TS, JSX, TSX, JSON, CSS
