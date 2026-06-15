# Fountain — 剧本排版

- **领域**: 知识长文
- **类型**: CLI
- **安装**: `npm install -g afterwriting`
- **收费**: 🟢 完全免费/开源
- **官网**: https://fountain.io/

## 调用模板

```bash
# 生成PDF剧本
afterwriting --source script.fountain --pdf output.pdf --overwrite
```

## Agent 输出规范

```fountain
Title: 剧本标题
Credit: 作者
Author: AI Agent

INT. 办公室 - 白天

爱丽丝
你好，世界！

鲍勃
这是 SkillU 生成的剧本。

INT. 会议室 - 晚上

爱丽丝
(低声)
一切准备就绪。
```

Fountain 是 Markdown 之于电影剧本——纯文本，易读写，自动排版。
