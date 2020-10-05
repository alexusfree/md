@echo off
@if "%~1"=="" goto skip
@pushd %~dp0

UE4.25_locres_import.exe "%~1"

set font1=Kingthings_Petrock_Pro.ufont
set font2=Kingthings_Petrock_Light_Pro.ufont


if exist NEW_Game.locres (
del /q Game.locres
ren NEW_Game.locres Game.locres
)


:skip
