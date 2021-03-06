@echo off
rem Change to current directory
cd /d %~dp0

cls
title Installing Safety Production Centern System For GD(zhanyue)
rem Use [skipTests] instead of [maven.test.skip], to "skip running tests, but still compile them".
rem call mvn clean install -DskipTests=true
if ERRORLEVEL 1 GOTO :ERR

rem [断点调试]According to the plugin configuration, the tomcat7 runs in Maven JVM environment, so appending JPDA debug options to MAVEN_OPTS will work.
set MAVEN_OPTS=%MAVEN_OPTS% -Xms256m -Xmx256m -XX:PermSize=64M -XX:MaxNewSize=128m -XX:MaxPermSize=128m -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8787

rem [热加载部署]JRebel settings
rem set MAVEN_OPTS=%MAVEN_OPTS% -Drebel.spring_plugin=true -Drebel.mybatis_plugin=true -javaagent:D:\Tools\JRebel\jrebel.jar -noverify

rem set MAVEN_OPTS=%MAVEN_OPTS% -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=18080 -Dcom.sun.management.jmxremote.authenticate=false -Djava.net.preferIPv4Stack=true

:START
cls
rem Run the [tomcat7:run] in Parent POM.xml directory. Now reloading changes from child projects without restalling is possible.
title Running Safety Production Centern System For GD(zhanyue) in Tomcat 7
rem Use Spring development profile to run on server. Should set [spring.profiles.active] or [spring.profiles.default] here to match database configurations.


call mvn clean tomcat7:run -Dmaven.test.skip=true -Dspring.profiles.active=development -Dtomcat.maven.http.port=8008 -Pgd -Pweb-build -Ptomcat -fail-never

echo.
rem set /p var=Press ENTER to restart, OR click on the right top red button of the window.
set /p var=按回车键重启,或者点击窗口右上角红色按钮关闭窗口.
GOTO :START

:ERR
echo.
echo. Safety Production Centralization System For GD(zhanyue) Installation has failed. See above for details.
pause>nul
