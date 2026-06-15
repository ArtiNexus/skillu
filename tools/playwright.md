# Playwright — 浏览器自动化测试

- **领域**: 编程工程
- **类型**: CLI / Python SDK
- **安装**: `pip install playwright && python3 -m playwright install chromium`
- **收费**: 🟢 完全免费/开源 (Apache 2.0)
- **官网**: https://playwright.dev/

## 调用模板

```python
from playwright.sync_api import sync_playwright

with sync_playwright() as p:
    browser = p.chromium.launch(headless=True)
    page = browser.new_page()
    page.goto('https://example.com')
    page.screenshot(path='screenshot.png')
    title = page.title()
    browser.close()
```

## 支持浏览器

Chromium, Firefox, WebKit (Safari)
