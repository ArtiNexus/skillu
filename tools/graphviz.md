# Graphviz — 图论拓扑图

- **领域**: 画图
- **类型**: CLI
- **安装**: `brew install graphviz`
- **收费**: 🟢 完全免费/开源 (EPL 2.0)
- **官网**: https://graphviz.org/

## 调用模板

```bash
dot -Tsvg input.dot -o output.svg
# 其他输出: -Tpng | -Tpdf | -Tjpg
```

## Agent 输出规范

Agent 必须将 DOT 脚本放在 ` ```dot ` 代码块中：

```dot
digraph G {
  rankdir=LR;           # 左→右 (TB=上→下)
  node [shape=box, style=rounded, fillcolor="#E3F2FD", style=filled];

  A -> B [label="调用"];
  B -> C [label="返回"];
  A -> D [label="备选"];

  subgraph cluster_0 {
    label="子系统";
    style=dashed;
    B; C;
  }
}
```

## 常用属性

```dot
node [shape=box, style="rounded,filled", fillcolor="#E8F5E9", fontname="Helvetica"]
edge [color="#666666", fontcolor="#999999"]

# shape类型: box | ellipse | diamond | cylinder | record | plaintext
```
