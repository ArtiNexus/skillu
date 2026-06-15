# Remotion — React 代码渲染视频

- **领域**: 视觉创意
- **类型**: CLI
- **安装**: `npm install remotion @remotion/cli react react-dom`
- **收费**: 🟢 完全免费/开源 (自用免费)
- **官网**: https://www.remotion.dev/

## 调用模板

```bash
# 初始化项目
npx create-video@latest

# 渲染视频
npx remotion render <composition-id> output.mp4

# 预览
npx remotion studio
```

## 最小项目结构

```
my-video/
├── package.json
└── src/
    ├── index.ts         # registerRoot
    └── Root.tsx         # Composition 定义
```

## Agent 输出示例

```tsx
// src/Root.tsx
import React from 'react';
import {Composition, useCurrentFrame, interpolate} from 'remotion';

const MyVideo = () => {
  const frame = useCurrentFrame();
  const opacity = interpolate(frame, [0, 30], [0, 1]);
  return (
    <div style={{flex: 1, justifyContent: 'center', alignItems: 'center',
      display: 'flex', fontSize: 80, color: 'white', background: '#1a1b26', opacity}}>
      Hello SkillU
    </div>
  );
};

export const RemotionRoot = () => (
  <Composition id="hello" component={MyVideo}
    durationInFrames={90} fps={30} width={1920} height={1080} />
);
```

## 关键点

- 需要同时安装 `remotion` + `@remotion/cli`（v4 拆分了）
- 渲染需要完整项目结构（非单文件）
