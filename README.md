# MIT-IDSS-DataScience-Projects

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange.svg)](https://jupyter.org/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A comprehensive collection of **machine learning** and **data science** projects showcasing end-to-end ML pipelines, from data preprocessing and exploratory data analysis to model development, evaluation, and business insights generation. Completed during the **MIT IDSS – Data Science and Machine Learning: Making Data-Driven Decisions** program (Jan–Apr 2024), in collaboration with Great Learning.

## 🎯 Overview

This repository demonstrates practical applications of **machine learning**, **deep learning**, and **predictive analytics** across diverse industries including e-commerce, EdTech, and food delivery. Each project follows industry-standard workflows: data cleaning, feature engineering, model selection, hyperparameter tuning, and performance evaluation.

## 📊 Projects

### 1. 🛍️ Amazon Product Recommendation System
**Technologies:** Collaborative Filtering, Matrix Factorization, Surprise Library, Cosine Similarity  
**Algorithms:** User-User Similarity, Item-Item Similarity, Matrix Factorization (SVD)  
**Metrics:** Precision@K, Recall@K, F1-Score, RMSE  

A production-ready **recommendation system** that implements multiple collaborative filtering approaches to deliver personalized product recommendations, simulating real-world e-commerce platforms.

**Key Features:**
- Constructed sparse user-item interaction matrices from large-scale rating data
- Implemented memory-based collaborative filtering (user-user and item-item similarity)
- Developed model-based collaborative filtering using matrix factorization (SVD)
- Applied grid search cross-validation for hyperparameter optimization
- Evaluated models using precision@k, recall@k, and F1-score metrics
- Performed comprehensive exploratory data analysis on rating distributions

**Achievement:** ⭐ **40/40** - Perfect score with evaluator recognition for dedication and comprehensive analysis.

---

### 2. 🎯 Lead Conversion Prediction for EdTech Platform
**Technologies:** Classification, Logistic Regression, Decision Trees, Random Forest, Feature Engineering  
**Algorithms:** Logistic Regression, Decision Tree Classifier, Random Forest  
**Metrics:** Accuracy, Precision, Recall, F1-Score, ROC-AUC  

A **binary classification** model predicting lead conversion probability for an EdTech startup, enabling data-driven marketing strategy and resource allocation.

**Key Features:**
- Engineered features from user interaction data and behavioral patterns
- Performed correlation analysis and feature importance evaluation
- Built and compared multiple classification algorithms (Logistic Regression, Decision Trees, Random Forest)
- Implemented ensemble methods with hyperparameter tuning via GridSearchCV
- Addressed overfitting through tree pruning and regularization techniques
- Optimized models using cross-validation techniques
- Generated actionable business insights for marketing and sales teams
- Implemented interpretability analysis for model transparency

**Achievement:** ⭐ **40/40** - Perfect score with feedback: *"Comprehensive analysis that effectively translates data insights into actionable recommendations for business improvement."*

---

### 3. 🍽️ FoodHub Order Analysis & Delivery Time Prediction
**Technologies:** Regression Analysis, Time Series Analysis, Statistical Modeling  
**Algorithms:** Linear Regression, Polynomial Regression  
**Metrics:** R², RMSE, MAE  

An end-to-end **data analytics** project analyzing food delivery operations, predicting delivery times, and understanding customer behavior patterns to optimize restaurant performance.

**Key Features:**
- Conducted comprehensive exploratory data analysis (EDA) with statistical insights
- Visualized patterns across time dimensions (day of week, cuisine types, cost segments)
- Built regression models to predict food preparation and delivery times
- Analyzed customer rating distributions and identified key influencing factors
- Performed feature engineering from temporal and categorical variables
- Delivered actionable insights for operational optimization

**Achievement:** ⭐ **33/40** - Successfully implemented full data science pipeline with regression modeling.

---

## 🛠️ Technical Stack

### Core Technologies
- **Python 3.8+** - Primary programming language
- **Jupyter Notebooks** - Interactive development environment
- **Git/GitHub** - Version control and collaboration

### Data Science Libraries
- **pandas** - Data manipulation and analysis
- **NumPy** - Numerical computing
- **scikit-learn** - Machine learning algorithms and utilities
- **scipy** - Scientific computing

### Visualization Libraries
- **matplotlib** - Static plotting and visualization
- **seaborn** - Statistical data visualization

### Specialized ML Libraries
- **Surprise** - Recommendation systems and collaborative filtering

### Development Tools
- **Jupyter Lab/Notebook** - Interactive coding environment
- **VS Code** - Code editor with Jupyter extension support

---

## 📈 Skills Demonstrated

### Machine Learning
- ✅ Supervised Learning (Classification, Regression)
- ✅ Unsupervised Learning (Collaborative Filtering)
- ✅ Model Selection & Evaluation
- ✅ Cross-Validation & Hyperparameter Tuning
- ✅ Feature Engineering & Selection
- ✅ Model Interpretability

### Data Science
- ✅ Exploratory Data Analysis (EDA)
- ✅ Statistical Analysis & Hypothesis Testing
- ✅ Data Cleaning & Preprocessing
- ✅ Dimensionality Reduction
- ✅ Time Series Analysis

### Software Engineering
- ✅ Code Organization & Documentation
- ✅ Reproducible Research Practices
- ✅ Version Control (Git)
- ✅ Best Practices for Data Science Projects

### Business Intelligence
- ✅ Translating Technical Results to Business Insights
- ✅ Data-Driven Decision Making
- ✅ Performance Metrics for Business KPIs
- ✅ Actionable Recommendation Generation

---

## 🚀 Getting Started

### Quick Setup (Recommended for Recruiters)

**The easiest way to get started - just run one script!**

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/MIT-IDSS-DataScience-Projects.git
   cd MIT-IDSS-DataScience-Projects
   ```

2. **Run the automated setup script**
   
   **Windows (Command Prompt or PowerShell):**
   ```bash
   setup_venv.bat
   ```
   
   **Windows (PowerShell - if the .bat doesn't work):**
   ```powershell
   .\setup_venv.ps1
   ```
   
   This single script will:
   - ✅ Check if Python is installed
   - ✅ Create a virtual environment
   - ✅ Install all required packages
   - ✅ Set everything up automatically

3. **Register Jupyter kernel** (one-time, after setup completes)
   
   In the same terminal window where setup ran:
   ```bash
   python -m ipykernel install --user --name=mit-idss-projects --display-name "Python (MIT-IDSS)"
   ```

4. **Activate Virtual Environment** (if using terminal)
   
   **Windows Command Prompt:**
   ```bash
   venv\Scripts\activate.bat
   ```
   
   **Windows PowerShell:**
   ```powershell
   .\venv\Scripts\Activate.ps1
   # Or use full path:
   # C:\Users\YourUsername\Cursor Apps\MIT-IDSS-DataScience-Projects\venv\Scripts\Activate.ps1
   ```

5. **Open and run notebooks**
   
   **In Cursor/VS Code (Recommended):**
   - Open any `.ipynb` notebook file
   - Click "Select Kernel" (top-right corner)
   - Choose: `Python (MIT-IDSS)` or browse to `.\venv\Scripts\python.exe`
   - Run cells with Shift+Enter (run from top to bottom)
   
   **In Standalone Jupyter:**
   ```bash
   jupyter notebook
   # or
   jupyter lab
   ```

**💡 View Without Setup:** Simply open any `.html` file in your web browser - no installation needed! All outputs and visualizations are included.

#### Troubleshooting

**"Module not found" error?**
→ Make sure you selected the venv kernel (check top-right of notebook)

**Kernel not showing?**
→ Run the kernel registration command again (Step 3 above)

**Can't activate venv?**
→ Make sure you're in the project root folder where `venv` exists
→ Try using the full path: `C:\Users\YourUsername\Cursor Apps\MIT-IDSS-DataScience-Projects\venv\Scripts\Activate.ps1`

---

### Manual Setup (Alternative)

If the automated script doesn't work:

```bash
python -m venv venv
venv\Scripts\activate.bat  # Windows Command Prompt
# or: .\venv\Scripts\Activate.ps1  # Windows PowerShell
pip install -r requirements.txt
python -m ipykernel install --user --name=mit-idss-projects --display-name "Python (MIT-IDSS)"
```

---

## 📁 Repository Structure

```
MIT-IDSS-DataScience-Projects/
│
├── README.md                      # 📘 Main overview - START HERE
├── requirements.txt               # 📦 Python dependencies
├── LICENSE                        # 📄 MIT License
│
├── 📚 Documentation/
│   ├── SETUP_GUIDE.md            # Setup instructions
│   ├── CONVERSION_GUIDE.md       # HTML to Jupyter guide
│   └── DATASETS_README.md        # Dataset information
│
├── 📊 Project 1: Amazon Recommendation System
│   └── 01-amazon-recommendation/
│       ├── README.md                             # Project details & setup
│       ├── Recommendation_Systems_Learner_Notebook_Full_Code.ipynb  # ⚙️ Main notebook
│       ├── ProjectNotebook.html                  # 👁️ View in browser
│       └── data/
│           ├── ratings_Electronics.csv
│           └── README.md
│
├── 📊 Project 2: EdTech Lead Conversion Prediction
│   └── 02-edtech-lead-prediction/
│       ├── README.md                             # Project details & setup
│       ├── Learner Notebook - Full Code Version - Potential Customers Prediction.ipynb
│       ├── Project-notebook.html                 # 👁️ View in browser
│       └── data/
│           ├── ExtraaLearn.csv
│           └── README.md
│
└── 📊 Project 3: FoodHub Order Analysis
    └── 03-foodhub-analysis/
        ├── README.md                             # Project details & setup
        ├── FDS_Project_LearnerNotebook_FullCode.ipynb  # ⚙️ Main notebook
        ├── FDS_Project_LearnerNotebook_FullCode_Main.html  # 👁️ View in browser
        └── data/
            ├── foodhub_order.csv
            └── README.md
```

### 🎯 Quick Navigation
- **New to this repo?** → Start with [Getting Started](#-getting-started) section
- **Want to view analysis?** → Open any `.html` file in your browser (no setup needed!)
- **Want to run code?** → Follow Quick Setup steps above
- **Project details?** → See [Projects](#-projects) section and individual project READMEs

---

## ❓ Common Questions

**Q: Can I view results without running code?**  
A: Yes! Open any `.html` file in your browser - all outputs and visualizations are included.

**Q: Are datasets included?**  
A: Most datasets are in the `data/` folders. The Amazon Electronics ratings dataset (304 MB) exceeds GitHub's limit - see `01-amazon-recommendation/data/README.md` for download instructions.

**Q: What Python version is required?**  
A: Python 3.8 or higher. See `requirements.txt` for dependencies.

**Q: The setup script didn't work - what now?**  
A: Try the Manual Setup alternative above or check the troubleshooting section.

---

## 🌟 Highlights

- **Perfect Scores:** 2 out of 3 projects received perfect 40/40 scores
- **Industry-Relevant:** Real-world applications across multiple domains
- **Comprehensive Analysis:** Full data science pipeline implementation
- **Production-Ready:** Code follows best practices and is well-documented
- **ATS-Optimized:** Repository structured for Applicant Tracking Systems

---

## 🎓 Certification

These projects were completed as part of the **MIT IDSS x Great Learning** certification program:  
**"Data Science and Machine Learning: Making Data-Driven Decisions"**  
**Cohort:** January – April 2024

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

[Shreya Vatsa]  
[https://www.linkedin.com/in/shreyavatsa/]  
[shreya.vatsa05@outlook.com]

---

## 🙏 Acknowledgments

- MIT IDSS for the comprehensive curriculum
- Great Learning for program facilitation
- Course instructors and evaluators for valuable feedback

---

## 📧 Contact

For questions, collaborations, or feedback, please feel free to reach out!

---

**⭐ If you find this repository helpful, please consider giving it a star!**
