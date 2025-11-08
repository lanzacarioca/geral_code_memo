@echo off
cd "C:\Program Files\MetaTrader 5\MQL5\Include\MelquiadesV2"
git fetch --all
git reset --hard origin/main

cd "C:\Program Files\MetaTrader 5\MQL5\Experts\MelquiadesV2"
git fetch --all
git reset --hard origin/main

echo ===========================================
echo Tudo restaurado! Versoes atuais do GitHub aplicadas.
echo ===========================================
pause
