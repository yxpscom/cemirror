@echo off
if "%1"=="" goto error

@rem ##########
@rem 2> File gs://chromium-apache-win32/11ba0c1941b9c46ad279f33c2db3e3c628197ae8 for
@rem src/third_party/apache-win32\bin\httpd.exe does not exist, skipping.
@rem 3> File gs://chromium-apache-win32/199cb003a5a40db260f29128ae630f298aaf7702 for
@rem src/third_party/apache-win32\bin\libapriconv-1.dll does not exist, skipping.
@rem ##########
set SRC_DIR=E:\CEF\code\chromium_git\chromium

@rem set param1=gs://chromium-apache-win32/11ba0c1941b9c46ad279f33c2db3e3c628197ae8
@rem set param2=src/third_party/apache-win32\bin\httpd.exe
set param1=%1
set param2=%2
echo [INFO][%time%] ==========Begin==================
echo [INFO][%time%] gs_url=%param1%
set baseurl=https://storage.googleapis.com/
set baseurl=%baseurl%%param1:~5%
echo [INFO][%time%] httpBaseUrl=%baseurl%


:StartDownload
@rem 进行一次 文件是否 覆盖的用户交互
pushd .
cd %SRC_DIR%
set cover
if "%cover%"=="" set cover=2
if exist %param2% (
    if %cover%==2 (
        set /p cover=file exists, whether to be covered?[0=No 1=Yes]:
    )
)
popd
if not exist %param2% (
    goto :continue
)
if %cover%==1 goto :continue
echo [INFO][%time%]================END================
goto :eof

:continue
pushd .
cd %SRC_DIR%
wget --no-check-certificate %baseurl% -O %param2%
echo [%time%][SUCCESS] Dwonloads to url:%param2%  success!!!
echo [INFO][%time%]===============END=================
popd
goto :eof

:error
echo Help:
echo     %0 [gs://name/hash] [saveToPath]
pause