# LlamaIndex — 语义索引与检索

- **领域**: AI管道
- **类型**: Python SDK
- **安装**: `pip3.12 install llama-index --break-system-packages`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://www.llamaindex.ai/

## 调用模板

```python
from llama_index.core import Document, VectorStoreIndex

# 创建文档
docs = [
    Document(text='SkillU is a universal agent arsenal.'),
    Document(text='It contains 25+ free CLI tools.')
]

# 构建索引并查询
index = VectorStoreIndex.from_documents(docs)
query_engine = index.as_query_engine()
response = query_engine.query('What is SkillU?')
print(response)
```

## 适用场景

- 文档问答 (RAG)
- 知识库检索
- 跨文档语义关联
- 长篇内容索引
