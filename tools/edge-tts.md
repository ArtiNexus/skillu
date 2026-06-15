# Edge-TTS — 免费语音合成

- **领域**: 音视频
- **类型**: CLI / Python SDK
- **安装**: `pip install edge-tts`
- **收费**: 🟢 完全免费 (利用微软Edge浏览器内置语音接口)
- **官网**: https://github.com/rany2/edge-tts

## 调用模板

```bash
# 直接生成 MP3
edge-tts --text "你好世界" --write-media output.mp3

# 查看可用声线
edge-tts --list-voices

# 指定声线和语速
edge-tts --voice zh-CN-XiaoxiaoNeural --rate=+10% --text "..." --write-media out.mp3

# 生成字幕文件
edge-tts --text "..." --write-media out.mp3 --write-subtitles out.srt
```

## 推荐中文声线

| 声线 | 风格 |
|:-----|:-----|
| `zh-CN-XiaoxiaoNeural` | 温柔女声 |
| `zh-CN-YunxiNeural` | 男声播报 |
| `zh-CN-YunyangNeural` | 新闻男声 |
| `zh-CN-XiaoyiNeural` | 活泼女声 |
