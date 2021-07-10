@echo off
chcp 65001
cls
setlocal EnableExtensions
set CPU=
set D3D=
set DSK=
set GPC=
set MEM=
set SAT=
if /i "%1" == "-CPU" goto cpu
if /i "%1" == "-DIRECT3D" goto d3d
if /i "%1" == "-DISK" goto disk
if /i "%1" == "-GRAPHICS" goto graphics
if /i "%1" == "-MEMORY" goto mem
if /i "%1" == "-SAT" goto sat
if /i "%1" == "/?" goto help
goto notpara


:cpu
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo Wait . . .
for /f "tokens=2 delims=:" %%a in ('powershell Get-WmiObject -class Win32_WinSAT ^|findstr /bi "CPUScore"') do (set "CPU=%%a")
cls
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo [CPU.Score]
echo.
echo %CPU%
goto Ext


:d3d
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo Wait . . .
for /f "tokens=2 delims=:" %%a in ('powershell Get-WmiObject -class Win32_WinSAT ^|findstr /bi "D3DScore"') do (set "D3D=%%a")
cls
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo [Direct3D.Score]
echo.
echo %D3D%
goto Ext


:disk
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo Wait . . .
for /f "tokens=2 delims=:" %%a in ('powershell Get-WmiObject -class Win32_WinSAT ^|findstr /bi "DiskScore"') do (set "DSK=%%a")
cls
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo [Disk.Score]
echo.
echo %DSK%
goto Ext


:graphics
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo Wait . . .
for /f "tokens=2 delims=:" %%a in ('powershell Get-WmiObject -class Win32_WinSAT ^|findstr /bi "GraphicsScore"') do (set "GPC=%%a")
cls
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo [Graphic.Score]
echo.
echo %GPC%
goto Ext


:mem
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo Wait . . .
for /f "tokens=2 delims=:" %%a in ('powershell Get-WmiObject -class Win32_WinSAT ^|findstr /bi "MemoryScore"') do (set "MEM=%%a")
cls
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo [Memory.Score]
echo.
echo %MEM%
goto Ext


:sat
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo Wait . . .
for /f "tokens=2 delims=:" %%a in ('powershell Get-WmiObject -class Win32_WinSAT ^|findstr /bi "WinSPRLevel"') do (set "SAT=%%a")
cls
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo.
echo.
echo [Windows SAT.Score]
echo
echo %SAT%
goto Ext


:help

:cpu
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo Windows 시스템 평가 도구 (WinSAT)
echo.
echo 사용법
echo winsat [OPTIONS] 
echo.
echo OPTIONS
echo  -cpu 	이 컴퓨터의 프로세서(CPU) Windows 체험지수를 확인합니다.
echo.
echo  -direct3d	이 컴퓨터의 Direct 3D Windows 체험지수를 확인합니다.
echo.
echo  -disk	이 컴퓨터의 주 디스크 Windows 체험 지수를 확인합니다.
echo.
echo  -graphics	이 컴퓨터의 그래픽 Windows 체험 지수를 확인합니다.
echo.
echo  -memory	이 컴퓨터의 메모리(RAM) Windows 체험 지수를 확인합니다.
echo.
echo  -sat	이 컴퓨터의 측정된 가장 낮은 Windows 체험 지수를 확인합니다.
echo.
echo  ^/?		Windows 시스템 평가 도구의 명령어 목록을 확인합니다.
echo.
echo 이 도구는 PowerShell 명령어중 WinSAT 명령어를 사용하여
echo 측정된 결과를 확인하는 도구입니다.
echo.
echo github.com/yhrepo/yhrepo
goto Ext

:notpara
echo Windows Experience Index By YHREPO
echo Release 1.0 [2021-07-10]
echo Distributed for free under the MIT License.
echo.
echo 오류
echo.
echo 옵션이 잘못되었습니다.
echo.


:Ext
