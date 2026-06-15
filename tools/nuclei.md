# Nuclei — 漏洞扫描引擎

- **领域**: 编程工程
- **类型**: CLI
- **安装**: `brew install nuclei`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/projectdiscovery/nuclei

## 调用模板

```bash
# 单目标扫描
nuclei -u https://example.com

# 批量扫描
nuclei -l targets.txt

# 自定义模板
nuclei -t my-template.yaml -u https://example.com

# 静默输出
nuclei -u URL -silent
```

## 自定义模板示例

```yaml
id: my-check
info:
  name: HTTP Probe
  severity: info
http:
  - method: GET
    path:
      - "{{BaseURL}}"
    matchers:
      - type: word
        words:
          - "Example"
```
