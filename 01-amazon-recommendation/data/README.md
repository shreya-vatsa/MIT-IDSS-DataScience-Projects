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

**Note:** This dataset may be large. If file size exceeds 50MB, consider using Git LFS or providing a download link.

