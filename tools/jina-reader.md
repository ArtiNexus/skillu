# Jina Reader — 网页转纯净 Markdown

- **领域**: 搜索抓取
- **类型**: 在线 API
- **安装**: 无需安装
- **收费**: 🟢 免费(高额度)
- **官网**: https://jina.ai/reader/

## 调用模板

```bash
# 任何URL前加前缀即可
curl https://r.jina.ai/https://example.com

# 搜索结果
curl https://s.jina.ai/your+search+query
```

## Agent 使用方式

Agent 无需本地安装，直接构造 URL 即可：

```
https://r.jina.ai/<目标URL>
```

返回纯净的 Markdown 文本，去除广告和导航，适合 Agent 直接消费。
