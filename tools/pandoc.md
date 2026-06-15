# Pandoc — 文档格式全能转换

- **领域**: 办公文档
- **类型**: CLI
- **安装**: `brew install pandoc`
- **收费**: 🟢 完全免费/开源 (GPL)
- **官网**: https://pandoc.org/

## 调用模板

```bash
# Markdown → Word
pandoc input.md -o output.docx

# Markdown → PDF (需LaTeX/Typst)
pandoc input.md -o output.pdf --pdf-engine=typst

# Markdown → PPT
pandoc input.md -o output.pptx

# Markdown → EPUB
pandoc input.md -o output.epub

# 带模板
pandoc input.md --reference-doc=template.docx -o output.docx
```

## 支持的格式

输入: `.md` `.html` `.docx` `.rst` `.tex` `.epub` `.org` 等30+
输出: `.docx` `.pdf` `.pptx` `.epub` `.html` `.tex` `.md` 等50+
