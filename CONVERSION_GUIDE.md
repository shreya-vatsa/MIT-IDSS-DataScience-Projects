# HTML to Jupyter Notebook Conversion Guide

This guide explains how to convert the HTML notebooks back to `.ipynb` format if you prefer working with native Jupyter notebooks.

## Option 1: Manual Recreation (Recommended for Learning)

The HTML files contain all the code and output, so you can:

1. Open the HTML file in your browser
2. Create a new Jupyter notebook
3. Copy code cells from the HTML into new notebook cells
4. This helps you understand the code better and allows you to modify it

## Option 2: Using Python Scripts

### Method A: Using `nbconvert` (if available)

If the HTML was exported from Jupyter with `nbconvert`, you might be able to reverse it, though this is not always reliable:

```bash
# Install nbconvert if not painstalled
pip install nbconvert

# This typically doesn't work for HTML → IPYNB, but worth trying
jupyter nbconvert --to notebook input.html --output output.ipynb
```

### Method B: HTML Parsing Script

You can create a Python script to parse the HTML and extract notebook content. Here's a basic approach:

```python
from bs4 import BeautifulSoup
import json
import re

def html_to_ipynb(html_file, output_file):
    """
    Convert HTML notebook to Jupyter notebook format.
    Note: This is a simplified version and may need adjustments.
    """
    with open(html_file, 'r', encoding='utf-8') as f:
        html_content = f.read()
    
    soup = BeautifulSoup(html_content, 'html.parser')
    
    # Find code cells
    code_cells = soup.find_all('div', class_='jp-CodeCell')
    
    notebook = {
        "cells": [],
        "metadata": {
            "kernelspec": {
                "display_name": "Python 3",
                "language": "python",
                "name": "python3"
            },
            "language_info": {
                "name": "python",
                "version": "3.8.0"
            }
        },
        "nbformat": 4,
        "nbformat_minor": 4
    }
    
    for cell in code_cells:
        # Extract code (simplified - actual parsing would be more complex)
        code_area = cell.find('div', class_='jp-InputArea')
        if code_area:
            code_pre = code_area.find('pre')
            if code_pre:
                cell_content = {
                    "cell_type": "code",
                    "execution_count": None,
                    "metadata": {},
                    "outputs": [],
                    "source": [line + '\n' for line in code_pre.get_text().split('\n')]
                }
                notebook["cells"].append(cell_content)
    
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(notebook, f, indent=2)

# Usage
# html_to_ipynb('ProjectNotebook.html', 'ProjectNotebook.ipynb')
```

**Note:** HTML parsing can be complex due to the structure of exported notebooks. Manual recreation or using online converters might be more reliable.

## Option 3: Online Converters

Several online tools can convert HTML notebooks to IPYNB format:

1. **nbviewer** or similar services
2. **GitHub** - GitHub can render HTML notebooks and you can sometimes download them as `.ipynb`
3. Search for "HTML to Jupyter notebook converter" online

## Option 4: Using Colab (If You Have Access)

If you still have access to Google Colab:

1. Upload the HTML file to Colab
2. Open it in Colab
3. Export as `.ipynb` from Colab's File menu

## Recommended Approach for This Repository

**For CV/Portfolio purposes:** The HTML files work perfectly fine for showcasing your work. They render beautifully in browsers and GitHub can display them directly. Recruiters can view them without any setup.

**For further development:** If you want to continue working on these projects, manually recreate the notebooks or use one of the conversion methods above. This also gives you an opportunity to improve and clean up the code.

## Viewing HTML Notebooks

The easiest way to view the notebooks:

1. **GitHub:** Simply click on the HTML file - GitHub will render it automatically
2. **Locally:** Open the HTML file directly in any web browser
3. **VS Code:** Install the HTML preview extension to view them inline

HTML notebooks are actually excellent for portfolios because they're self-contained and don't require Jupyter to run!

