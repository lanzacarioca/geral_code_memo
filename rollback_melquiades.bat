@echo off
setlocal enabledelayedexpansion

:: Solicita a branch de rollback (default = main)
set /p branch=Digite o nome da branch para rollback (pressione Enter para usar "main"): 
if "%branch%"=="" set branch=main

echo ===========================================
echo Iniciando rollback a partir da branch: %branch%
echo ===========================================

:: INCLUDE
echo ===============================
echo Restaurando INCLUDE...
echo ===============================
cd "C:\Program Files\MetaTrader 5\MQL5\Include\MelquiadesV2"
git fetch --all
git reset --hard origin/%branch%

:: EXPERTS
echo ===============================
echo Restaurando EXPERTS...
echo ===============================
cd "C:\Program Files\MetaTrader 5\MQL5\Experts\MelquiadesV2"
git fetch --all
git reset --hard origin/%branch%

echo ===========================================
echo Rollback concluído com sucesso!
echo Branch: %branch%
echo ===========================================
pause

