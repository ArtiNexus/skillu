# Trufflehog — 密钥泄露扫描

- **领域**: 编程工程
- **类型**: CLI
- **安装**: `brew install trufflehog`
- **收费**: 🟢 完全免费/开源 (AGPL)
- **官网**: https://github.com/trufflesecurity/trufflehog

## 调用模板

```bash
# 扫描Git仓库历史
trufflehog git file://. --no-update

# 扫描文件系统
trufflehog filesystem ./src --no-update

# JSON输出
trufflehog git file://. --json

# 扫描GitHub仓库
trufflehog github --repo=https://github.com/user/repo
```

## 检测范围

AWS密钥, GCP凭证, GitHub Token, SSH私钥, 数据库密码, API Key, JWT等 800+ 类型
