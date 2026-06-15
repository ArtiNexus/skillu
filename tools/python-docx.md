# python-docx — Word 文档生成

- **领域**: 办公文档
- **类型**: Python SDK
- **安装**: `pip install python-docx`
- **收费**: 🟢 完全免费/开源 (MIT)
- **官网**: https://github.com/python-openxml/python-docx

## 调用模板

```python
from docx import Document
from docx.shared import Inches, Pt, RGBColor
from docx.enum.text import WD_ALIGN_PARAGRAPH

doc = Document()
doc.add_heading('报告标题', level=1)
doc.add_paragraph('正文内容。')
doc.add_heading('数据表', level=2)

table = doc.add_table(rows=3, cols=2)
table.cell(0,0).text = '项目'
table.cell(0,1).text = '金额'

doc.save('output.docx')
```

## Agent 输出规范

直接输出完整 Python 脚本，放在 ` ```python ` 代码块中。
