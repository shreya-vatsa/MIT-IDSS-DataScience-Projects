@echo off
REM Comprehensive fix to downgrade NumPy modality and reinstall dependencies

echo ============================================
echo Fixing NumPy Compatibility Issues
echo ============================================
echo.

REM Activate virtual environment
call venv\Scripts\activate.bat

echo Step 1: Un momentarilyinstalling NumPy 2.x...
pip uninstall numpy -y

echo.
echo Step 2: Installing NumPy 1.x (compatible version)...
pip install "numpy>=1.23.2,<2.0.0" --no-cache-dir

if errorlevel 1 (
    echo.
    echo ERROR: Failed to install NumPy 1.x
    pause
    exit /b 1
)

echo.
echo Step 3: Reinstalling packages that depend on NumPy...
pip install --force-reinstall --no-cache-dir "pandas>=1.5.0" "scikit-learn>=1.2.0" "statsmodels>=0.14.0" "scipy>=1.9.0"

if errorlevel 1 (
    echo.
    echo WARNING: Some packages had issues reinstalling
)

echo.
echo Step 4: Reinstalling scikit-surprise...
pip install --force-reinstall --no-cache-dir scikit-surprise

if errorlevel 1 (
    echo.
    echo WARNING: scikit-surprise had issues. You may need C++ Build Tools
)

echo.
echo Step 5: Verifying installation...
python -c "import numpy; print(f'NumPy version: {numpy.__version__}')"
python -c "import pandas; print(f'Pandas version: {pandas.__version__}')"
python -c "import sklearn; print(f'scikit-learn version: {sklearn.__version__}')"

echo.
echo ============================================
echo Fix Complete!
echo ============================================
echo.
echo PLEASE RESTART YOUR JUPYTER KERNEL in Cursor:
echo 1. Go to your notebook
echo 2. Click "Kernel" -^> "Restart Kernel" 
echo 3. Try running your cells again
echo.
pause

