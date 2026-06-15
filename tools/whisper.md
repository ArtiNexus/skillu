# Whisper — 语音转文字

- **领域**: 音视频
- **类型**: CLI / Python SDK
- **安装**: `pip install openai-whisper`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/openai/whisper

## 调用模板

```bash
# CLI方式
whisper audio.mp3 --model small --language zh

# Python方式
import whisper
model = whisper.load_model('tiny')
result = model.transcribe('audio.mp3', language='zh')
print(result['text'])
```

## 模型选择

| 模型 | 大小 | 速度 | 精度 |
|:-----|:----:|:----:|:----:|
| `tiny` | 39MB | 最快 | 最低 |
| `base` | 74MB | 快 | 一般 |
| `small` | 244MB | 中 | 较好 |
| `medium` | 769MB | 慢 | 好 |
| `large-v3` | 1.5GB | 最慢 | 最好 |

## 支持语言

英文、中文、日文、韩文、法文等 99 种语言。
