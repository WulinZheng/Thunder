@echo off
takeown /f %Systemroot%\System32\drivers\tcpip.sys
icacls %Systemroot%\System32\drivers\tcpip.sys /grant "%username%":f
netsh int tcp set global autotuninglevel=disable