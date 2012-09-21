@echo off

set w8=jquery-w8-1.8.2.js
set min=jquery-w8-1.8.2.min.js

echo minifying with uglifyjs...
call uglifyjs -o %min% %w8%
call utils\UTF8BOM -f --crlf .

if exist nuget\Content\NUL rmdir /s /q nuget\Content
mkdir nuget\Content
mkdir nuget\Content\Scripts

copy jquery-w8-*.js nuget\Content\Scripts
call utils\NuGet.exe pack nuget\Package.nuspec
