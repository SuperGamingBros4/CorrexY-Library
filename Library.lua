-- Define frequently used services
local UIS = game:GetService("UserInputService")
local RS = game:GetService("RunService")

local function GetRandomName() -- Random Naming function
	local Name = "" -- Define a name variable
	for i = 1, math.random(10, 25) do -- Chooses a random length beetween 10 characters and 25
		Name = Name .. string.char(math.random(33, 126)) -- Randomly choose a character in a broad range
	end
	return Name -- Return the name
end

local function CreateObject(ClassName, Properties) -- Creates an Object. Can be used for 3d objects too
    local Object = Instance.new(ClassName) -- Make a new instance of the ClassName passed through
    for i,v in pairs(Properties) do -- loop through all Properties
        Object[i] = v -- Asign the property and the value to the object
    end
    Object.Name = GetRandomName() -- Call the random name function
    return Object -- Return the Object
end

local Library = {Flags = {}} -- Create a table for variables and functions

local CorrexY = CreateObject("ScreenGui", {
    Parent = game:GetService("CoreGui"),
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling
})

local DragBar = CreateObject("Frame", {
    Parent = CorrexY,
    Active = true,
    Draggable = true,
    BackgroundColor3 = Color3.fromRGB(176, 0, 2),
    Position = UDim2.new(0.195067599, 0, 0.285672933, 0),
    Size = UDim2.new(0, 748, 0, 28)
})

local UICorner = CreateObject("UICorner", {
    Parent = DragBar,
    CornerRadius = UDim.new(0, 8)
})

local MainContainer = CreateObject("Frame", {
    Parent = DragBar,
    BackgroundColor3 = Color3.fromRGB(48, 45, 45),
    BorderColor3 = Color3.fromRGB(166, 60, 60),
    ClipsDescendants = true,
    Position = UDim2.new(0, 0, 0.5, 0),
    Size = UDim2.new(0, 747, 0, 378),
    ZIndex = 0
})
local Tabs = CreateObject("ScrollingFrame", {
	Parent = MainContainer,
	Active = true,
	BackgroundColor3 = Color3.fromRGB(34, 31, 31),
	BorderSizePixel = 0,
	Position = UDim2.new(0.000669344037, 0, 0.00395775866, 0),
	Size = UDim2.new(0, 214, 0, 376),
	CanvasSize = UDim2.new(0, 0, 0, 0),
	ScrollBarThickness = 6
})

local UIListLayout = CreateObject("UIListLayout", {
	Parent = Tabs,
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 2)
})

local UIPadding = CreateObject("UIPadding", {
	Parent = Tabs,
	PaddingLeft = UDim.new(0, 5),
	PaddingTop = UDim.new(0, 5)
})

local CorrexYSettings = CreateObject("Frame", {
	Parent = Tabs,
	BackgroundColor3 = Color3.fromRGB(223, 0, 0),
	BackgroundTransparency = 1.000,
	Size = UDim2.new(0, 202, 0, 28)
})

local UICorner_2 = CreateObject("UICorner", {
	Parent = CorrexYSettings
})

local CorrexYButton = CreateObject("TextButton", {
	Parent = CorrexYSettings,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.0233644862, 0, 0.0132978726, 0),
	Size = UDim2.new(1, 0, 1, 0),
	Font = Enum.Font.SourceSans,
	Text = "Correx Y",
	TextColor3 = Color3.fromRGB(229, 229, 229),
	TextScaled = true,
	TextSize = 22.000,
	TextWrapped = true,
	TextXAlignment = Enum.TextXAlignment.Left
})

local CorrexYv1 = CreateObject("Frame", {
	Parent = MainContainer,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.286765099, 0, -0.00131580816, 0),
	Size = UDim2.new(0, 532, 0, 378),
	Visible = false,
})

local SetGuiOpenKeyText = CreateObject("TextLabel", {
	Parent = CorrexYv1,
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 1.000,
	Position = UDim2.new(0.0526315793, 0, 0.0687830672, 0),
	Size = UDim2.new(0, 200, 0, 50),
	Font = Enum.Font.SourceSans,
	Text = "Set Gui Open Key",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextScaled = true,
	TextSize = 14.000,
	TextWrapped = true
})

local SetGuiOpenKeyButton = CreateObject("TextButton", {
	Parent = CorrexYv1,
	BackgroundColor3 = Color3.fromRGB(39, 36, 36),
	Position = UDim2.new(0.439849615, 0, 0.0687830672, 0),
	Size = UDim2.new(0, 128, 0, 50),
	Font = Enum.Font.SourceSans,
	Text = "RightControl",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextScaled = true,
	TextSize = 14.000,
	TextWrapped = true
})

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

