# Amazon Product Recommendation System

## Overview
A production-ready recommendation system implementing multiple collaborative filtering algorithms to deliver personalized product recommendations, simulating real-world e-commerce platforms like Amazon.

## Problem Statement
Build an intelligent recommendation system that can suggest products to users based on their past interactions and similar user behaviors, improving user engagement and sales conversion rates.

## Solution Approach

### Algorithms Implemented
1. **Rank-Based Recommendations** - Popular product recommendations based on average ratings
2. **User-User Collaborative Filtering** - Recommendations based on user similarity using KNNBasic algorithm with cosine similarity
3. **Item-Item Collaborative Filtering** - Recommendations based on item similarity using KNNBasic algorithm
4. **Model-Based Collaborative Filtering** - Matrix factorization using Singular Value Decomposition (SVD)

### Technical Implementation
- **Data Processing:** Constructed sparse user-item interaction matrices from large-scale rating data
- **Algorithms:** KNNBasic (for similarity-based filtering), SVD (for matrix factorization)
- **Similarity Metrics:** Cosine similarity, MSD (Mean Squared Difference) for user-user and item-item comparisons
- **Model Training:** GridSearchCV with cross-validation for hyperparameter optimization (k, min_k parameters)
- **Library Used:** Surprise library for advanced recommendation system implementation

## Key Metrics & Evaluation

### Performance Metrics
- **Precision@K** - Measure of recommendation relevance
- **Recall@K** - Measure of recommendation coverage
- **F1-Score** - Harmonic mean of precision and recall
- **RMSE** - Root Mean Squared Error for rating predictions

### Results
- Successfully implemented all four recommendation approaches
- Achieved optimal hyperparameters through systematic grid search
- Generated personalized recommendations for users with different interaction patterns

## Skills Demonstrated
- Collaborative Filtering (Memory-based & Model-based)
- Matrix Factorization
- Sparse Matrix Operations
- Hyperparameter Tuning
- Model Evaluation for Recommendation Systems
- Data Preprocessing for Large-Scale Datasets

## Files
- `Recommendation_Systems_Learner_Notebook_Full_Code.ipynb` - Interactive Jupyter notebook (runnable locally)
- `ProjectNotebook.html` - HTML version for easy viewing in browser/GitHub
- `data/ratings_Electronics.csv` - Dataset containing user-product ratings

## Setup
1. Place the dataset in the `data/` folder
2. Install dependencies: `pip install -r ../requirements.txt`
3. Install scikit-surprise (see Windows Installation Note below if you encounter issues)
4. Update data loading path in notebook to: `pd.read_csv('data/ratings_Electronics.csv', header=None)`
5. Run the notebook locally or in Jupyter/VS Code

## Windows Installation Note

### Installing scikit-surprise on Windows

The `scikit-surprise` library requires C extensions to be compiled, which can cause build errors on Windows. If you encounter errors when running `%pip install scikit-surprise` in the notebook, try one of these solutions:

**Option 1: Use Conda (Recommended)**
```bash
conda install -c conda-forge scikit-surprise
```

**Option 2: Install Microsoft C++ Build Tools**
1. Download from: https://visualstudio.microsoft.com/visual-cpp-build-tools/
2. Install "C++ build tools" workload
3. Restart Jupyter/VS Code
4. Try `pip install scikit-surprise` again

**Option 3: Use Pre-built Wheel**
```bash
pip install scikit-surprise --only-binary :all:
```

**Option 4: Use Google Colab**
If local installation continues to fail, you can run the notebook in Google Colab where scikit-surprise installs without issues.

**Note:** If you skip the scikit-surprise installation, most of the notebook (data loading, EDA, basic analysis) will still work. Only the collaborative filtering sections require this library.

## Achievement
⭐ **40/40** - Perfect score with evaluator recognition: *"Your dedication and hard work have made a significant impact on our team... It's clear that you've put a lot of thought and labor into it."*

