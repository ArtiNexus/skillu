# LiteLLM — 统一 LLM 管道

- **领域**: AI管道
- **类型**: Python SDK / CLI
- **安装**: `pip3.12 install litellm --break-system-packages`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/BerriAI/litellm

## 调用模板

```python
import litellm

# 统一接口调用任意模型
response = litellm.completion(
    model='gpt-4',
    messages=[{'role': 'user', 'content': 'Hello'}]
)

# 支持 100+ 模型提供商
# OpenAI, Anthropic, Google, Azure, Ollama, DeepSeek...
```

## 核心功能

- 统一 API (OpenAI 格式) 对接 1795 个模型
- 自动重试、超时、降级
- 成本追踪、用量统计
- 支持本地 Ollama 模型
