# Quick Start Guide for Recruiters & Reviewers

This guide helps you quickly navigate and understand this portfolio repository.

## 🎯 What This Repository Contains

This repository showcases **3 complete data science projects** from the MIT IDSS program, demonstrating end-to-end machine learning pipelines with real-world applications.

## 📁 How to Navigate

### Option 1: Quick View (Recommended for First Look)
1. **Open the main README.md** - See project overview and highlights
2. **Click any `.html` file** in project folders - View complete analysis in your browser
   - No installation needed
   - All code, outputs, and visualizations are visible
   - Works immediately

### Option 2: Run Notebooks Locally
1. **Clone the repository**
2. **Run the automated setup script:**
   - Windows: `setup_venv.bat` (or `.\setup_venv.ps1` in PowerShell)
   - This creates a virtual environment and installs all dependencies automatically
3. **Register Jupyter kernel** (one-time, after setup):
   ```bash
   python -m ipykernel install --user --name=mit-idss-projects --display-name "Python (MIT-IDSS)"
   ```
4. **Open `.ipynb` files** in Cursor, VS Code, or Jupyter
5. **Select the kernel** (top-right of notebook) → Choose `Python (MIT-IDSS)`
6. **Run cells** to see the analysis in action

## 📊 Projects at a Glance

| Project | Type | Key Skills | Score |
|---------|------|------------|-------|
| [Amazon Recommendation](01-amazon-recommendation/) | Recommendation Systems | Collaborative Filtering, Matrix Factorization | 40/40 ⭐ |
| [EdTech Lead Prediction](02-edtech-lead-prediction/) | Classification | Logistic Regression, Random Forest, Feature Engineering | 40/40 ⭐ |
| [FoodHub Analysis](03-foodhub-analysis/) | Regression & Analytics | EDA, Regression, Time Series | 33/40 |

## 🔍 What to Look For

### ✅ Technical Skills Demonstrated
- **Machine Learning:** Supervised learning, collaborative filtering, ensemble methods
- **Data Science:** EDA, feature engineering, statistical analysis
- **Software Engineering:** Clean code, documentation, reproducible workflows

### ✅ Project Quality Indicators
- Complete end-to-end pipelines
- Well-documented code and analysis
- Business insights and recommendations
- Proper model evaluation and metrics

### ✅ Professional Practices
- Organized folder structure
- Clear README files
- Requirements tracking
- Professional documentation

## 📖 Reading the Projects

1. **Start with README.md** in each project folder - Understand the problem and approach
2. **Review the notebook** - See the complete analysis
3. **Check data/README.md** - Understand the dataset used

## 🚀 Running Notebooks Locally (Detailed Steps)

### After Running setup_venv.bat:

**Step 1: Register Jupyter Kernel** (one-time only)
```bash
python -m ipykernel install --user --name=mit-idss-projects --display-name "Python (MIT-IDSS)"
```

**Step 2: Open and Run Notebooks**

#### Method A: In Cursor/VS Code (Recommended)
1. Open any `.ipynb` notebook file
2. Click "Select Kernel" (top-right corner)
3. Choose: `Python (MIT-IDSS)` or browse to `.\venv\Scripts\python.exe`
4. Run cells with Shift+Enter (run from top to bottom)

#### Method B: Standalone Jupyter
```bash
# Activate venv first
venv\Scripts\activate.bat

# Launch Jupyter
jupyter notebook
# or
jupyter lab
```

**Daily Workflow:**
- **In Cursor/VS Code:** Just open the notebook - no activation needed if kernel is selected
- **In Terminal:** Activate venv first: `venv\Scripts\activate.bat`

### Troubleshooting

**"Module not found" error?**
→ Make sure you selected the venv kernel (check top-right of notebook)

**Kernel not showing?**
→ Run the kernel registration command again (Step 1 above)

**Can't activate venv?**
→ Make sure you're in the project root folder where `venv` exists

## ❓ Common Questions

**Q: Can I view results without running code?**  
A: Yes! Open any `.html` file in your browser to see all outputs and visualizations.

**Q: Are datasets included?**  
A: Yes, datasets are in the `data/` folder of each project.

**Q: What Python version is required?**  
A: Python 3.8 or higher. See `requirements.txt` for all dependencies.

**Q: Do I need special software?**  
A: For viewing: Just a web browser (for HTML files). For running: Cursor, VS Code, or Jupyter Notebook.

**Q: How do I set up everything?**  
A: Just run `setup_venv.bat` - it handles everything automatically! See the main README.md for full instructions.

