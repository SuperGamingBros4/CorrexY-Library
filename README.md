# CorrexY-Library
Roblox UI Library

# Description
This is a UI Library I created for Roblox to ease and speed up the proccess of make UIs for scripts.

# Installation
If you already have an exploit just copy:

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/CorrexY-Library/main/Library.lua"))()

or

getgenv().Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperGamingBros4/CorrexY-Library/main/Library.lua"))()

if you want re-execution support.

Otherwise if you don't have an exploit just look up how to get one. (I recommend Krnl)

# Usage
After copying one of those lines you can begin using this library.

if you use local you can add things buttons and other things on top of them

Adding a tab:
  local Tab = Library:AddTab("Name Here")

Adding a section:
  local Section = Tab:AddSection("Name Here")
  
Adding buttons and toggles:
  Section:AddButton({Name = "Name Here", Flag = "Flag Name Here", Callback = function here})
  Section:AddToggle({Name = "Name Here", Flag = "Flag Name Here", Callback = function here})
  
I use Tables for adding properties because there is no required order for the properties to be in.
And to access flags you need to do: Main.Flags["Flag Name Here"].
