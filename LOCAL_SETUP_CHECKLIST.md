# Local Setup Checklist for Notebooks

This checklist helps ensure all notebooks are recruiter-friendly and runnable locally without Google Colab.

## ✅ Checklist for Each Notebook

### 1. Remove Google Colab Dependencies
- [ ] Remove or replace: `from google.colab import drive`
- [ ] Remove or replace: `drive.mount('/content/drive')`
- [ ] Remove references to `/content/drive/` paths
- [ ] Remove references to `/content/` paths

### 2. Update Data Loading Paths
Replace all instances of:
```python
# ❌ OLD (Colab):
from google.colab import drive
drive.mount('/content/drive')
path = "/content/drive/MyDrive/"
df = pd.read_csv(path + 'filename.csv')

# ✅ NEW (Local):
df = pd.read_csv('data/filename.csv')
```

Or for datasets in parent directory:
```python
# ✅ Alternative (if running from project root):
df = pd.read_csv('01-amazon-recommendation/data/filename.csv')
```

### 3. Update Installation Instructions
Replace Colab-specific instructions with local setup:
```markdown
# ❌ OLD:
"Use Google Colab for this project..."

# ✅ NEW:
"Install dependencies: pip install scikit-surprise"
"The dataset is in the data/ folder"
```

### 4. Update File Paths in Code

#### Amazon Recommendation:
```python
# ❌ OLD:
df = pd.read_csv('/content/drive/MyDrive/ratings_Electronics.csv', header=None)

# ✅ NEW:
df = pd.read_csv('data/ratings_Electronics.csv', header=None)
```

#### EdTech Lead Prediction:
```python
# ❌ OLD:
df = pd.read_csv('/content/drive/My Drive/ExtraaLearn.csv')

# ✅ NEW:
df = pd.read_csv('data/ExtraaLearn.csv')
```

#### FoodHub Analysis:
```python
# ❌ OLD:
path = "/content/drive/MyDrive/"
df = pd.read_csv(path + 'foodhub_order.csv')

# ✅ NEW:
df = pd.read_csv('data/foodhub_order.csv')
```

### 5. Verify Notebook Structure
- [ ] All imports are at the top
- [ ] No Colab-specific magic commands remain
- [ ] Markdown cells provide context
- [ ] Code is well-commented
- [ ] Dataset paths are relative (not absolute)

### 6. Test Locally
- [ ] Notebook runs from start to finish without errors
- [ ] All imports work
- [ ] Data loads successfully
- [ ] No missing file errors
- [ ] Visualizations render correctly

## 🎯 Benefits of Local Setup

✅ **Immediate Execution** - Recruiters can run code right away  
✅ **Professional** - Shows ability to work outside Colab  
✅ **Reproducible** - No dependency on external services  
✅ **ATS-Friendly** - No external dependencies in code  
✅ **Complete** - Self-contained projects  

## 📝 Project-Specific Notes

### Amazon Recommendation
- Dataset: `data/ratings_Electronics.csv`
- No header row - use `header=None`
- Add column names after loading

### EdTech Lead Prediction  
- Dataset: `data/ExtraaLearn.csv`
- Note: Original path had space: "My Drive" → just use `data/ExtraaLearn.csv`

### FoodHub Analysis
- Dataset: `data/foodhub_order.csv`
- Standard CSV with headers

## 🔍 Finding Colab References

Search for these patterns in notebooks:
- `google.colab`
- `drive.mount`
- `/content/drive`
- `/content/`
- `MyDrive` or `My Drive`

## ✅ Final Verification

Before committing, ensure:
1. ✅ All notebooks run locally
2. ✅ No Colab dependencies
3. ✅ All data paths updated
4. ✅ README files updated
5. ✅ Requirements.txt includes all dependencies

---

**Remember:** A recruiter-friendly repository is one that "just works" when cloned. No setup hassles, no external dependencies, just `git clone` → `pip install -r requirements.txt` → `jupyter notebook` → ✅

