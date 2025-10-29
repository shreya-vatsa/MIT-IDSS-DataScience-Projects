@echo off
REM Setup script for Windows to create virtual environment and install dependencies

echo ============================================
echo Setting up Virtual Environment
echo ============================================

REM Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Python is not installed or not in PATH
    echo Please install Python 3.8+ from https://www.python.org/
    pause
    exit /b 1
)

echo Python found!
python --version

REM Check if venv already exists
if exist "venv\" (
    echo.
    echo Virtual environment already exists.
    echo Do you want to recreate it? (y/n)
    set /p RECREATE=
    if /i "%RECREATE%"=="y" (
        echo Removing old virtual environment...
        rmdir /s /q venv
    ) else (
        echo Using existing virtual environment.
        goto :activate
    )
)

REM Create virtual environment
echo.
echo Creating virtual environment...
python -m venv venv
if errorlevel 1 (
    echo ERROR: Failed to create virtual environment
    pause
    exit /b 1
)

:activate
REM Activate virtual environment
echo.
echo Activating virtual environment...
call venv\Scripts\activate.bat

REM Verify activation worked
if errorlevel 1 (
    echo ERROR: Failed to activate virtual environment
    pause
    exit /b 1
)

REM Upgrade pip
echo.
echo Upgrading pip...
python -m pip install --upgrade pip --quiet

REM Install dependencies
echo.
echo Installing dependencies from requirements.txt...
echo This may take several minutes, especially for scikit-surprise...
echo Please be patient - building scikit-surprise can take 5-10 minutes...
echo.
echo Note: NumPy will be constrained to version 1.x for scikit-surprise compatibility.
echo.
pip install -r requirements.txt

if errorlevel 1 (
    echo.
    echo ERROR: Some packages failed to install
    echo.
    echo If scikit-surprise fails, try one of these options:
    echo 1. Install Microsoft C++ Build Tools: https://visualstudio.microsoft.com/visual-cpp-build-tools/
    echo 2. Use conda: conda install -c conda-forge scikit-surprise
    echo.
    pause
    exit /b 1
)

echo.
echo ============================================
echo Setup Complete!
echo ============================================
echo.
echo Virtual environment is activated.
echo.
echo IMPORTANT NEXT STEP - Register Jupyter Kernel:
echo To use this environment in Jupyter/Cursor/notebooks, run:
echo   python -m ipykernel install --user --name=mit-idss-projects --display-name "Python (MIT-IDSS)"
echo.
echo To activate it in the future (for terminal use), run:
echo   venv\Scripts\activate.bat
echo.
pause

