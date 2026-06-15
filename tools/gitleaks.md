# Gitleaks — 密钥泄露扫描

- **领域**: 编程工程
- **类型**: CLI
- **安装**: `brew install gitleaks`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/gitleaks/gitleaks

## 调用模板

```bash
# 扫描Git历史
gitleaks detect --source .

# 扫描未提交的暂存区
gitleaks protect --staged

# 详细输出
gitleaks detect -v

# JSON输出
gitleaks detect --source . -f json -r report.json
```

## 为什么替代 Trufflehog

| | Gitleaks | Trufflehog |
|:---|:---|:---|
| 安装 | `brew install` 一行 | `brew install` |
| 速度 | 36ms (118 bytes) | ~180ms |
| 检测率 | 假密钥秒抓 | 假密钥不触发 |
| 复杂度 | 无配置直接用 | v3偏重verified需真密钥 |
