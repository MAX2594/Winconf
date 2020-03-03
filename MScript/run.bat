@echo off

if %* == yidao goto yidao
if %* == kimson goto kimson

:: --- 帮助 --- 
if %* == ? goto help
if %* == -h goto help
if %* == -help goto help
if %* == h goto help
if %* == help goto help

echo No such defined, try:

goto help



:: --- --- 路由功能 --- ---
 
:yidao
E:
cd Work\DANKAL\adjustment
supervisor bin\www
exit

:kimson
E:
cd E:\Work\MWorks\Projects\KimsonDesign\Project\KimsonDesignDev\kimson
npm run dev
exit

:help
echo yidao	( Run project Yidao on local )
echo kimson	( Run project kimsonDesign on local )

:end


