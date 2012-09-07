@echo off

mkdir nuget\Content
mkdir nuget\Content\Scripts

copy jquery-w8-*.js nuget\Content\Scripts
NuGet.exe pack nuget\Package.nuspec
