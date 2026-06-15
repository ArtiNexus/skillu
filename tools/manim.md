# Manim — 数学动画引擎

- **领域**: 视觉创意
- **类型**: CLI
- **安装**: `brew install cairo pkg-config && pip install manim`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/3b1b/manim

## 调用模板

```bash
# 高质量渲染
manim -pqh scene.py MyScene

# 低质量快速预览
manim -pql scene.py MyScene
```

## Agent 输出规范

```python
from manim import *

class MyScene(Scene):
    def construct(self):
        t = Text('Hello SkillU', font_size=48, color=BLUE)
        self.play(Write(t))
        self.play(t.animate.scale(1.5).set_color(RED))
        self.wait(1)

        c = Circle(radius=1, color=YELLOW)
        s = Square(side_length=1.5, color=GREEN)
        self.play(Create(c), Create(s))
        self.wait(1)
```
