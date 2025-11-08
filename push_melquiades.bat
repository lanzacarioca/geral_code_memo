set /p msg=Digite a mensagem do commit: 

:: Solicita nome da branch (default = main)
set /p branch=Digite o nome da branch (pressione Enter para usar "main"): 
if "%branch%"=="" set branch=main

echo ===========================================
echo Usando branch: %branch%
echo Mensagem: %msg%
echo ===========================================

:: Envia INCLUDE
echo ===============================
echo Enviando INCLUDE...
echo ===============================
cd "C:\Program Files\MetaTrader 5\MQL5\Include\MelquiadesV2"
git add .
git commit -m "%msg%"
git push origin %branch%

:: Envia EXPERTS
echo ===============================
echo Enviando EXPERTS...
echo ===============================
cd "C:\Program Files\MetaTrader 5\MQL5\Experts\MelquiadesV2"
git add .
git commit -m "%msg%"
git push origin %branch%

echo ===========================================
echo Push finalizado com sucesso!
echo Branch: %branch%
echo ===========================================
pause
