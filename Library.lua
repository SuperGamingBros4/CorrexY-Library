local Library = {Flags = {}}

local CorrexY = Instance.new("ScreenGui")

local DragBar = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local MainContainer = Instance.new("Frame")
local Tabs = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")
local CorrexYSettings = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local CorrexYButton = Instance.new("TextButton")
local CorrexYv1 = Instance.new("Frame")
local SetGuiOpenKeyText = Instance.new("TextLabel")
local SetGuiOpenKeyButton = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local DestroyGUI = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local function asdsawdasdwasdasdfdafhjasdhfjashdfjksdifgasdhsdkfgj() 
	local Name = ""
	for i = 1, math.random(10, 100) do
		Name = Name .. string.char(math.random(33, 126))
	end
	return Name
end
local CorrexYName = asdsawdasdwasdasdfdafhjasdhfjashdfjksdifgasdhsdkfgj()
CorrexY.Name = CorrexYName
CorrexY.Parent = game:GetService("CoreGui")
CorrexY.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

DragBar.Name = "DragBar"
DragBar.Parent = CorrexY
DragBar.Active = true
DragBar.Draggable = true
DragBar.BackgroundColor3 = Color3.fromRGB(176, 0, 2)
DragBar.Position = UDim2.new(0.195067599, 0, 0.285672933, 0)
DragBar.Size = UDim2.new(0, 748, 0, 28)

UICorner.Parent = DragBar
UICorner.CornerRadius = UDim.new(0, 8)

MainContainer.Name = "MainContainer"
MainContainer.Parent = DragBar
MainContainer.BackgroundColor3 = Color3.fromRGB(48, 45, 45)
MainContainer.BorderColor3 = Color3.fromRGB(166, 60, 60)
MainContainer.ClipsDescendants = true
MainContainer.Position = UDim2.new(0, 0, 0.5, 0)
MainContainer.Size = UDim2.new(0, 747, 0, 378)
MainContainer.ZIndex = 0

Tabs.Name = "Tabs"
Tabs.Parent = MainContainer
Tabs.Active = true
Tabs.BackgroundColor3 = Color3.fromRGB(34, 31, 31)
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0.000669344037, 0, 0.00395775866, 0)
Tabs.Size = UDim2.new(0, 214, 0, 376)
Tabs.CanvasSize = UDim2.new(0, 0, 0, 0)
Tabs.ScrollBarThickness = 6

UIListLayout.Parent = Tabs
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)

UIPadding.Parent = Tabs
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)

CorrexYSettings.Name = "CorrexYSettings"
CorrexYSettings.Parent = Tabs
CorrexYSettings.BackgroundColor3 = Color3.fromRGB(223, 0, 0)
CorrexYSettings.BackgroundTransparency = 1.000
CorrexYSettings.Size = UDim2.new(0, 202, 0, 28)

UICorner_2.Parent = CorrexYSettings

CorrexYButton.Name = "CorrexYButton"
CorrexYButton.Parent = CorrexYSettings
CorrexYButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CorrexYButton.BackgroundTransparency = 1.000
CorrexYButton.Position = UDim2.new(0.0233644862, 0, 0.0132978726, 0)
CorrexYButton.Size = UDim2.new(1, 0, 1, 0)
CorrexYButton.Font = Enum.Font.SourceSans
CorrexYButton.Text = "Correx Y"
CorrexYButton.TextColor3 = Color3.fromRGB(229, 229, 229)
CorrexYButton.TextScaled = true
CorrexYButton.TextSize = 22.000
CorrexYButton.TextWrapped = true
CorrexYButton.TextXAlignment = Enum.TextXAlignment.Left

CorrexYv1.Name = "CorrexYv1"
CorrexYv1.Parent = MainContainer
CorrexYv1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CorrexYv1.BackgroundTransparency = 1.000
CorrexYv1.Position = UDim2.new(0.286765099, 0, -0.00131580816, 0)
CorrexYv1.Size = UDim2.new(0, 532, 0, 378)
CorrexYv1.Visible = false