local UICorner_5 = CreateObject("UICorner", {
	Parent = SetGuiOpenKeyButton
})

local DestroyGUI = CreateObject("TextButton", {
	Parent = CorrexYv1,
	BackgroundColor3 = Color3.fromRGB(39, 36, 36),
	Position = UDim2.new(0.263157904, 0, 0.230158716, 0),
	Size = UDim2.new(0, 128, 0, 50),
	Font = Enum.Font.SourceSans,
	Text = "DestroyGUI",
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextScaled = true,
	TextSize = 14.000,
	TextWrapped = true
})

DestroyGUI.MouseButton1Click:Connect(function()
	CorrexY:Destroy()
end)

local UICorner_3 = CreateObject("UICorner", {
	Parent = DestroyGUI
})

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
	
	local ZIndex = 2

    local Tab = CreateObject("Frame", {
		Parent = Tabs,
		BackgroundColor3 = Color3.fromRGB(223, 0, 0),
		BackgroundTransparency = 1.000,
		Size = UDim2.new(0, 202, 0, 28)
    })

    local UICorner_3 = CreateObject("UICorner", {
	    Parent = Tab
    })

    local TabButton = CreateObject("TextButton", {
		Parent = Tab,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		Position = UDim2.new(0.0233644862, 0, 0.0132978726, 0),
		Size = UDim2.new(1, 0, 1, 0),
		Font = Enum.Font.SourceSans,
		Text = Name,
		TextColor3 = Color3.fromRGB(229, 229, 229),
		TextScaled = true,
		TextSize = 22.000,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left
    })

    local Tab_2 = CreateObject("ScrollingFrame", {
		Parent = MainContainer,
		Active = true,
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		BorderSizePixel = 0,
		Position = UDim2.new(0.287, 0, 0.00400000019, 0),
		Size = UDim2.new(0, 533, 0, 376),
		CanvasSize = UDim2.new(0, 0, 0, 0),
		Visible = false,
    	ScrollingEnabled = true,
		ScrollBarThickness = 8
    })

	TabButton.MouseButton1Click:Connect(function() ChangeTab(Tab, Tab_2) end)

    local UIListLayout = CreateObject("UIListLayout", {
    	Parent = Tab_2,
    	Padding = UDim.new(0,5),
    	FillDirection = Enum.FillDirection.Horizontal
    })

    local d
    d = RS.RenderStepped:Connect(function()
        Tab_2.CanvasSize = UDim2.new(0,0,0,	UIListLayout.AbsoluteContentSize.Y)
        if not (Tab_2.Parent) then
            d:Disconnect()
        end
    end)
    local UIPadding = CreateObject("UIPadding", {
    	Parent = Tab_2,
    	PaddingLeft = UDim.new(0, 13)
    })
    
    local LeftSectionHolder = CreateObject("Frame", {
		Parent = Tab_2,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		Position = UDim2.new(0, 5, 0.0270000007, 0),
		Size = UDim2.new(0, 254, 0, 348)
    })

    local UIListLayout_2 = CreateObject("UIListLayout", {
		Parent = LeftSectionHolder,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 10)
    })

    local RightSectionHolder = CreateObject("Frame", {
		Parent = Tab_2,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1.000,
		Position = UDim2.new(0.5, 5, 0.0289999992, 0),
		Size = UDim2.new(0, 254, 0, 348)
    })

    local UIListLayout_5 = CreateObject("UIListLayout", {
		Parent = RightSectionHolder,
		SortOrder = Enum.SortOrder.LayoutOrder,
		Padding = UDim.new(0, 10)
    })

	local Tabs = {}
	function Tabs:AddSection(Name)
        
        local Section = CreateObject("Frame", {
            BackgroundColor3 = Color3.fromRGB(63, 62, 62),
            BorderColor3 = Color3.fromRGB(54, 50, 50),
            Position = UDim2.new(-0.0157480314, 0, 0.00287356321, 0),
            Size = UDim2.new(1, -6, 0, 0)
        })
        local UIListLayout = CreateObject("UIListLayout", {
            Parent = Section,
            HorizontalAlignment = Enum.HorizontalAlignment.Center,
            SortOrder = Enum.SortOrder.LayoutOrder,
            Padding = UDim.new(0, 7)
        })
		Section.Parent = LeftSectionHolder
		if UIListLayout_5.AbsoluteContentSize.Y < UIListLayout_2.AbsoluteContentSize.Y then
			Section.Parent = RightSectionHolder
		end
		Section.Size = UDim2.new(1, -6, 0, UIListLayout.AbsoluteContentSize.Y + 10)

		Section.ChildAdded:Connect(function(Obj)
            pcall(function()
                Obj.ZIndex = ZIndex
                ZIndex = ZIndex - 1
            end)
		end)

        local UICorner_4 = CreateObject("UICorner", {
			CornerRadius = UDim.new(0, 10),
			Parent = Section
        })

        local SectionName = CreateObject("TextLabel", {
			Parent = Section,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1.000,
			Position = UDim2.new(0.0201612897, 0, 0, 0),
			Size = UDim2.new(0, 238, 0, 23),
			Font = Enum.Font.SourceSans,
			Text = Name,
			TextColor3 = Color3.fromRGB(238, 31, 31),
			TextScaled = true,
			TextSize = 14.000,
			TextWrapped = true
        })
		
		local Sections = {}
		function Sections:AddButton(Flags)
            local Flags = Flags or {}
			local Name = Flags["Name"] or "Button"
			local Callback = Flags["Callback"] or function()end
				
            local Button = CreateObject("TextButton", {
				Parent = Section,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				Position = UDim2.new(0, 0, 0.358974367, 0),
				Size = UDim2.new(0, 238, 0, 32),
				Font = Enum.Font.SourceSans,
				Text = Name,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextScaled = true,
				TextSize = 14.000,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left
            })
			Button.MouseButton1Click:Connect(function()
				Callback()
			end)
		end
		
		function Sections:AddToggle(Flags)
            local Flags = Flags or {}
			local Name = Flags["Name"] or "Toggle"
			local Flag = Flags["Flag"] or ""
			local Callback = Flags["Callback"] or function()end
			local Toggled = false
			Library.Flags[Flag] = false
			
            local Toggle = CreateObject("TextButton", {
				Parent = Section,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				Position = UDim2.new(0.0201612897, 0, 0.355191261, 0),
				Size = UDim2.new(0, 238, 0, 32),
				Font = Enum.Font.SourceSans,
				Text = Name,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextScaled = true,
				TextSize = 14.000,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left
            })
            
            local Box = CreateObject("Frame", {
				Parent = Toggle,
				BackgroundColor3 = Color3.fromRGB(63, 62, 62),
				BorderColor3 = Color3.fromRGB(48, 45, 45),
				BorderSizePixel = 2,
				Position = UDim2.new(-0.129999995, 0, 0.187999994, 0),
				Size = UDim2.new(0, 20, 0, 20)
            })

            local UIPadding = CreateObject("UIPadding", {
			    Parent = Toggle,
			    PaddingLeft = UDim.new(0, 30)
            })

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
		end
		
		function Sections:AddDropDown(Flags)
            local Flags = Flags or {}
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

            local DropDown = CreateObject("TextButton", {
				Parent = Section,
				BackgroundColor3 = Color3.fromRGB(58, 57, 57),
				BorderColor3 = Color3.fromRGB(48, 45, 45),
				BorderSizePixel = 2,
				Position = UDim2.new(0.0221774187, 0, 0.769230783, 0),
				Size = UDim2.new(0, 237, 0, 32),
				ZIndex = ZIndex,
				Font = Enum.Font.SourceSans,
				Text = Name,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 32.000,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left
            })

            local Indicator = CreateObject("TextLabel", {
				Parent = DropDown,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				Position = UDim2.new(0.972761869, 0, 0.09375, 0),
				Size = UDim2.new(0, 25, 0, 25),
				ZIndex = 10,
				Font = Enum.Font.SourceSans,
				Text = ">",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextScaled = true,
				TextSize = 14.000,
			    TextWrapped = true
            })

            local DropDownPart = CreateObject("ScrollingFrame", {
				Parent = DropDown,
				Active = true,
				BackgroundColor3 = Color3.fromRGB(58, 57, 57),
				BorderColor3 = Color3.fromRGB(48, 45, 45),
				BorderSizePixel = 2,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				Position = UDim2.new(0, -2, 1, 0),
				Size = UDim2.new(1, 22, 0, 0),
				ZIndex = 15,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 8,
			    ScrollBarImageTransparency = 1
            })

            local UIListLayout = CreateObject("UIListLayout", {
			    Parent = DropDownPart,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5)
            })
			
            local UIPadding = CreateObject("UIPadding", {
			    Parent = DropDown,
			    PaddingLeft = UDim.new(0, 2),
			    PaddingRight = UDim.new(0, 20)
            })
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
			
			for i,v in pairs(Content) do
				if MultiSelect then
					
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
                    
                    local Toggle = CreateObject("TextButton", {
						Parent = DropDownPart,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1.000,
						Position = UDim2.new(0.0201612897, 0, 0.355191261, 0),
						Size = UDim2.new(0, 238, 0, 32),
						Font = Enum.Font.SourceSans,
						Text = Name,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14.000,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left
                    })

                    local Box = CreateObject("Frame", {
						Parent = Toggle,
						BackgroundColor3 = Color3.fromRGB(63, 62, 62),
						BorderColor3 = Color3.fromRGB(48, 45, 45),
						BorderSizePixel = 2,
						Position = UDim2.new(-0.129999995, 0, 0.187999994, 0),
					    Size = UDim2.new(0, 20, 0, 20)
                    })
                    
                    local UIPadding = CreateObject("UIPadding", {
					    Parent = Toggle,
					    PaddingLeft = UDim.new(0, 30)
                    })

					Toggle.MouseButton1Click:Connect(function()
						if Toggled then
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(63, 62, 62)})
							table.remove(Library.Flags[Flag], table.find(Library.Flags[Flag], v))
						else
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(197, 33, 33)})
							table.insert(Library.Flags[Flag], v)
						end
						SetText()
						Toggled = not Toggled
						Callback(v)
					end)
				else
                    local DropDownButton = CreateObject("TextButton", {
						Parent = DropDownPart,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1.000,
						Position = UDim2.new(0, 0, 0.358974367, 0),
						Size = UDim2.new(0, 238, 0, 32),
						ZIndex = 10,
						Font = Enum.Font.SourceSans,
						Text = v,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14.000,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left
                    })
					DropDownButton.MouseButton1Click:Connect(function()
						DropDown.Text = v
						Library.Flags[Flag] = v
						Callback(v)
					end)
				end
			end		
		end
		
		function Sections:AddPlayerList(Flags)
            local Flags = Flags or {}
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

            local DropDown = CreateObject("TextButton", {
				Parent = Section,
				BackgroundColor3 = Color3.fromRGB(58, 57, 57),
				BorderColor3 = Color3.fromRGB(48, 45, 45),
				BorderSizePixel = 2,
				Position = UDim2.new(0.0221774187, 0, 0.769230783, 0),
				Size = UDim2.new(0, 237, 0, 32),
				ZIndex = ZIndex,
				Font = Enum.Font.SourceSans,
				Text = Name,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 32.000,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left
            })

            local Indicator = CreateObject("TextLabel", {
				Parent = DropDown,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1.000,
				Position = UDim2.new(0.972761869, 0, 0.09375, 0),
				Size = UDim2.new(0, 25, 0, 25),
				ZIndex = 10,
				Font = Enum.Font.SourceSans,
				Text = ">",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextScaled = true,
				TextSize = 14.000,
			    TextWrapped = true
            })

            local DropDownPart = CreateObject("ScrollingFrame", {
				Parent = DropDown,
				Active = true,
				BackgroundColor3 = Color3.fromRGB(58, 57, 57),
				BorderColor3 = Color3.fromRGB(48, 45, 45),
				BorderSizePixel = 2,
				AutomaticCanvasSize = Enum.AutomaticSize.Y,
				Position = UDim2.new(0, -2, 1, 0),
				Size = UDim2.new(1, 22, 0, 0),
				ZIndex = 10,
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 8,
			    ScrollBarImageTransparency = 1
            })

            local UIListLayout = CreateObject("UIListLayout", {
				Parent = DropDownPart,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 5)
            })

            local UIPadding = CreateObject("UIPadding", {
				Parent = DropDown,
				PaddingLeft = UDim.new(0, 2),
				PaddingRight = UDim.new(0, 20)
            })
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
			
			local function SetText()
				if #Library.Flags[Flag] == 0 then
					DropDown.Text = Name
				end
				for i,v in pairs(Library.Flags[Flag]) do
					if i == 1 then
						DropDown.Text = v
					end
					DropDown.Text =  DropDown.Text .. ", " .. v
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

					local Toggled = false
                    
                    local Toggle = CreateObject("TextButton", {
						Parent = DropDownPart,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1.000,
						Position = UDim2.new(0.0201612897, 0, 0.355191261, 0),
						Size = UDim2.new(0, 238, 0, 32),
						Font = Enum.Font.SourceSans,
						Text = Player,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14.000,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left
                    })
                    
                    local Box = CreateObject("Frame", {
						Parent = Toggle,
						BackgroundColor3 = Color3.fromRGB(63, 62, 62),
						BorderColor3 = Color3.fromRGB(48, 45, 45),
						BorderSizePixel = 2,
						Position = UDim2.new(-0.129999995, 0, 0.187999994, 0),
						Size = UDim2.new(0, 20, 0, 20)
                    })
                    
                    local UIPadding = CreateObject("UIPadding", {
						Parent = Toggle,
						PaddingLeft = UDim.new(0, 30)
                    })

					Toggle.MouseButton1Click:Connect(function()
						if Toggled then
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(63, 62, 62)})
							table.remove(Library.Flags[Flag], table.find(Library.Flags[Flag], Player))
						else
							Tween(Box, "Sine", "InOut", 0.1, {BackgroundColor3 = Color3.fromRGB(197, 33, 33)})
							table.insert(Library.Flags[Flag], Player)
						end
						SetText()
						Toggled = not Toggled
						Callback(Player)
					end)

				else

                    local DropDownButton = CreateObject("TextButton", {
						Parent = DropDownPart,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1.000,
						Position = UDim2.new(0, 0, 0.358974367, 0),
						Size = UDim2.new(0, 238, 0, 32),
						ZIndex = 10,
						Font = Enum.Font.SourceSans,
						Text = Player,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14.000,
						TextWrapped = true,
						TextXAlignment = Enum.TextXAlignment.Left
                    })
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
            local Flags = Flags or {}
			local Color = Flags["Color"] or Color3.fromRGB(197,33,33)
			local Min = Flags["Min"] or 0
			local Max = Flags["Max"] or 100
			local Default = Flags["Default"] or Min
			if not (Default == Min) then
				Default = math.clamp(Flags["Default"], Min, Max)
			end
			
			local Name = Flags["Name"] or "Slider"
			local Flag = Flags["Flag"] or ""

			local function snap(number, factor)
				return math.floor(number/factor) * factor
			end
			
			local held = false
			local OldSize = snap((Default-Min)/Max, 1/Max)
			Library.Flags[Flag] = math.floor(Default)

            local SliderHolder = CreateObject("Frame", {
				Parent = Section,
				BackgroundColor3 = Color3.fromRGB(57, 57, 57),
				BorderColor3 = Color3.fromRGB(48, 45, 45),
				BorderSizePixel = 2,
				Position = UDim2.new(0.0221774187, 0, 0.582857132, 0),
				Size = UDim2.new(0, 237, 0, 32)
            })

            local SliderFill = CreateObject("Frame", {
				Parent = SliderHolder,
				BackgroundColor3 = Color3.fromRGB(197, 33, 33),
				BorderSizePixel = 0,
			    Size = UDim2.new(OldSize, 0, 1, 0)
            })

            local Slider = CreateObject("TextButton", {
				Parent = SliderFill,
				BackgroundColor3 = Color3.fromRGB(57, 57, 57),
				BackgroundTransparency = 1.000,
				BorderColor3 = Color3.fromRGB(48, 45, 45),
				BorderSizePixel = 2,
				Size = UDim2.new(0, 237, 0, 32),
				Font = Enum.Font.SourceSans,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextScaled = true,
				TextSize = 14.000,
				TextWrapped = true,
				Text = Name .. ": " .. tostring(Default)
            })

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
					local MousePos = UIS:GetMouseLocation().X -- Get The MousePosition
					local SliderSize = SliderHolder.AbsoluteSize.X -- Get The Slider Box Size
					local SliderPos = SliderHolder.AbsolutePosition.X -- Get The Slider Box Position
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
		local c -- Create c as its own variable without asigning it something, for accessing itself.
		c = RS.RenderStepped:Connect(function() -- Asign c a renderstepped connection
			Section.Size = UDim2.new(1, -6, 0, UIListLayout.AbsoluteContentSize.Y + 10) -- Readjust the size of the section
			if not Section.Parent then
				c:Disconnect() -- If the Section is parented to nil then Disconnect c.
			end
		end)
		return Sections -- return the table,  Sections
	end
	return Tabs -- return the table,  Tabs
end
return Library -- return the table,  Library
