# Dataset Information

This document provides guidance on adding datasets to the repository.

## Should You Add Datasets?

### ✅ **Add Datasets If:**
- Datasets are small to medium size (< 50MB each)
- You have permission to share them (public datasets, your own data, or datasets with proper licensing)
- You want to make the repository fully reproducible

### ❌ **Consider Alternatives If:**
- Datasets are very large (> 50MB each) - GitHub may have issues
- Datasets contain sensitive or proprietary information
- Datasets require special licenses or permissions

## Recommended Structure

If you decide to add datasets, here's the recommended folder structure:

```
MIT-IDSS-DataScience-Projects/
│
├── 01-amazon-recommuntilation/
│   ├── data/
│   │   ├── ratings_Electronics.csv  # (or similar dataset name)
│   │   └── README.md                 # Dataset description
│   ├── ProjectNotebook.html
│   └── README.md
│
├── 02-edtech-lead-prediction/
│   ├── data/
│   │   ├── lead_data.csv            # (or your dataset name)
│   │   └── README.md                 # Dataset description
│   ├── Project-notebook.html
│   └── README.md
│
└── 03-foodhub-analysis/
    ├── data/
    │   ├── foodhub_order.csv        # (or your dataset name)
    │   └── README.md                 # Dataset description
    ├── FDS_Project_LearnerNotebook_FullCode_Main.html
    └── README.md
```

## Steps to Add Datasets

1. **Create data folders in each project directory:**
   ```bash
   mkdir 01-amazon-recommendation/data
   mkdir 02-edtech-lead-prediction/data
   mkdir 03-foodhub-analysis/data
   ```

2. **Copy your CSV files to the respective `data/` folders**

3. **Create a `data/README.md` in each folder** describing:
   - Dataset source
   - Number of rows/columns
   - Column descriptions
   - Any preprocessing that was done
   - Licensing information

4. **Update `.gitignore`** if needed (currently it doesn't ignore CSV files, so they'll be tracked)

5. **Update project READMEs** to mention dataset location and how to use them

## Alternative Approaches

### Option 1: GitHub LFS (Large File Storage)
If datasets are large, use GitHub LFS:
```bash
git lfs install
git lfs track "*.csv"
git add .gitattributes
```

### Option 2: Data Download Scripts
Create Python scripts that download datasets from public sources (e.g., Kaggle, UCI ML Repository)

### Option 3: Data Links Only
Include links to where datasets can be downloaded in each project README, without storing them in the repo

## Best Practice for CV/Portfolio Repos

For a **CV-ready portfolio repository**, I recommend:
- ✅ Adding small datasets (< 10MB) directly
- ✅ Including clear documentation about data sources
- ✅ Using data download scripts for larger datasets
- ✅ Ensuring datasets are publicly available and properly licensed

This makes your repository:
- **Reproducible** - Others can run your code
- **Professional** - Shows attention to detail
- **Complete** - Demonstrates full project workflow

## Example data/README.md Template

```markdown
# Dataset Information

## Source
[Where the dataset came from - e.g., "UCI Machine Learning Repository", "Kaggle", etc.]

## Description
Brief description of what the data represents

## Structure
- **Rows:** [Number]
- **Columns:** [Number]
- **File Size:** [Size]

## Columns
| Column Name | Description | Type |
|-------------|-------------|------|
| col1        | Description | Type |

## Preprocessing
Any preprocessing steps applied before analysis:
- [Step 1]
- [Step 2]

## Licensing
[License information or link to license]
```

---

**Recommendation:** If your datasets are reasonably sized and public, definitely add them! It significantly enhances the professionalism and reproducibility of your portfolio.