SetGuiOpenKeyText.Name = "SetGuiOpenKeyText"
SetGuiOpenKeyText.Parent = CorrexYv1
SetGuiOpenKeyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SetGuiOpenKeyText.BackgroundTransparency = 1.000
SetGuiOpenKeyText.Position = UDim2.new(0.0526315793, 0, 0.0687830672, 0)
SetGuiOpenKeyText.Size = UDim2.new(0, 200, 0, 50)
SetGuiOpenKeyText.Font = Enum.Font.SourceSans
SetGuiOpenKeyText.Text = "Set Gui Open Key"
SetGuiOpenKeyText.TextColor3 = Color3.fromRGB(255, 255, 255)
SetGuiOpenKeyText.TextScaled = true
SetGuiOpenKeyText.TextSize = 14.000
SetGuiOpenKeyText.TextWrapped = true

SetGuiOpenKeyButton.Name = "SetGuiOpenKeyButton"
SetGuiOpenKeyButton.Parent = CorrexYv1
SetGuiOpenKeyButton.BackgroundColor3 = Color3.fromRGB(39, 36, 36)
SetGuiOpenKeyButton.Position = UDim2.new(0.439849615, 0, 0.0687830672, 0)
SetGuiOpenKeyButton.Size = UDim2.new(0, 128, 0, 50)
SetGuiOpenKeyButton.Font = Enum.Font.SourceSans
SetGuiOpenKeyButton.Text = "RightControl"
SetGuiOpenKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SetGuiOpenKeyButton.TextScaled = true
SetGuiOpenKeyButton.TextSize = 14.000
SetGuiOpenKeyButton.TextWrapped = true

local OldText = SetGuiOpenKeyButton.Text
local Choosing = false
SetGuiOpenKeyButton.MouseButton1Click:Connect(function()
	if Choosing then
		SetGuiOpenKeyButton.Text = OldText
	else
		SetGuiOpenKeyButton.Text = "Choosing..."
	end
	Choosing = not Choosing
end)
local OpenKey = Enum.KeyCode.RightControl
local Opened = true
local KeyBlacklist = {
	[Enum.KeyCode.Escape] = true,
	[Enum.KeyCode.Return] = true,
	[Enum.KeyCode.KeypadEnter] = true,
	[Enum.KeyCode.Slash] = true,
	[Enum.KeyCode.F9] = true,
	[Enum.KeyCode.LeftShift] = true,
	[Enum.KeyCode.RightShift] = true
}
game:GetService("UserInputService").InputBegan:Connect(function(Input)
	if Input.UserInputType == Enum.UserInputType.Keyboard then
		if Input.KeyCode == OpenKey and not (Choosing) then
			if Opened then
				DragBar.Visible = false
			else
				DragBar.Visible = true
			end
			Opened = not Opened
		elseif Choosing and not KeyBlacklist[Input.KeyCode] then
			Choosing = false
			OpenKey = Input.KeyCode
			local t = tostring(Input.KeyCode)
			SetGuiOpenKeyButton.Text = string.sub(t,14,#t)
		end
	end
end)

UICorner_5.Parent = SetGuiOpenKeyButton

DestroyGUI.Name = "DestroyGUI"
DestroyGUI.Parent = CorrexYv1
DestroyGUI.BackgroundColor3 = Color3.fromRGB(39, 36, 36)
DestroyGUI.Position = UDim2.new(0.263157904, 0, 0.230158716, 0)
DestroyGUI.Size = UDim2.new(0, 128, 0, 50)
DestroyGUI.Font = Enum.Font.SourceSans
DestroyGUI.Text = "DestroyGUI"
DestroyGUI.TextColor3 = Color3.fromRGB(255, 255, 255)
DestroyGUI.TextScaled = true
DestroyGUI.TextSize = 14.000
DestroyGUI.TextWrapped = true
DestroyGUI.MouseButton1Click:Connect(function()
	CorrexY:Destroy()
end)

UICorner_3.Parent = DestroyGUI

function Tween(Object, Style, Direction, Time, Flags, Reverse, Repeats)
	Style = Style or "Linear"
	Direction = Direction or "InOut"
	Time = Time or 1
	Flags = Flags or {}
	Repeats = Repeats or 0
	Reverse = Reverse or false
	game:GetService("TweenService"):Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction],Repeats,Reverse, Time), Flags):Play()
end

