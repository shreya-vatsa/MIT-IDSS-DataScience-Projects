@echo off
REM Quick fix script to downgrade NumPy without recreating venv

echo ============================================
echo Fixing NumPy Compatibility Issue
echo ============================================
echo.
echo This will downgrade NumPy to version 1.x to fix scikit-surprise compatibility
echo.

REM Activate virtual environment
call venv\Scripts\activate.bat

REM Downgrade NumPy
echo Downgrading NumPy to version 1.x...
pip install "numpy>=1.23.0,<2.0.0" --force-reinstall --no-cache-dir

if errorlevel 1 (
    echo.
    echo ERROR: Failed to downgrade NumPy
    pause
    exit /b 1
)

REM Reinstall scikit-surprise to ensure compatibility
echo.
echo Reinstalling scikit-surprise for compatibility...
pip install --force-reinstall --no-cache-dir scikit-surprise

if errorlevel 1 (
    echo.
    echo WARNING: scikit-surprise reinstall had issues
    echo You may need to install C++ Build Tools if this persists
    pause
)

echo.
echo ============================================
echo Fix Complete!
echo ============================================
echo.
echo Please restart your Jupyter kernel in Cursor:
echo 1. Go to your notebook
echo 2. Click "Kernel" -^> "Restart Kernel"
echo 3. Try running your cells again
echo.
pause

