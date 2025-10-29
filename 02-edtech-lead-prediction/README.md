# Lead Conversion Prediction for EdTech Platform

## Overview
A binary classification model that predicts the probability of lead conversion for an EdTech startup, enabling data-driven marketing strategy, resource allocation, and sales optimization.

## Problem Statement
Identify which leads are most likely to convert into paid customers based on their interaction patterns, behavioral data, and engagement metrics. This helps the sales and marketing teams prioritize efforts and allocate resources effectively.

## Solution Approach

### Machine Learning Models
1. **Logistic Regression** - Interpretable linear model for probability estimation
2. **Decision Tree Classifier** - Non-parametric model capturing non-linear relationships
3. **Random Forest Classifier** - Ensemble method combining multiple decision trees with built-in regularization

### Data Science Pipeline
- **Exploratory Data Analysis:** Comprehensive understanding of lead characteristics and conversion patterns
- **Statistical Analysis:** Used statsmodels for variance inflation factor (VIF) analysis and regression diagnostics
- **Feature Engineering:** Created meaningful features from raw interaction data and behavioral patterns
- **Feature Selection:** Identified most predictive features through correlation analysis
- **Model Training:** Trained and compared multiple algorithms with GridSearchCV
- **Hyperparameter Tuning:** Optimized tree depth, min_samples_leaf, n_estimators, and class weights
- **Overfitting Mitigation:** Applied tree pruning (ccp_alpha) and regularization techniques
- **Model Evaluation:** Assessed performance using multiple metrics and classification reports
- **Business Insights:** Translated technical results into actionable recommendations

## Key Metrics & Evaluation

### Classification Metrics
- **Accuracy** - Overall prediction correctness
- **Precision** - Ability to identify true conversions
- **Recall** - Ability to capture all conversions
- **F1-Score** - Balanced measure of precision and recall
- **ROC-AUC** - Area under the receiver operating characteristic curve

### Business Impact
- Enabled targeted marketing campaigns
- Improved sales team efficiency through lead prioritization
- Reduced cost per acquisition by focusing on high-probability leads

## Skills Demonstrated
- Binary Classification
- Ensemble Methods (Random Forest)
- Feature Engineering & Selection
- Statistical Analysis (statsmodels, VIF analysis)
- Model Interpretability & Hyperparameter Tuning
- Tree Pruning (ccp_alpha) & Overfitting Mitigation
- Class Balancing & Imbalanced Data Handling
- Business Intelligence & Insights Generation
- Cross-Validation & Model Selection

## Files
- `Learner Notebook - Full Code Version - Potential Customers Prediction.ipynb` - Interactive Jupyter notebook (runnable locally)
- `Project-notebook.html` - HTML version for easy viewing in browser/GitHub
- `data/ExtraaLearn.csv` - Dataset containing lead interaction and conversion data

## Setup
1. Place the dataset in the `data/` folder
2. Install dependencies: `pip install -r ../requirements.txt`
3. Update data loading path in notebook to: `pd.read_csv('data/ExtraaLearn.csv')`
4. Run the notebook locally or in Jupyter/VS Code

## Achievement
⭐ **40/40** - Perfect score with evaluator feedback: *"Comprehensive analysis that effectively translates data insights into actionable recommendations for business improvement."*

