# FFmpeg — 音视频处理瑞士军刀

- **领域**: 音视频
- **类型**: CLI
- **安装**: `brew install ffmpeg`
- **收费**: 🟢 完全免费/开源 (LGPL/GPL)
- **官网**: https://ffmpeg.org/

## 常用调用模板

```bash
# 格式转换
ffmpeg -i input.mp4 output.webm

# 提取音频
ffmpeg -i video.mp4 -vn audio.mp3

# 视频剪辑 (从10秒开始截5秒)
ffmpeg -i input.mp4 -ss 00:00:10 -t 5 output.mp4

# 压缩视频
ffmpeg -i input.mp4 -crf 28 output.mp4

# 生成纯色+音频测试视频
ffmpeg -f lavfi -i color=c=blue:s=320x240:d=3 \
       -f lavfi -i sine=f=440:d=3 \
       -shortest output.mp4

# 合并音视频
ffmpeg -i video.mp4 -i audio.mp3 -c:v copy -c:a aac output.mp4

# GIF动图
ffmpeg -i video.mp4 -vf "fps=10,scale=320:-1" output.gif
```
