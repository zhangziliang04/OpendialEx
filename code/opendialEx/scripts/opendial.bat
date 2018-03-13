@if "%DEBUG%" == "" @echo off
set JAVA_OPTS=%* 
@rem ##########################################################################
@rem
@rem  opendial startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You can also use JAVA_OPTS and OPENDIAL_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windowz variants

if not "%OS%" == "Windows_NT" goto win9xME_args
if "%@eval[2+2]" == "4" goto 4NT_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*
goto execute

:4NT_args
@rem Get arguments from the 4NT Shell from JP Software
set CMD_LINE_ARGS=%$

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\opendial-1.4.jar;%APP_HOME%\lib\httpclient-4.3.6.jar;%APP_HOME%\lib\balloontip-1.2.4.1.jar;%APP_HOME%\lib\org.json-2.0.jar;%APP_HOME%\lib\jfreechart-1.0.19.jar;%APP_HOME%\lib\jung-graph-impl-2.0.1.jar;%APP_HOME%\lib\jung-visualization-2.0.1.jar;%APP_HOME%\lib\marytts-runtime-5.2-beta2.jar;%APP_HOME%\lib\commons-math3-3.2.jar;%APP_HOME%\lib\sphinx4-core-5prealpha-SNAPSHOT.jar;%APP_HOME%\lib\maltparser-1.8.1.jar;%APP_HOME%\lib\stanford-corenlp-3.5.2.jar;%APP_HOME%\lib\exp4j.jar;%APP_HOME%\lib\httpcore-4.3.3.jar;%APP_HOME%\lib\commons-logging-1.1.3.jar;%APP_HOME%\lib\commons-codec-1.6.jar;%APP_HOME%\lib\jcommon-1.0.23.jar;%APP_HOME%\lib\jung-api-2.0.1.jar;%APP_HOME%\lib\collections-generic-4.01.jar;%APP_HOME%\lib\jung-algorithms-2.0.1.jar;%APP_HOME%\lib\marytts-common-5.2-beta2.jar;%APP_HOME%\lib\marytts-signalproc-5.2-beta2.jar;%APP_HOME%\lib\icu4j-54.1.1.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\commons-collections-3.2.1.jar;%APP_HOME%\lib\emotionml-checker-java-1.1.jar;%APP_HOME%\lib\jtok-core-1.9.3.jar;%APP_HOME%\lib\guava-14.0.1.jar;%APP_HOME%\lib\trove4j-2.0.2.jar;%APP_HOME%\lib\httpcore-nio-4.1.jar;%APP_HOME%\lib\opennlp-maxent-3.0.3.jar;%APP_HOME%\lib\opennlp-tools-1.5.3.jar;%APP_HOME%\lib\hsqldb-2.0.0.jar;%APP_HOME%\lib\sphinx4-data-5prealpha-SNAPSHOT.jar;%APP_HOME%\lib\log4j-1.2.16.jar;%APP_HOME%\lib\libsvm-3.1.jar;%APP_HOME%\lib\liblinear-1.8.jar;%APP_HOME%\lib\xom-1.2.10.jar;%APP_HOME%\lib\joda-time-2.1.jar;%APP_HOME%\lib\jollyday-0.4.7.jar;%APP_HOME%\lib\ejml-0.23.jar;%APP_HOME%\lib\javax.json-api-1.0.jar;%APP_HOME%\lib\colt-1.2.0.jar;%APP_HOME%\lib\commons-io-2.0.1.jar;%APP_HOME%\lib\fast-md5-2.7.1.jar;%APP_HOME%\lib\groovy-all-2.4.5.jar;%APP_HOME%\lib\Jampack-1.0.jar;%APP_HOME%\lib\jama-1.0.3.jar;%APP_HOME%\lib\swing-layout-1.0.3.jar;%APP_HOME%\lib\slf4j-api-1.6.1.jar;%APP_HOME%\lib\slf4j-log4j12-1.6.1.jar;%APP_HOME%\lib\jwnl-1.3.3.jar;%APP_HOME%\lib\xercesImpl-2.8.0.jar;%APP_HOME%\lib\xalan-2.7.0.jar;%APP_HOME%\lib\jaxb-api-2.2.7.jar;%APP_HOME%\lib\concurrent-1.3.4.jar;%APP_HOME%\lib\xml-apis-2.0.2.jar

@rem Execute opendial
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %OPENDIAL_OPTS%  -classpath "%CLASSPATH%" opendial.DialogueSystem %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable OPENDIAL_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%OPENDIAL_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
