@echo off
REM Check if Python is installed
echo Checking if Python is installed.
python --version
IF %ERRORLEVEL% NEQ 0 (
    echo Python is not installed. Please install Python and try again.
    exit /b 1
)

IF NOT %ERRORLEVEL% NEQ 0 (
    echo Python is installed. Current version shown above.
)

REM Create a virtual environment named venv
echo .
echo Creating virtual environment, please hold for a short minute.
echo It might look like Im doing nothing, but I am in fact creating 100s of files. Be patient.
python -m venv venv

REM Check if the virtual environment was created successfully
IF NOT EXIST venv (
    echo Failed to create virtual environment.
    exit /b 1
)

IF EXIST venv (
    echo Virtual environment has been successfully created.
)

REM Activate the virtual environment
call venv\Scripts\activate


REM Install the qrcode package
echo .
echo .
echo Installing qrcode package using PIP.
echo .
echo .
pip install qrcode

REM Inform the user that the installation is complete
echo .
echo .
echo qrcode has been installed in the virtual environment.
echo You should now be able to use the WiFi_QRcode python file.
echo .
echo .
REM Keep the command prompt open
cmd /k
