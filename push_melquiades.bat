@echo off
setlocal enabledelayedexpansion
set /p msg=Digite a mensagem do commit: 

echo ===============================
echo Enviando INCLUDE...
echo ===============================
cd "C:\Program Files\MetaTrader 5\MQL5\Include\MelquiadesV2"
git add .
git commit -m "!msg!"
git push

echo ===============================
echo Enviando EXPERTS...
echo ===============================
cd "C:\Program Files\MetaTrader 5\MQL5\Experts\MelquiadesV2"
git add .
git commit -m "!msg!"
git push

echo ===========================================
echo Push finalizado com sucesso!
echo ===========================================
pause
