# FoodHub Order Dataset

## Dataset Information

**File:** `foodhub_order.csv`

## Description
Dataset containing food delivery order information from FoodHub platform, including order details, customer information, delivery times, and ratings.

## Recommended Setup

### Option 1: Local Setup (Recommended for Portfolio)
Place the `foodhub_order.csv` file in this `data/` folder and update the notebook code to:

```python
# For local Jupyter/VS Code setup
df = pd.read_csv('data/foodhub_order.csv')
```

### Option 2: Original Colab Setup
If running in Google Colab, use:

```python
from google.colab import drive
drive.mount('/content/drive')
path = "/content/drive/MyDrive/"
df = pd.read_csv(path + 'foodhub_order.csv')
```

## Dataset Details
- **Source:** FoodHub platform order data
- **Purpose:** Analyze delivery patterns, predict delivery times, understand customer behavior
- **Analysis Type:** EDA, Regression, Time Series Analysis

## Usage
Ensure the CSV file is in this `data/` directory before running the analysis notebook.

