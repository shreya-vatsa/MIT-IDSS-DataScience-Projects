# How to Run the Notebooks - Complete Guide

This guide will help you set up and run all the notebooks in this project.

## 🚀 Quick Start

### Step 1: Create and Activate Virtual Environment

**Option A: Using the Setup Script (Easiest)**

1. **Windows PowerShell/Command Prompt:**
   ```bash
   # Run the setup script
   .\setup_venv.bat
   # OR if you prefer PowerShell:
   .\setup_venv.ps1
   ```

2. The script will:
   - Create a virtual environment named `venv`
   - Install all required packages
   - Activate the virtual environment

**Option B: Manual Setup**

1. **Create virtual environment:**
   ```bash
   python -m venv venv
   ```

2. **Activate virtual environment:**
   ```bash
   # Windows Command Prompt:
   venv\Scripts\activate.bat
   
   # Windows PowerShell:
   venv\Scripts\Activate.ps1
   
   # If you get execution policy error in PowerShell, run:
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
   ```

3. **Upgrade pip:**
   ```bash
   python -m pip install --upgrade pip
   ```

4. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

### Step 2: Set Up Jupyter Kernel

After activating the virtual environment, register it as a Jupyter kernel:

```bash
python -m ipykernel install --user --name=mit-idss-projects --display-name "Python (MIT-IDSS)"
```

This allows you to select this environment when running notebooks.

### Step 3: Launch Jupyter Notebook

**Option A: Using Jupyter Notebook (Traditional)**
```bash
jupyter notebook
```

**Option B: Using Jupyter Lab (Modern UI)**
```bash
jupyter lab
```

**Option C: Using VS Code (Recommended)**
1. Open VS Code in this project directory
2. Install the "Jupyter" extension if you haven't
3. Open any `.ipynb` file
4. Select the kernel: Click the kernel name in the top right → Select "Python (MIT-IDSS)" or the virtual environment

### Step 4: Select the Correct Kernel

**Important:** Make sure your notebook is using the virtual environment kernel!

1. In Jupyter Notebook/Lab: Click "Kernel" → "Change Kernel" → Select "Python (MIT-IDSS)"
2. In VS Code: Click kernel selector (top right) → Select your venv Python interpreter

### Step 5: Run the Notebook

1. Navigate to the project folder you want to run:
   - `01-amazon-recommendation/Recommendation_Systems_Learner_Notebook_Full_Code.ipynb`
   - `02-edtech-lead-prediction/Learner Notebook - Full Code Version - Potential Customers Prediction.ipynb`
   - `03-foodhub-analysis/FDS_Project_LearnerNotebook_FullCode.ipynb`

2. **Set the working directory:**
   - When you open a notebook, make sure your working directory is set to the project folder
   - For example, if running Amazon project, navigate to `01-amazon-recommendation/` first
   - Or run this in the notebook's first cell:
     ```python
     import os
     os.chdir('01-amazon-recommendation')  # or the relevant project folder
     ```

3. **Run cells sequentially** from top to bottom

## 📋 Requirements Checklist

All these packages should be installed in your virtual environment:

✅ **Core Libraries:**
- pandas >= 1.5.0
- numpy >= 1.23.0

✅ **Machine Learning:**
- scikit-learn >= 1.2.0
- scipy >= 1.9.0
- scikit-surprise >= 1.1.0 (for Amazon project)

✅ **Statistical Analysis:**
- statsmodels >= 0.14.0 (for EdTech project)

✅ **Visualization:**
- matplotlib >= 3.6.0
- seaborn >= 0.12.0

✅ **Jupyter:**
- jupyter >= 1.0.0
- notebook >= 6.5.0
- ipykernel >= 6.20.0

## 🔧 Troubleshooting

### Issue: "ModuleNotFoundError: No module named 'seaborn'"

**Solution:**
1. Make sure your virtual environment is activated
2. Verify you're using the correct kernel in Jupyter
3. Reinstall: `pip install seaborn`

### Issue: scikit-surprise installation fails on Windows

**Solution:**
1. **Option 1:** Install Microsoft C++ Build Tools:
   - Download from: https://visualstudio.microsoft.com/visual-cpp-build-tools/
   - Install "Desktop development with C++" workload
   - Then run: `pip install scikit-surprise`

2. **Option 2:** Use conda (recommended for Windows):
   ```bash
   conda install -c conda-forge scikit-surprise
   ```

3. **Option 3:** Try pre-built wheel:
   ```bash
   pip install scikit-surprise --only-binary :all:
   ```

### Issue: Kernel not showing up in Jupyter

**Solution:**
1. Make sure virtual environment is activated
2. Install ipykernel: `pip install ipykernel`
3. Register kernel: `python -m ipykernel install --user --name=mit-idss-projects --display-name "Python (MIT-IDSS)"`
4. Restart Jupyter

### Issue: File not found errors when loading data

**Solution:**
1. Make sure you're running the notebook from the correct directory
2. The data files should be in `project-name/data/` folder
3. Check the file path in the notebook matches your directory structure

### Issue: PowerShell execution policy error

**Solution:**
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

## 📁 Project Structure

```
MIT-IDSS-DataScience-Projects/
├── venv/                          # Virtual environment (created by you)
├── requirements.txt               # All dependencies
├── setup_venv.bat                # Windows setup script
├── setup_venv.ps1                # PowerShell setup script
├── 01-amazon-recommendation/
│   ├── Recommendation_Systems_Learner_Notebook_Full_Code.ipynb
│   └── data/
│       └── ratings_Electronics.csv
├── 02-edtech-lead-prediction/
│   ├── Learner Notebook - Full Code Version - Potential Customers Prediction.ipynb
│   └── data/
│       └── ExtraaLearn.csv
└── 03-foodhub-analysis/
    ├── FDS_Project_LearnerNotebook_FullCode.ipynb
    └── data/
        └── foodhub_order.csv
```

## ✅ Verification Steps

After setup, verify everything works:

```bash
# Activate venv
venv\Scripts\activate.bat

# Check Python version
python --version  # Should be 3.8+

# Check installed packages
pip list

# Should show: pandas, dropout, seaborn, scikit-learn, scikit-surprise, etc.

# Start Jupyter
jupyter notebook
```

## 🎯 Quick Reference

**Activate virtual environment:**
```bash
venv\Scripts\activate.bat       # Windows CMD
.\venv\Scripts\Activate.ps1     # PowerShell
```

**Deactivate virtual environment:**
```bash
deactivate
```

**Install/update packages:**
```bash
pip install -r requirements.txt
```

**Check which Python you're using:**
```bash
where python  # Windows
which python  # Linux/Mac
```

---

**Need help?** Check the individual project README files for project-specific instructions.

