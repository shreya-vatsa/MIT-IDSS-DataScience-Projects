# Amazon Electronics Ratings Dataset

## Dataset Information

**File:** `ratings_Electronics.csv`

## Description
Large-scale user-product rating dataset for electronics products on Amazon, used for building collaborative filtering recommendation systems.

## Dataset Format
- No header row in the CSV file
- Columns: `user_id`, `prod_id`, `rating`, `timestamp`
- Format: User-Item interaction matrix data

## Recommended Setup

### Option 1: Local Setup (Recommended for Portfolio)
Place the `ratings_Electronics.csv` file in this `data/` folder and update the notebook code to:

```python
# For local Jupyter/VS Code setup
df = pd.read_csv('data/ratings_Electronics.csv', header=None)
df.columns = ['user_id', 'prod_id', 'rating', 'timestamp']
```

### Option 2: Original Colab Setup
If running in Google Colab, use:

```python
from google.colab import drive
drive.mount('/content/drive')
df = pd.read_csv('/content/drive/MyDrive/ratings_Electronics.csv', header=None)
df.columns = ['user_id', 'prod_id', 'rating', 'timestamp']
```

## Dataset Details
- **Source:** Amazon product ratings (electronics category)
- **Purpose:** Build recommendation systems using collaborative filtering
- **Analysis Type:** Collaborative Filtering, Matrix Factorization, SVD

## Usage
Ensure the CSV file is in this `data/` directory before running the analysis notebook.

**Note:** This dataset is large (304 MB) and exceeds GitHub's file size limit. 

**To download the dataset:**
1. Download from: [Amazon Product Data - Electronics Ratings](https://www.kaggle.com/datasets/skillsmash/amazon-product-reviews-electronics)
2. Place `ratings_Electronics.csv` in this `data/` folder
3. The file will be ignored by git (see `.gitignore`)

Alternatively, you can use a smaller sample of the dataset for testing purposes.

