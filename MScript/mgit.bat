@echo off
 
@rem ====================================================
:menu
 
cls
 
 echo.
 echo              ====== Git ���زֿ�·��ѡ�� ======
 echo.
 echo                       1:    Lab25
 echo                       2:    yidao
 echo                       3:    yuhuida
 echo                       4:    kimson
 echo                       5:    kimsonBackend
 echo.
 echo                       P:    ��Gitͼ�β�������
 echo                       Q:    �˳�
 echo.
 echo              ====== Git ���زֿ�·��ѡ�� ======
 echo.
 
set /p input= �������Ӧ�Ĵ���ѡ��Git·����

 if "%input%"=="1" goto route1 
 if "%input%"=="2" goto route2
 if "%input%"=="3" goto route3
 if "%input%"=="4" goto route4
 if "%input%"=="5" goto route5
 if "%input%"=="P" "d:\Program Files\Git\bin\wish.exe" "d:\Program Files\Git\libexec\git-core\git-gui"
 if "%input%"=="p" "d:\Program Files\Git\bin\wish.exe" "d:\Program Files\Git\libexec\git-core\git-gui"
 if "%input%"=="Q" exit
 if "%input%"=="q" exit
 if "%input%"=="*" goto meun

goto end

@rem ====================================================
:route1
E:
cd Work\Workspaces\WebStorm\Lab25\
"d:\Program Files\Git\bin\sh.exe"
@rem ====================================================
:route2
E:
cd Work\DANKAL\adjustment\
"D:\Program Files\Git\bin\sh.exe"
@rem ====================================================
:route3
E:
cd Work\MWorks\Projects\szyhd\program\szyuhuida\
"d:\Program Files\Git\bin\sh.exe"
@rem ====================================================
:route4
E:
cd Work\MWorks\Projects\KimsonDesign\Project\KimsonDesignDev\
"d:\Program Files\Git\bin\sh.exe"
@rem ====================================================
:route5
E:
cd Work\MWorks\Projects\KimsonDesign\Project\KimsonDesignBackend\
"d:\Program Files\Git\bin\sh.exe"
@rem ====================================================
:route6
cd e:\Work\MWorks\Projects\szyhd\program\szyuhuida\"d:\Program Files\Git\bin\sh.exe" --login -igoto menu

:end