function ChangeTab(Tab, TabGUI)
	for i,v in pairs(MainContainer:GetChildren()) do -- Make all tabs invisible
		if v ~= Tabs then
			v.Visible = false
		end
	end
	TabGUI.Visible = true -- Make the selected tab visible
	for i,v in pairs(Tabs:GetChildren()) do -- Remove the selection indicator for all Tabs
		if v:IsA("Frame") then
			Tween(v, "Sine", "InOut", 0.2, {BackgroundTransparency = 1})
		end
	end
	Tween(Tab, "Sine", "InOut", 0.2, {BackgroundTransparency = 0}) -- Add the selection indicator to the selected tab
end

CorrexYButton.MouseButton1Click:Connect(function()
	ChangeTab(CorrexYSettings, CorrexYv1)
end)

function Library:AddTab(Name)
	local Tab = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local TabButton = Instance.new("TextButton")
	local Tab_2 = Instance.new("ScrollingFrame")
	local LeftSectionHolder = Instance.new("Frame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local RightSectionHolder = Instance.new("Frame")
	local UIListLayout_5 = Instance.new("UIListLayout")
	
	local ZIndex = 2

	Tab.Name = Name
	Tab.Parent = Tabs
	Tab.BackgroundColor3 = Color3.fromRGB(223, 0, 0)
	Tab.BackgroundTransparency = 1.000
	Tab.Size = UDim2.new(0, 202, 0, 28)

	UICorner_3.Parent = Tab

	TabButton.Name = "TabButton"
	TabButton.Parent = Tab
	TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButton.BackgroundTransparency = 1.000
	TabButton.Position = UDim2.new(0.0233644862, 0, 0.0132978726, 0)
	TabButton.Size = UDim2.new(1, 0, 1, 0)
	TabButton.Font = Enum.Font.SourceSans
	TabButton.Text = Name
	TabButton.TextColor3 = Color3.fromRGB(229, 229, 229)
	TabButton.TextScaled = true
	TabButton.TextSize = 22.000
	TabButton.TextWrapped = true
	TabButton.TextXAlignment = Enum.TextXAlignment.Left
	TabButton.MouseButton1Click:Connect(function() ChangeTab(Tab, Tab_2) end)

	Tab_2.Name = Name
	Tab_2.Parent = MainContainer
	Tab_2.Active = true
	Tab_2.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Tab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tab_2.BackgroundTransparency = 1.000
	Tab_2.BorderSizePixel = 0
	Tab_2.Position = UDim2.new(0.287, 0, 0.00400000019, 0)
	Tab_2.Size = UDim2.new(0, 533, 0, 376)
	Tab_2.CanvasSize = UDim2.new(0, 0, 0, 0)
	Tab_2.Visible = false
	Tab_2.ScrollBarThickness = 8
	Tab_2.AutomaticCanvasSize = Enum.AutomaticSize.Y

	LeftSectionHolder.Name = "LeftSectionHolder"
	LeftSectionHolder.Parent = Tab_2
	LeftSectionHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LeftSectionHolder.BackgroundTransparency = 1.000
	LeftSectionHolder.Position = UDim2.new(0, 5, 0.0270000007, 0)
	LeftSectionHolder.Size = UDim2.new(0, 254, 0, 348)

	UIListLayout_2.Parent = LeftSectionHolder
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 10)

	RightSectionHolder.Name = "RightSectionHolder"
	RightSectionHolder.Parent = Tab_2
	RightSectionHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	RightSectionHolder.BackgroundTransparency = 1.000
	RightSectionHolder.Position = UDim2.new(0.5, 5, 0.0289999992, 0)
	RightSectionHolder.Size = UDim2.new(0, 254, 0, 348)

	UIListLayout_5.Parent = RightSectionHolder
	UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_5.Padding = UDim.new(0, 10)

	local Tabs = {}
	function Tabs:AddSection(Name)
		local Section = Instance.new("Frame")
		local UIListLayout_3 = Instance.new("UIListLayout")
		local UICorner_4 = Instance.new("UICorner")
		local SectionName = Instance.new("TextLabel")
		
		Section.Parent = LeftSectionHolder
		if LeftSectionHolder.UIListLayout.AbsoluteContentSize.Y > RightSectionHolder.UIListLayout.AbsoluteContentSize.Y then
			Section.Parent = RightSectionHolder
		end
		
		Section.Name = "Section"
		Section.BackgroundColor3 = Color3.fromRGB(63, 62, 62)
		Section.BorderColor3 = Color3.fromRGB(54, 50, 50)
		Section.Position = UDim2.new(-0.0157480314, 0, 0.00287356321, 0)
		Section.Size = UDim2.new(1, -6, 0, 0)
		Section.ChildAdded:Connect(function(Obj)
            pcall(function()
                Obj.ZIndex = ZIndex
                ZIndex = ZIndex - 1
            end)
		end)

		UIListLayout_3.Parent = Section
		UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_3.Padding = UDim.new(0, 7)
		local c 
		c = game:GetService("RunService").RenderStepped:Connect(function()
			Section.Size = UDim2.new(1, -6, 0, UIListLayout_3.AbsoluteContentSize.Y + 10)
			if not Section then
				c:Disconnect()
			end
		end)

		UICorner_4.CornerRadius = UDim.new(0, 10)
		UICorner_4.Parent = Section

		SectionName.Name = Name
		SectionName.Parent = Section
		SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SectionName.BackgroundTransparency = 1.000
		SectionName.Position = UDim2.new(0.0201612897, 0, 0, 0)
		SectionName.Size = UDim2.new(0, 238, 0, 23)
		SectionName.Font = Enum.Font.SourceSans
		SectionName.Text = Name
		SectionName.TextColor3 = Color3.fromRGB(238, 31, 31)
		SectionName.TextScaled = true
		SectionName.TextSize = 14.000
		SectionName.TextWrapped = true
		
		local Sections = {}
		function Sections:AddButton(Flags)
			local Name = Flags["Name"] or "Button"
			local Callback = Flags["Callback"] or function()end
				
			local Button = Instance.new("TextButton")
			Button.Name = Name
			Button.Parent = Section
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.BackgroundTransparency = 1.000
			Button.Position = UDim2.new(0, 0, 0.358974367, 0)
			Button.Size = UDim2.new(0, 238, 0, 32)
			Button.Font = Enum.Font.SourceSans
			Button.Text = Name
			Button.TextColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextScaled = true
			Button.TextSize = 14.000
			Button.TextWrapped = true
			Button.TextXAlignment = Enum.TextXAlignment.Left
			Button.MouseButton1Click:Connect(function()
				Callback()
			end)
		end
		
		function Sections:AddToggle(Flags)
			local Name = Flags["Name"] or "Toggle"
			local Flag = Flags["Flag"] or ""
			local Callback = Flags["Callback"] or function()end
			local Toggled = false
			Library.Flags[Flag] = false
			
			local Toggle = Instance.new("TextButton")
			local Box = Instance.new("Frame")
			local UIPadding_3 = Instance.new("UIPadding")
			
			Toggle.Name = Name
			Toggle.Parent = Section
			Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.BackgroundTransparency = 1.000
			Toggle.Position = UDim2.new(0.0201612897, 0, 0.355191261, 0)
			Toggle.Size = UDim2.new(0, 238, 0, 32)
			Toggle.Font = Enum.Font.SourceSans
			Toggle.Text = Name
			Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
			Toggle.TextScaled = true
			Toggle.TextSize = 14.000
			Toggle.TextWrapped = true
			Toggle.TextXAlignment = Enum.TextXAlignment.Left
			Toggle.MouseButton1Click:Connect(function()
				if Toggled then
					Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(63, 62, 62)})
				else
					Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(197, 33, 33)})
				end
				Toggled = not Toggled
				Callback(Toggled)
				Library.Flags[Flag] = Toggled
			end)

			Box.Name = "Box"
			Box.Parent = Toggle
			Box.BackgroundColor3 = Color3.fromRGB(63, 62, 62)
			Box.BorderColor3 = Color3.fromRGB(48, 45, 45)
			Box.BorderSizePixel = 2
			Box.Position = UDim2.new(-0.129999995, 0, 0.187999994, 0)
			Box.Size = UDim2.new(0, 20, 0, 20)

			UIPadding_3.Parent = Toggle
			UIPadding_3.PaddingLeft = UDim.new(0, 30)
			
		end
		
		function Sections:AddDropDown(Flags)
			local MultiSelect = Flags["MultiSelect"] or false
			local Name = Flags["Name"] or "DropDown"
			local Flag = Flags["Flag"] or ""
			local Callback = Flags["Callback"] or function()end
			local Content = Flags["Content"] or {}
			
			if MultiSelect then
				Library.Flags[Flag] = {}
			else
				Library.Flags[Flag] = ""
			end
			
			local dropped = false
			
			local DropDown = Instance.new("TextButton")
			local Indicator = Instance.new("TextLabel")
			local DropDownPart = Instance.new("ScrollingFrame")
			local UIListLayout_4 = Instance.new("UIListLayout")
			local UIPadding_4 = Instance.new("UIPadding")

			DropDown.Name = Name
			DropDown.Parent = Section
			DropDown.BackgroundColor3 = Color3.fromRGB(58, 57, 57)
			DropDown.BorderColor3 = Color3.fromRGB(48, 45, 45)
			DropDown.BorderSizePixel = 2
			DropDown.Position = UDim2.new(0.0221774187, 0, 0.769230783, 0)
			DropDown.Size = UDim2.new(0, 237, 0, 32)
			DropDown.ZIndex = ZIndex
			DropDown.Font = Enum.Font.SourceSans
			DropDown.Text = Name
			DropDown.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDown.TextSize = 32.000
			DropDown.TextTruncate = Enum.TextTruncate.AtEnd
			DropDown.TextXAlignment = Enum.TextXAlignment.Left
			DropDown.MouseButton1Click:Connect(function()
				if dropped then
					Tween(DropDownPart, "Sine", "InOut", 0.2, {Size = UDim2.new(1,22,0,0); ScrollBarImageTransparency = 1})
					Tween(Indicator, "Sine", "InOut", 0.2, {Rotation = 0})
				else
					Tween(DropDownPart, "Sine", "InOut", 0.2, {Size = UDim2.new(1,22,3,0); ScrollBarImageTransparency = 0})
					Tween(Indicator, "Sine", "InOut", 0.2, {Rotation = 90})
				end
				dropped = not dropped
			end)

			Indicator.Name = "Indicator"
			Indicator.Parent = DropDown
			Indicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Indicator.BackgroundTransparency = 1.000
			Indicator.Position = UDim2.new(0.972761869, 0, 0.09375, 0)
			Indicator.Size = UDim2.new(0, 25, 0, 25)
			Indicator.ZIndex = 10
			Indicator.Font = Enum.Font.SourceSans
			Indicator.Text = ">"
			Indicator.TextColor3 = Color3.fromRGB(255, 255, 255)
			Indicator.TextScaled = true
			Indicator.TextSize = 14.000
			Indicator.TextWrapped = true

			DropDownPart.Name = "DropDownPart"
			DropDownPart.Parent = DropDown
			DropDownPart.Active = true
			DropDownPart.BackgroundColor3 = Color3.fromRGB(58, 57, 57)
			DropDownPart.BorderColor3 = Color3.fromRGB(48, 45, 45)
			DropDownPart.BorderSizePixel = 2
			DropDownPart.AutomaticCanvasSize = Enum.AutomaticSize.Y
			DropDownPart.Position = UDim2.new(0, -2, 1, 0)
			DropDownPart.Size = UDim2.new(1, 22, 0, 0)
			DropDownPart.ZIndex = 15
			DropDownPart.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropDownPart.ScrollBarThickness = 8
			DropDownPart.ScrollBarImageTransparency = 1

			UIListLayout_4.Parent = DropDownPart
			UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_4.Padding = UDim.new(0, 5)
			
			UIPadding_4.Parent = DropDown
			UIPadding_4.PaddingLeft = UDim.new(0, 2)
			UIPadding_4.PaddingRight = UDim.new(0, 20)
			
			for i,v in pairs(Content) do
				if MultiSelect then
					local Toggle = Instance.new("TextButton")
					local Box = Instance.new("Frame")
					local UIPadding_3 = Instance.new("UIPadding")
					
					local Toggled = false
					
					local function SetText()
						if #Library.Flags[Flag] == 0 then
							DropDown.Text = Name
						end
						for i,v in pairs(Library.Flags[Flag]) do
							if i == 1 then
								DropDown.text = v
							end
							DropDown.text =  DropDown.Text .. ", " .. v
						end
					end

					Toggle.Name = Name
					Toggle.Parent = DropDownPart
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Position = UDim2.new(0.0201612897, 0, 0.355191261, 0)
					Toggle.Size = UDim2.new(0, 238, 0, 32)
					Toggle.Font = Enum.Font.SourceSans
					Toggle.Text = Name
					Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.TextScaled = true
					Toggle.TextSize = 14.000
					Toggle.TextWrapped = true
					Toggle.TextXAlignment = Enum.TextXAlignment.Left
					Toggle.MouseButton1Click:Connect(function()
						if Toggled then
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(63, 62, 62)})
							table.insert(Library.Flags[Flag], v)
						else
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(197, 33, 33)})
							table.remove(Library.Flags[Flag], table.find(Library.Flags[Flag], v))
						end
						SetText()
						Toggled = not Toggled
						Callback(v)
					end)

					Box.Name = "Box"
					Box.Parent = Toggle
					Box.BackgroundColor3 = Color3.fromRGB(63, 62, 62)
					Box.BorderColor3 = Color3.fromRGB(48, 45, 45)
					Box.BorderSizePixel = 2
					Box.Position = UDim2.new(-0.129999995, 0, 0.187999994, 0)
					Box.Size = UDim2.new(0, 20, 0, 20)

					UIPadding_3.Parent = Toggle
					UIPadding_3.PaddingLeft = UDim.new(0, 30)

				else
					local DropDownButton = Instance.new("TextButton")

					DropDownButton.Name = v
					DropDownButton.Parent = DropDownPart
					DropDownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropDownButton.BackgroundTransparency = 1.000
					DropDownButton.Position = UDim2.new(0, 0, 0.358974367, 0)
					DropDownButton.Size = UDim2.new(0, 238, 0, 32)
					DropDownButton.ZIndex = 10
					DropDownButton.Font = Enum.Font.SourceSans
					DropDownButton.Text = v
					DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					DropDownButton.TextScaled = true
					DropDownButton.TextSize = 14.000
					DropDownButton.TextWrapped = true
					DropDownButton.TextXAlignment = Enum.TextXAlignment.Left
					DropDownButton.MouseButton1Click:Connect(function()
						DropDown.Text = v
						Library.Flags[Flag] = v
						Callback(v)
					end)
				end
			end		
		end
		
		function Sections:AddPlayerList(Flags)
			local Name = Flags["Name"] or "DropDown"
			local Flag = Flags["Flag"] or "Flags"
			local MultiSelect = Flags["MultiSelect"] or false
			local Callback = Flags["Callback"] or function()end
			
			if MultiSelect then
				Library.Flags[Flag] = {}
			else
				Library.Flags[Flag] = ""
			end
			
			local dropped = false

			local DropDown = Instance.new("TextButton")
			local Indicator = Instance.new("TextLabel")
			local DropDownPart = Instance.new("ScrollingFrame")
			local UIListLayout_4 = Instance.new("UIListLayout")
			local UIPadding_4 = Instance.new("UIPadding")

			DropDown.Name = Name
			DropDown.Parent = Section
			DropDown.BackgroundColor3 = Color3.fromRGB(58, 57, 57)
			DropDown.BorderColor3 = Color3.fromRGB(48, 45, 45)
			DropDown.BorderSizePixel = 2
			DropDown.Position = UDim2.new(0.0221774187, 0, 0.769230783, 0)
			DropDown.Size = UDim2.new(0, 237, 0, 32)
			DropDown.ZIndex = ZIndex
			DropDown.Font = Enum.Font.SourceSans
			DropDown.Text = Name
			DropDown.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropDown.TextSize = 32.000
			DropDown.TextTruncate = Enum.TextTruncate.AtEnd
			DropDown.TextXAlignment = Enum.TextXAlignment.Left
			DropDown.MouseButton1Click:Connect(function()
				if dropped then
					Tween(DropDownPart, "Sine", "InOut", 0.2, {Size = UDim2.new(1,22,0,0); ScrollBarImageTransparency = 1})
					Tween(Indicator, "Sine", "InOut", 0.2, {Rotation = 0})
				else
					Tween(DropDownPart, "Sine", "InOut", 0.2, {Size = UDim2.new(1,22,3,0); ScrollBarImageTransparency = 0})
					Tween(Indicator, "Sine", "InOut", 0.2, {Rotation = 90})
				end
				dropped = not dropped
			end)
			

			Indicator.Name = "Indicator"
			Indicator.Parent = DropDown
			Indicator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Indicator.BackgroundTransparency = 1.000
			Indicator.Position = UDim2.new(0.972761869, 0, 0.09375, 0)
			Indicator.Size = UDim2.new(0, 25, 0, 25)
			Indicator.ZIndex = 10
			Indicator.Font = Enum.Font.SourceSans
			Indicator.Text = ">"
			Indicator.TextColor3 = Color3.fromRGB(255, 255, 255)
			Indicator.TextScaled = true
			Indicator.TextSize = 14.000
			Indicator.TextWrapped = true

			DropDownPart.Name = "DropDownPart"
			DropDownPart.Parent = DropDown
			DropDownPart.Active = true
			DropDownPart.BackgroundColor3 = Color3.fromRGB(58, 57, 57)
			DropDownPart.BorderColor3 = Color3.fromRGB(48, 45, 45)
			DropDownPart.BorderSizePixel = 2
			DropDownPart.AutomaticCanvasSize = Enum.AutomaticSize.Y
			DropDownPart.Position = UDim2.new(0, -2, 1, 0)
			DropDownPart.Size = UDim2.new(1, 22, 0, 0)
			DropDownPart.ZIndex = 10
			DropDownPart.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropDownPart.ScrollBarThickness = 8
			DropDownPart.ScrollBarImageTransparency = 1

			UIListLayout_4.Parent = DropDownPart
			UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_4.Padding = UDim.new(0, 5)

			UIPadding_4.Parent = DropDown
			UIPadding_4.PaddingLeft = UDim.new(0, 2)
			UIPadding_4.PaddingRight = UDim.new(0, 20)
			
			local function SetText()
				if #Library.Flags[Flag] == 0 then
					DropDown.Text = Name
				end
				for i,v in pairs(Library.Flags[Flag]) do
					if i == 1 then
						DropDown.text = v
					end
					DropDown.text =  DropDown.Text .. ", " .. v
				end
			end
			
			local function RemovePlayer(Player)
				if MultiSelect then
					if table.find(Library.Flags[Flag], Player.Name) then
						table.remove(Library.Flags[Flag], table.find(Library.Flags[Flag], Player.Name))
					end
				end
				for i,v in pairs(DropDownPart:GetChildren()) do
					if v.Name == Player.Name then
						v:Destroy()
					end
				end
			end
			
			local function AddPlayer(Player)
				local Player = Player.Name
				if MultiSelect then
					local Toggle = Instance.new("TextButton")
					local Box = Instance.new("Frame")
					local UIPadding_3 = Instance.new("UIPadding")

					local Toggled = false

					Toggle.Name = Player
					Toggle.Parent = DropDownPart
					Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.BackgroundTransparency = 1.000
					Toggle.Position = UDim2.new(0.0201612897, 0, 0.355191261, 0)
					Toggle.Size = UDim2.new(0, 238, 0, 32)
					Toggle.Font = Enum.Font.SourceSans
					Toggle.Text = Player
					Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
					Toggle.TextScaled = true
					Toggle.TextSize = 14.000
					Toggle.TextWrapped = true
					Toggle.TextXAlignment = Enum.TextXAlignment.Left
					Toggle.MouseButton1Click:Connect(function()
						if Toggled then
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(63, 62, 62)})
							table.insert(Library.Flags[Flag], Player)
						else
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(197, 33, 33)})
							table.remove(Library.Flags[Flag], table.find(Library.Flags[Flag], Player))
						end
						SetText()
						Toggled = not Toggled
						Callback(Player)
					end)

					Box.Name = "Box"
					Box.Parent = Toggle
					Box.BackgroundColor3 = Color3.fromRGB(63, 62, 62)
					Box.BorderColor3 = Color3.fromRGB(48, 45, 45)
					Box.BorderSizePixel = 2
					Box.Position = UDim2.new(-0.129999995, 0, 0.187999994, 0)
					Box.Size = UDim2.new(0, 20, 0, 20)

					UIPadding_3.Parent = Toggle
					UIPadding_3.PaddingLeft = UDim.new(0, 30)

				else
					local DropDownButton = Instance.new("TextButton")

					DropDownButton.Name = Player
					DropDownButton.Parent = DropDownPart
					DropDownButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
					DropDownButton.BackgroundTransparency = 1.000
					DropDownButton.Position = UDim2.new(0, 0, 0.358974367, 0)
					DropDownButton.Size = UDim2.new(0, 238, 0, 32)
					DropDownButton.ZIndex = 10
					DropDownButton.Font = Enum.Font.SourceSans
					DropDownButton.Text = Player
					DropDownButton.TextColor3 = Color3.fromRGB(255, 255, 255)
					DropDownButton.TextScaled = true
					DropDownButton.TextSize = 14.000
					DropDownButton.TextWrapped = true
					DropDownButton.TextXAlignment = Enum.TextXAlignment.Left
					DropDownButton.MouseButton1Click:Connect(function()
						DropDown.Text = Player
						Library.Flags[Flag] = Player
						Callback(Player)
					end)
				end
			end	
			local Players = game:GetService("Players")
			
			Players.PlayerRemoving:Connect(function(Plr)
				RemovePlayer(Plr)
			end)
			Players.PlayerAdded:Connect(function(Plr)
				AddPlayer(Plr)
			end)
			
			for i,v in pairs(Players:GetPlayers()) do
				AddPlayer(v)
			end
		end

		
		function Sections:AddSlider(Flags)
			local Min = Flags["Min"] or 0
			local Max = Flags["Max"] or 100
			local Default = Flags["Default"] or Min
			if not (Default == Min) then
				Default = math.clamp(Flags["Default"], Min, Max)
			end
			
			local Name = Flags["Name"] or "Slider"
			local Flag = Flags["Flag"] or ""
			
			local SliderHolder = Instance.new("Frame")
			local SliderFill = Instance.new("Frame")
			local Slider = Instance.new("TextButton")

			local UIS = game:GetService("UserInputService")
			local RS = game:GetService("RunService")

			local function snap(number, factor)
				return math.floor(number/factor) * factor
			end
			
			local held = false
			local OldSize = snap(1/(Max/(Default-Min)), 1/Max)
			
			Library.Flags[Flag] = math.floor(Default)

			SliderHolder.Name = "SliderHolder"
			SliderHolder.Parent = Section
			SliderHolder.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			SliderHolder.BorderColor3 = Color3.fromRGB(48, 45, 45)
			SliderHolder.BorderSizePixel = 2
			SliderHolder.Position = UDim2.new(0.0221774187, 0, 0.582857132, 0)
			SliderHolder.Size = UDim2.new(0, 237, 0, 32)

			SliderFill.Name = "SliderFill"
			SliderFill.Parent = SliderHolder
			SliderFill.BackgroundColor3 = Color3.fromRGB(197, 33, 33)
			SliderFill.BorderSizePixel = 0
			SliderFill.Size = UDim2.new(0, 0, 1, 0)

			Slider.Name = "Slider"
			Slider.Parent = SliderFill
			Slider.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
			Slider.BackgroundTransparency = 1.000
			Slider.BorderColor3 = Color3.fromRGB(48, 45, 45)
			Slider.BorderSizePixel = 2
			Slider.Size = UDim2.new(0, 237, 0, 32)
			Slider.Font = Enum.Font.SourceSans
			Slider.Text = "Name: Value"
			Slider.TextColor3 = Color3.fromRGB(255, 255, 255)
			Slider.TextScaled = true
			Slider.TextSize = 14.000
			Slider.TextWrapped = true
			Slider.Text = Name .. ": " .. tostring(Default)
			SliderFill.Size = UDim2.new(OldSize, 0, SliderFill.Size.Y.Scale, SliderFill.Size.Y.Offset)

			Slider.MouseButton1Down:Connect(function()
				held = true
			end)

			UIS.InputEnded:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 and held then
					held = false
				end
			end)

			RS.RenderStepped:Connect(function()
				if held then
					local MousePos = UIS:GetMouseLocation().X
					local SliderSize = SliderHolder.AbsoluteSize.X
					local SliderPos = SliderHolder.AbsolutePosition.X
					local snapped = snap((MousePos-SliderPos)/SliderSize, 1/Max)
					local percentage = math.clamp(snapped, 0, 1)
					local Size = UDim2.new(percentage, 0, SliderFill.Size.Y.Scale, SliderFill.Size.Y.Offset)
					local Output = math.floor(Min+percentage*(Max-Min))
					Slider.Text = Name .. ": " .. tostring(Output)
					if OldSize ~= Size then
						OldSize = Size
						SliderFill:TweenSize(Size, Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.1, true)
					end
					Library.Flags[Flag] = Output
				end
			end)
		end
		Section.Size = UDim2.new(1, -6, 0, UIListLayout_3.AbsoluteContentSize.Y)
		return Sections
	end
	return Tabs
end
return Library
