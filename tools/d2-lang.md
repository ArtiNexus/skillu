# D2 Lang — 声明式架构图

- **领域**: 画图
- **类型**: CLI
- **安装**: `brew install d2`
- **收费**: 🟢 完全免费/开源 (MPL 2.0)
- **官网**: https://github.com/terrastruct/d2

## 调用模板

```bash
d2 input.d2 output.svg --theme 200
# 其他主题: --theme 0 (默认) | 1 (dark) | 200 (Earth)
# 输出格式: .svg | .png | .pdf
```

## Agent 输出规范

Agent 必须将 D2 脚本放在 ` ```d2 ` 代码块中。语法示例：

```d2
# 基本语法
x -> y: 调用

# 带标签的节点
server: 应用服务器 {
  shape: rectangle
  style.fill: "#E3F2FD"
}

database: PostgreSQL {
  shape: cylinder
  style.fill: "#FFF3E0"
}

server -> database: 读写数据
```

## 布局方向

```d2
direction: right   # 左→右 (默认)
# direction: down   # 上→下
```

## 样式速查

```d2
my_node: {
  shape: rectangle       # rectangle | cylinder | hexagon | circle | diamond
  style.fill: "#E8F5E9"
  style.stroke: "#4CAF50"
  style.border-radius: 8
  style.shadow: true
}
```
