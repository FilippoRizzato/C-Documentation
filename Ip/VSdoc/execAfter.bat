@echo off
@echo ...
@REM Uncomment the following line if you want to keep this BAT file for later use.
@REM copy "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\execAfter.bat" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\execAfter_bak.bat" > NUL:
@REM If user didn't provide his own vsdocman_overrides.css in external files, copy the default (empty) one.
echo IF NOT EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\vsdocman_overrides.css" copy "C:\Program Files\VSdocman\Templates\vsdocman_overrides.css" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\vsdocman_overrides.css" > NUL:
IF NOT EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\vsdocman_overrides.css" copy "C:\Program Files\VSdocman\Templates\vsdocman_overrides.css" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\vsdocman_overrides.css" > NUL:
@echo Creating dynamic TOC...
echo IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\toc--" rmdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\toc--" /S /Q > NUL:
IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\toc--" rmdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\toc--" /S /Q > NUL:
@"C:\Program Files\VSdocman\Templates\HTML\Util\Helixoft.DynamicTocCreator.exe" /outputDirectory "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\toc--" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\static_toc.xml"
@IF ERRORLEVEL 1 GOTO dynTocError
echo IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\static_toc.xml" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\static_toc.xml" > NUL:
IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\static_toc.xml" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\static_toc.xml" > NUL:
@:dynTocError
@echo Creating search index...
@"C:\Program Files\VSdocman\Templates\HTML\Util\HelixoftHtmlIndexer.exe" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc" "*.htm?" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\search--" version2
echo IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019" rmdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019" /S /Q > NUL:
IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019" rmdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019" /S /Q > NUL:
echo mkdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019" > NUL:
mkdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019" > NUL:
echo copy "C:\Program Files\VSdocman\Templates\msdn2019\*.*" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019\*.*" > NUL:
copy "C:\Program Files\VSdocman\Templates\msdn2019\*.*" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\msdn2019\*.*" > NUL:
echo IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" rmdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" /S /Q > NUL:
IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" rmdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" /S /Q > NUL:
echo mkdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" > NUL:
mkdir "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" > NUL:
echo xcopy "C:\Program Files\VSdocman\Templates\SyntaxHighlighter\*.*" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" /S /H /R /Y /i > NUL:
xcopy "C:\Program Files\VSdocman\Templates\SyntaxHighlighter\*.*" "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\SyntaxHighlighter" /S /H /R /Y /i > NUL:
@REM HTML files that were protected against indexing will be made HTML again.
echo ren "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\*.html_rename" "*.html" > NUL:
ren "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\*.html_rename" "*.html" > NUL:
@REM delete unused files
echo IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhk" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhk" > NUL:
IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhk" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhk" > NUL:
echo IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhc" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhc" > NUL:
IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhc" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhc" > NUL:
echo IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhp" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhp" > NUL:
IF EXIST "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhp" del "C:\Users\Pc\OneDrive\Desktop\Ip\Ip\VSdoc\Ip.hhp" > NUL:
@echo All done
