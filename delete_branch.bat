@echo off
:: ===========================================
:: delete_branch.bat
:: Apaga uma branch local + remota
:: em ambos os repositórios MelquiadesV2
:: (Experts e Include)
:: ===========================================

setlocal
set "BRANCH_NAME="
set /p BRANCH_NAME=Digite o nome da branch a deletar (ex: dev, market-test): 

if "%BRANCH_NAME%"=="" (
    echo Nenhum nome informado. Encerrando...
    exit /b
)

echo.
set /p CONFIRM=Tem certeza que quer deletar a branch "%BRANCH_NAME%" de ambos os repositorios? (S/N): 
if /I "%CONFIRM%" NEQ "S" (
    echo Operacao cancelada.
    exit /b
)

echo ===========================================
echo Deletando branch "%BRANCH_NAME%" em ambos repos...
echo ===========================================

:: ===== Experts Repo =====
cd /d "C:\Program Files\MetaTrader 5\MQL5\Experts\MelquiadesV2"
echo.
echo --- [Experts Repo] ---
git checkout main
git branch -D %BRANCH_NAME%
git push origin --delete %BRANCH_NAME%
git fetch --prune

:: ===== Include Repo =====
cd /d "C:\Program Files\MetaTrader 5\MQL5\Include\MelquiadesV2"
echo.
echo --- [Include Repo] ---
git checkout main
git branch -D %BRANCH_NAME%
git push origin --delete %BRANCH_NAME%
git fetch --prune

echo.
echo ===========================================
echo Branch "%BRANCH_NAME%" removida de ambos repositorios!
echo ===========================================
pause
endlocal
