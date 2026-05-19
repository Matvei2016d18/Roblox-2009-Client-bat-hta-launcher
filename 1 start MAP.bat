@echo off
cd /d "%~dp0"
cd "maps to play"

set "MAP=%*"

if "%~1"=="" (
    echo type your map
    dir /b *.rbxl
    set /p MAP=Type here:
)

if not "%~1"=="" set "MAP=%~1"

set "MAP=%MAP:"=%"

echo Selected map: %MAP%
cd ..

echo local plr = game.Players:CreateLocalPlayer(0) game:GetService("Visit") game:GetService("RunService"):run() plr:LoadCharacter() while true do wait(0.001) if plr.Character.Humanoid.Health == 0 then wait(5) plr:LoadCharacter() print ("LocalPlayer was killed.") end end | clip

RobloxApp.exe "maps to play\%MAP%"