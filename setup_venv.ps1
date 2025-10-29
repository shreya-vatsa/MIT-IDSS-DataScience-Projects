# PowerShell script to create virtual environment and install dependencies

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "Setting up Virtual Environment" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Check if Python is installed
try {
    $pythonVersion = python --version 2>&1
    Write-Host "Python found: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Python is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Python 3.8+ from https://www.python.org/" -ForegroundColor Red
    Read-Host "Press Enter to exit"
    exit 1
}

# Check if venv already exists
if (Test-Path "venv") {
    Write-Host ""
    $recreate = Read-Host "Virtual environment already exists. Do you want to recreate it? (y/n)"
    if ($recreate -eq "y" -or $recreate -eq "Y") {
        Write-Host "Removing old virtual environment..." -ForegroundColor Yellow
        Remove-Item -Recurse -Force venv
    } else {
        Write-Host "Using existing virtual environment." -ForegroundColor Green
        # Will activate below after checking if new venv was created
    }
}

# Create virtual environment if it was removed or doesn't exist
if (-not (Test-Path "venv")) {
    Write-Host ""
    Write-Host "Creating virtual environment..." -ForegroundColor Yellow
    python -m venv venv
    
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: Failed to create virtual environment" -ForegroundColor Red
        Read-Host "Press Enter to exit"
        exit 1
    }
}

# Activate virtual environment
Write-Host ""
Write-Host "Activating virtual environment..." -ForegroundColor Yellow
& .\venv\Scripts\Activate.ps1
if ($LASTEXITCODE -ne 0) {
    Write-Host "WARNING: Could not activate venv. Continuing anyway..." -ForegroundColor Yellow
    Write-Host "You may need to activate manually: .\venv\Scripts\Activate.ps1" -ForegroundColor Yellow
}

# Upgrade pip
Write-Host ""
Write-Host "Upgrading pip..." -ForegroundColor Yellow
python -m pip install --upgrade pip --quiet

# Install dependencies
Write-Host ""
Write-Host "Installing dependencies from requirements.txt..." -ForegroundColor Yellow
Write-Host "This may take several minutes, especially for scikit-surprise..." -ForegroundColor Yellow
Write-Host "Please be patient - building scikit-surprise can take 5-10 minutes..." -ForegroundColor Yellow
Write-Host ""
Write-Host "Note: NumPy will be constrained to version 1.x for scikit-surprise compatibility." -ForegroundColor Cyan
Write-Host ""
pip install -r requirements.txt

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "ERROR: Some packages failed to install" -ForegroundColor Red
    Write-Host ""
    Write-Host "If scikit-surprise fails, try one of these options:" -ForegroundColor Yellow
    Write-Host "1. Install Microsoft C++ Build Tools: https://visualstudio.microsoft.com/visual-cpp-build-tools/" -ForegroundColor Yellow
    Write-Host "2. Use conda: conda install -c conda-forge scikit-surprise" -ForegroundColor Yellow
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host ""
Write-Host "============================================" -ForegroundColor Green
Write-Host "Setup Complete!" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""
Write-Host "Virtual environment is activated." -ForegroundColor Green
Write-Host ""
Write-Host "IMPORTANT NEXT STEP - Register Jupyter Kernel:" -ForegroundColor Yellow
Write-Host "To use this environment in Jupyter/Cursor/notebooks, run:" -ForegroundColor Yellow
Write-Host "  python -m ipykernel install --user --name=mit-idss-projects --display-name `"Python (MIT-IDSS)`"" -ForegroundColor Cyan
Write-Host ""
Write-Host "To activate it in the future (for terminal use), run:" -ForegroundColor Yellow
Write-Host "  .\venv\Scripts\Activate.ps1" -ForegroundColor Cyan
Write-Host ""
Read-Host "Press Enter to continue"

