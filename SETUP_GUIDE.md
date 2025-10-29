# Setup Guide: Running Notebooks Locally

This guide explains how to set up and run the project notebooks locally instead of using Google Colab.

## Quick Start

1. **Clone the repository** (if not already done)
   ```bash
   git clone <your-repo-url>
   cd MIT-IDSS-DataScience-Projects
   ```

2. **Create a virtual environment** (recommended)
   ```bash
   python -m venv venv
   
   # Windows
   venv\Scripts\activate
   
   # macOS/Linux
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Add datasets to project folders**
   - Place `foodhub_order.csv` in `03-foodhub-analysis/data/`
   - Place `ratings_Electronics.csv` in `01-amazon-recommendation/data/`
   - Place `ExtraaLearn.csv` in `02-edtech-lead-prediction/data/`

5. **Launch Jupyter**
   ```bash
   jupyter notebook
   # or
   jupyter lab
   ```

## Converting HTML Notebooks to .ipynb

Since the notebooks are currently in HTML format, you have two options:

### Option A: Convert HTML to Jupyter Notebook (Recommended)

See [`CONVERSION_GUIDE.md`](CONVERSION_GUIDE.md) for detailed instructions.

### Option B: Create New Notebooks from HTML

1. Open the HTML file in your browser to view the code
2. Create a new Jupyter notebook
3. Copy code cells from HTML and paste into notebook cells
4. Update data loading paths (see below)

## Updating Data Loading Code

All notebooks currently reference Google Colab paths. Update them as follows:

### FoodHub Project (`03-foodhub-analysis/`)

**Before (Colab):**
```python
from google.colab import drive
drive.mount('/content/drive')
path = "/content/drive/MyDrive/"
df = pd.read_csv(path + 'foodhub_order.csv')
```

**After (Local):**
```python
df = pd.read_csv('data/foodhub_order.csv')
```

### Amazon Recommendation (`01-amazon-recommendation/`)

**Before (Colab):**
```python
df = pd.read_csv('/content/drive/MyDrive/ratings_Electronics.csv', header=None)
```

**After (Local):**
```python
df = pd.read_csv('data/ratings_Electronics.csv', header=None)
df.columns = ['user_id', 'prod_id', 'rating', 'timestamp']
```

### EdTech Lead Prediction (`02-edtech-lead-prediction/`)

**Before (Colab):**
```python
df = pd.read_csv('/content/drive/My Drive/ExtraaLearn.csv')
```

**After (Local):**
```python
df = pd.read_csv('data/ExtraaLearn.csv')
```

## VS Code Setup

If using VS Code instead of Jupyter:

1. Install the **Jupyter** extension
2. Install the **Python** extension
3. Open the `.ipynb` file directly in VS Code
4. Select your Python interpreter (should be your virtual environment)
5. Run cells directly in VS Code

## Troubleshooting

### Import Errors
- Ensure you've activated your virtual environment
- Reinstall requirements: `pip install -r requirements.txt --upgrade`

### File Not Found Errors
- Verify CSV files are in the correct `data/` folders
- Check that you're running the notebook from the project root directory
- Use absolute paths if relative paths don't work: `os.path.join(os.getcwd(), 'data', 'filename.csv')`

### Surprise Library Issues
For the Amazon recommendation project, you may need to install:
```bash
pip install scikit-surprise
```

### Memory Issues
If you encounter memory errors with large datasets:
- Use data sampling for initial exploration
- Consider using `chunksize` parameter in `pd.read_csv()`
- Close other applications to free up RAM

## Best Practices

1. **Always use virtual environments** to avoid dependency conflicts
2. **Keep datasets in `data/` folders** for organization
3. **Use relative paths** when possible for portability
4. **Document any preprocessing** you do to the datasets
5. **Version control** - add datasets to `.gitignore` if they're large, or use Git LFS

## For Portfolio/CV Purposes

Having runnable notebooks locally makes your repository:
- ✅ **More professional** - Shows you can work outside Colab
- ✅ **Reproducible** - Others can run your code
- ✅ **Accessible** - No need for Colab accounts
- ✅ **Complete** - Demonstrates full project setup

---

**Next Steps:** After setting up, consider creating `.ipynb` versions of your notebooks for easier local execution while keeping the HTML versions for easy viewing on GitHub.

