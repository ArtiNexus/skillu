# Spleeter — 音轨分离

- **领域**: 音视频
- **类型**: CLI
- **安装**: `pip install spleeter`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/deezer/spleeter

## 调用模板

```bash
# 2轨分离 (人声+伴奏)
spleeter separate -p spleeter:2stems -o output/ input.mp3

# 4轨分离 (人声+鼓+贝斯+其他)
spleeter separate -p spleeter:4stems -o output/ input.mp3

# 5轨分离 (人声+鼓+贝斯+钢琴+其他)
spleeter separate -p spleeter:5stems -o output/ input.mp3

# 指定输出格式
spleeter separate -p spleeter:2stems -c mp3 -b 320k input.mp3
```

## 输出

- `2stems`: `vocals.wav` + `accompaniment.wav`
- `4stems`: `vocals.wav` + `drums.wav` + `bass.wav` + `other.wav`
- `5stems`: 上述 + `piano.wav`
