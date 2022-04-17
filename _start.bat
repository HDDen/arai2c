@echo OFF
chcp 1251
setlocal
:: �������� ����� � ��� ������
set dirPath=_downloaded
set listName=urls.txt
set threadsForFile=2
set maxConcurrentFiles=20
set maxConnToServer=16
set connectTimeout=20
set maxTriesToFile=5
set retryWait=5
set timeout=30
set userAgent=Googlebot-Image/1.0
set dryRun=false
set timeLimit=0
:: show download progressbar. default, full, hide
set progressBarType=default
:: notice, info, debug, warn, error
set conlogLevel=notice
:: ���� ������ -, �� ����� �� �����. ���� ������ ������ (""), �� ������ ������� ������ �� ����� ������� �� ����
set logFile=""
:: ���� ������ *, �� URI �������� ����� ����� ����������� ��� �������� �������.
set referer=http://www.kavraion.ru
::@echo ON
@echo.
:: �� ������������ ������ ����� ���� �����
::cd aria2-1.36.0-win-64bit-build1
"aria2-1.36.0-win-64bit-build1/aria2c.exe" -i %listName% -d %dirPath% -c --split=%threadsForFile% --max-concurrent-downloads=%maxConcurrentFiles% --max-connection-per-server=%maxConnToServer% --max-tries=%maxTriesToFile% --retry-wait=%retryWait% --timeout=%timeout% --file-allocation=prealloc --connect-timeout=%connectTimeout% --dry-run=%dryRun% --referer=%referer% --user-agent=%userAgent% --allow-overwrite=true --deferred-input=true --download-result=%progressBarType% --enable-color=true --stop=%timeLimit% --log=%logFile% --console-log-level=%conlogLevel%
:: ������ ����������� �� ��������� XXXL@ � ��������� ����������
::cd %dirPath%
::rename "XXXL@*" "/////*.jpg"
@echo.
pause