@echo off
setlocal enabledelayedexpansion

REM Set the path to the folder containing the PDF files
set "folder=C:\Users\e.sologashvili\Desktop\temp\New folder (2)"

REM Set the path to Ghostscript (modify if necessary)
set "ghostscript=C:\Program Files\gs\gs10.01.2\bin\gswin64c.exe"

REM Iterate through each PDF file in the folder
for %%F in ("%folder%\*.pdf") do (
    REM Set the output file name
    set "output=%%~dpnF.jpg"
    
    REM Convert the first page of the PDF to JPG using Ghostscript
    "%ghostscript%" -dSAFER -dBATCH -dNOPAUSE -sDEVICE=jpeg -r300 -dFirstPage=1 -dLastPage=1 -sOutputFile="!output!" "%%F"
)

echo Conversion complete!
pause
