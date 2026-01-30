--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP
]=]

local G2L = {}

-- ScreenGui
G2L["1"] = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
G2L["1"].Name = "HonorUILib"
G2L["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- Templates (HIDDEN)
G2L["2"] = Instance.new("Folder")
G2L["2"].Name = "Templates"
G2L["2"].Parent = nil

-- Toggle Template
G2L["3"] = Instance.new("TextButton", G2L["2"])
G2L["3"].Size = UDim2.new(1,0,0,32)
G2L["3"].BackgroundColor3 = Color3.fromRGB(36,36,36)
G2L["3"].Text = ""
G2L["3"].Name = "ToggleTemplate"
G2L["3"].BorderSizePixel = 0

Instance.new("UICorner", G2L["3"]).CornerRadius = UDim.new(0,4)
Instance.new("UIStroke", G2L["3"]).Color = Color3.fromRGB(46,46,46)

local box = Instance.new("Frame", G2L["3"])
box.Name = "Box"
box.Size = UDim2.new(0,16,0,16)
box.Position = UDim2.new(1,-8,0.5,0)
box.AnchorPoint = Vector2.new(1,0.5)
box.BackgroundColor3 = Color3.fromRGB(51,51,51)
box.BorderSizePixel = 0
Instance.new("UICorner", box).CornerRadius = UDim.new(0,2)

local inner = Instance.new("Frame", box)
inner.Name = "Inner"
inner.Size = UDim2.new(1,0,1,0)
inner.Visible = false
inner.BackgroundColor3 = Color3.fromRGB(0,171,255)
inner.BorderSizePixel = 0
Instance.new("UICorner", inner).CornerRadius = UDim.new(0,2)

local tLabel = Instance.new("TextLabel", G2L["3"])
tLabel.Name = "Label"
tLabel.Size = UDim2.new(1,0,1,0)
tLabel.TextXAlignment = Enum.TextXAlignment.Left
tLabel.BackgroundTransparency = 1
tLabel.TextColor3 = Color3.new(1,1,1)
tLabel.Font = Enum.Font.GothamMedium
tLabel.TextSize = 13
Instance.new("UIPadding", tLabel).PaddingLeft = UDim.new(0,10)

-- Button Template
G2L["10"] = Instance.new("TextButton", G2L["2"])
G2L["10"].Name = "ButtonTemplate"
G2L["10"].Size = UDim2.new(1,0,0,32)
G2L["10"].BackgroundColor3 = Color3.fromRGB(36,36,36)
G2L["10"].TextXAlignment = Enum.TextXAlignment.Left
G2L["10"].Font = Enum.Font.GothamMedium
G2L["10"].TextSize = 13
G2L["10"].TextColor3 = Color3.new(1,1,1)
G2L["10"].BorderSizePixel = 0
Instance.new("UICorner", G2L["10"]).CornerRadius = UDim.new(0,4)
Instance.new("UIPadding", G2L["10"]).PaddingLeft = UDim.new(0,10)
Instance.new("UIStroke", G2L["10"]).Color = Color3.fromRGB(46,46,46)

-- Label Template
G2L["14"] = Instance.new("TextLabel", G2L["2"])
G2L["14"].Name = "LabelTemplate"
G2L["14"].Size = UDim2.new(1,0,0,25)
G2L["14"].TextXAlignment = Enum.TextXAlignment.Left
G2L["14"].Font = Enum.Font.GothamMedium
G2L["14"].TextSize = 14
G2L["14"].TextColor3 = Color3.fromRGB(181,181,181)
G2L["14"].BackgroundTransparency = 1
Instance.new("UIPadding", G2L["14"]).PaddingLeft = UDim.new(0,10)

-- Main Frame
G2L["18"] = Instance.new("Frame", G2L["1"])
G2L["18"].Size = UDim2.new(0,390,0,320)
G2L["18"].Position = UDim2.new(0.5,-195,0.5,-160)
G2L["18"].BackgroundColor3 = Color3.fromRGB(26,26,26)
G2L["18"].BorderSizePixel = 0
Instance.new("UICorner", G2L["18"]).CornerRadius = UDim.new(0,8)

-- TopBar
local top = Instance.new("Frame", G2L["18"])
top.Size = UDim2.new(1,0,0,40)
top.BackgroundTransparency = 1

local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(1,-60,1,0)
title.TextXAlignment = Left
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Text = "Honor Admin Hub"
Instance.new("UIPadding", title).PaddingLeft = UDim.new(0,15)

-- Close Button
local close = Instance.new("TextButton", top)
close.Text = "✕"
close.Size = UDim2.new(0,30,0,30)
close.Position = UDim2.new(1,-35,0.5,-15)
close.BackgroundTransparency = 1
close.TextColor3 = Color3.fromRGB(200,200,200)
close.Font = Enum.Font.GothamBold
close.TextSize = 16
close.MouseButton1Click:Connect(function()
	G2L["1"]:Destroy()
end)

-- Sidebar
local sidebar = Instance.new("Frame", G2L["18"])
sidebar.Position = UDim2.new(0,0,0,41)
sidebar.Size = UDim2.new(0,108,1,-41)
sidebar.BackgroundColor3 = Color3.fromRGB(26,26,26)
sidebar.BorderSizePixel = 0
Instance.new("UIListLayout", sidebar).Padding = UDim.new(0,4)
Instance.new("UIPadding", sidebar).PaddingTop = UDim.new(0,5)

-- Pages
local pages = Instance.new("Folder", G2L["18"])
pages.Name = "Pages"

-- LOGIC
local Library = {}
Library.__index = Library

function Library.new(name)
	title.Text = name
	return setmetatable({
		Main = G2L["18"],
		Sidebar = sidebar,
		Pages = pages,
		Templates = G2L["2"]
	}, Library)
end

function Library:CreateTab(name)
	local tabBtn = Instance.new("TextButton", self.Sidebar)
	tabBtn.Text = name
	tabBtn.Size = UDim2.new(1,0,0,30)
	tabBtn.BackgroundTransparency = 1
	tabBtn.TextColor3 = Color3.fromRGB(201,201,201)
	tabBtn.Font = Enum.Font.GothamMedium
	tabBtn.TextSize = 13

	local page = Instance.new("ScrollingFrame", self.Pages)
	page.Size = UDim2.new(1,-125,1,-55)
	page.Position = UDim2.new(0,115,0,45)
	page.CanvasSize = UDim2.new(0,0,0,0)
	page.AutomaticCanvasSize = Enum.AutomaticSize.Y
	page.ScrollBarThickness = 2
	page.BackgroundTransparency = 1
	page.Visible = false
	Instance.new("UIListLayout", page).Padding = UDim.new(0,6)
	Instance.new("UIPadding", page).PaddingTop = UDim.new(0,5)

	tabBtn.MouseButton1Click:Connect(function()
		for _,p in pairs(self.Pages:GetChildren()) do p.Visible = false end
		page.Visible = true
	end)

	local Tab = {}

	function Tab:CreateButton(text, cb)
		local b = self.Templates.ButtonTemplate:Clone()
		b.Text = text
		b.Parent = page
		b.Visible = true

		local icon = Instance.new("ImageLabel", b)
		icon.Image = "rbxassetid://6031280882"
		icon.Size = UDim2.new(0,16,0,16)
		icon.AnchorPoint = Vector2.new(1,0.5)
		icon.Position = UDim2.new(1,-10,0.5,0)
		icon.BackgroundTransparency = 1

		b.MouseButton1Click:Connect(cb)
	end

	function Tab:CreateToggle(text, cb)
		local t = self.Templates.ToggleTemplate:Clone()
		t.Label.Text = text
		t.Parent = page
		t.Visible = true

		local on = false
		t.MouseButton1Click:Connect(function()
			on = not on
			t.Box.Inner.Visible = on
			cb(on)
		end)
	end

	function Tab:CreateLabel(text)
		local l = self.Templates.LabelTemplate:Clone()
		l.Text = text
		l.Parent = page
		l.Visible = true
	end

	return Tab
end

return Library
