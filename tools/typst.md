# Typst — 现代化排版引擎

- **领域**: 办公文档
- **类型**: CLI
- **安装**: `brew install typst`
- **收费**: 🟢 完全免费/开源 (Apache 2.0)
- **官网**: https://github.com/typst/typst

## 调用模板

```bash
typst compile input.typ output.pdf
# 实时预览: typst watch input.typ
```

## Agent 输出规范

Agent 必须将 Typst 脚本放在 ` ```typst ` 代码块中。最小示例：

```typst
#set page(width: 210mm, height: 297mm, margin: 2.5cm)
#set text(font: "Libertinus Serif", size: 12pt)

= 标题

正文内容。*斜体* 和 **粗体** 都很简单。

== 二级标题

- 列表项一
- 列表项二

#figure(
  table(
    columns: 2,
    [项目], [金额],
    [收入], [¥10,000],
    [支出], [¥3,000],
  ),
  caption: [财务报表]
)
```

## 常用语法

```typst
#set page(paper: "a4")        // 纸张大小
#set par(leading: 0.8em)      // 行距
#align(center)[居中文本]       // 对齐
#image("photo.png", width: 50%) // 插入图片
```
