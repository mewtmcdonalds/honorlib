--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

local G2L = {};

-- StarterGui.HonorUILib
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[HonorUILib]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

-- StarterGui.HonorUILib.Templates
G2L["2"] = Instance.new("Folder", G2L["1"]);
G2L["2"]["Name"] = [[Templates]];
G2L["2"].Parent = nil

-- StarterGui.HonorUILib.Templates.ToggleTemplate
G2L["3"] = Instance.new("TextButton", G2L["2"]);
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["AutoButtonColor"] = false;
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["3"]["TextSize"] = 14;
G2L["3"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["3"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Size"] = UDim2.new(1, 0, 0, 32);
G2L["3"]["Name"] = [[ToggleTemplate]];
G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Text"] = [[]];

-- StarterGui.HonorUILib.Templates.ToggleTemplate.UICorner
G2L["4"] = Instance.new("UICorner", G2L["3"]);
G2L["4"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.HonorUILib.Templates.ToggleTemplate.UIStroke
G2L["5"] = Instance.new("UIStroke", G2L["3"]);
G2L["5"]["Transparency"] = 0.5;
G2L["5"]["Color"] = Color3.fromRGB(46, 46, 46);

-- StarterGui.HonorUILib.Templates.ToggleTemplate.Box
G2L["6"] = Instance.new("Frame", G2L["3"]);
G2L["6"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["6"]["BorderSizePixel"] = 0;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["6"]["Position"] = UDim2.new(1, -8, 0.5, 0);
-- Changed Size to offset to match your previous design
G2L["6"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6"]["Name"] = [[Box]];

-- StarterGui.HonorUILib.Templates.ToggleTemplate.Box.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);
G2L["7"]["CornerRadius"] = UDim.new(0, 2);

-- StarterGui.HonorUILib.Templates.ToggleTemplate.Box.Inner
G2L["8"] = Instance.new("Frame", G2L["6"]);
G2L["8"]["BorderSizePixel"] = 0;
G2L["8"]["BackgroundColor3"] = Color3.fromRGB(0, 171, 255);
G2L["8"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8"]["Visible"] = false;
G2L["8"]["Name"] = [[Inner]];

-- StarterGui.HonorUILib.Templates.ToggleTemplate.Box.Inner.UICorner
G2L["9"] = Instance.new("UICorner", G2L["8"]);
G2L["9"]["CornerRadius"] = UDim.new(0, 2);

-- StarterGui.HonorUILib.Templates.ToggleTemplate.Label
G2L["a"] = Instance.new("TextLabel", G2L["3"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a"]["TextSize"] = 13;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Toggle Name]];
G2L["a"]["Name"] = [[Label]];
G2L["a"]["BackgroundTransparency"] = 1;

-- StarterGui.HonorUILib.Templates.ToggleTemplate.Label.UIPadding
G2L["b"] = Instance.new("UIPadding", G2L["a"]);
G2L["b"]["PaddingLeft"] = UDim.new(0, 10);

-- StarterGui.HonorUILib.Templates.TabTemplate
G2L["c"] = Instance.new("TextButton", G2L["2"]);
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["c"]["TextSize"] = 13;
G2L["c"]["TextColor3"] = Color3.fromRGB(201, 201, 201);
G2L["c"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["c"]["Name"] = [[TabTemplate]];
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Tab Name]];
G2L["c"]["BackgroundTransparency"] = 1;

-- StarterGui.HonorUILib.Templates.TabTemplate.UIPadding
G2L["d"] = Instance.new("UIPadding", G2L["c"]);
G2L["d"]["PaddingLeft"] = UDim.new(0, 32);

-- StarterGui.HonorUILib.Templates.TabTemplate.Indicator
G2L["e"] = Instance.new("Frame", G2L["c"]);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["Position"] = UDim2.new(0, -36, 0.5, 0);
G2L["e"]["Visible"] = false;
G2L["e"]["Size"] = UDim2.new(0, 2, 0, 20);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[Indicator]];

-- StarterGui.HonorUILib.Templates.TabTemplate.ImageLabel
G2L["f"] = Instance.new("ImageLabel", G2L["c"]);
G2L["f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["ImageTransparency"] = 0.2;
G2L["f"]["Image"] = [[rbxassetid://6031094678]];
G2L["f"]["Position"] = UDim2.new(0, -22, 0.5, 0);
G2L["f"]["Size"] = UDim2.new(0, 16, 0, 16);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["BackgroundTransparency"] = 1;

-- StarterGui.HonorUILib.Templates.ButtonTemplate
G2L["10"] = Instance.new("TextButton", G2L["2"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["10"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["10"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["10"]["TextSize"] = 13;
G2L["10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["Size"] = UDim2.new(1, 0, 0, 32);
G2L["10"]["Name"] = [[ButtonTemplate]];
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Text"] = [[Button Name]];

-- StarterGui.HonorUILib.Templates.ButtonTemplate.UICorner
G2L["11"] = Instance.new("UICorner", G2L["10"]);
G2L["11"]["CornerRadius"] = UDim.new(0, 4);

-- StarterGui.HonorUILib.Templates.ButtonTemplate.UIPadding
G2L["12"] = Instance.new("UIPadding", G2L["10"]);
G2L["12"]["PaddingLeft"] = UDim.new(0, 10);

-- StarterGui.HonorUILib.Templates.ButtonTemplate.UIStroke
G2L["13"] = Instance.new("UIStroke", G2L["10"]);
G2L["13"]["Transparency"] = 0.5;
G2L["13"]["Color"] = Color3.fromRGB(46, 46, 46);

-- StarterGui.HonorUILib.Templates.LabelTemplate
G2L["14"] = Instance.new("TextLabel", G2L["2"]);
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["14"]["TextSize"] = 14;
G2L["14"]["TextColor3"] = Color3.fromRGB(181, 181, 181);
G2L["14"]["Size"] = UDim2.new(1, 0, 0, 25);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[Label Name]];
G2L["14"]["Name"] = [[LabelTemplate]];
G2L["14"]["BackgroundTransparency"] = 1;

-- StarterGui.HonorUILib.Templates.LabelTemplate.UIPadding
G2L["15"] = Instance.new("UIPadding", G2L["14"]);
G2L["15"]["PaddingLeft"] = UDim.new(0, 10);

-- StarterGui.HonorUILib.MainFrame
G2L["18"] = Instance.new("Frame", G2L["1"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["18"]["Position"] = UDim2.new(0, 523, 0, 280);
G2L["18"]["Size"] = UDim2.new(0, 390, 0, 320);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["Name"] = [[MainFrame]];

-- StarterGui.HonorUILib.MainFrame.Pages
G2L["19"] = Instance.new("Folder", G2L["18"]);
G2L["19"]["Name"] = [[Pages]];

-- StarterGui.HonorUILib.MainFrame.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["18"]);
G2L["1a"]["CornerRadius"] = UDim.new(0, 8);

-- StarterGui.HonorUILib.MainFrame.HorizontalLine
G2L["1b"] = Instance.new("Frame", G2L["18"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
G2L["1b"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["1b"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[HorizontalLine]];

-- StarterGui.HonorUILib.MainFrame.VerticalLine
G2L["1c"] = Instance.new("Frame", G2L["18"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(46, 46, 46);
G2L["1c"]["Position"] = UDim2.new(0, 108, 0, 41);
G2L["1c"]["Size"] = UDim2.new(0, 1, 1, -41);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[VerticalLine]];

-- StarterGui.HonorUILib.MainFrame.SideBar
G2L["1d"] = Instance.new("Frame", G2L["18"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["1d"]["Position"] = UDim2.new(0, 0, 0, 41);
G2L["1d"]["Size"] = UDim2.new(0, 108, 1, -41);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Name"] = [[SideBar]];

-- StarterGui.HonorUILib.MainFrame.SideBar.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1d"]);
G2L["1e"]["CornerRadius"] = UDim.new(0, 8);

-- StarterGui.HonorUILib.MainFrame.SideBar.UIListLayout
G2L["1f"] = Instance.new("UIListLayout", G2L["1d"]);
G2L["1f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

-- StarterGui.HonorUILib.MainFrame.SideBar.UIPadding
G2L["20"] = Instance.new("UIPadding", G2L["1d"]);
G2L["20"]["PaddingTop"] = UDim.new(0, 5);

-- StarterGui.HonorUILib.MainFrame.TopBar
G2L["21"] = Instance.new("Frame", G2L["18"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Name"] = [[TopBar]];
G2L["21"]["BackgroundTransparency"] = 1;

-- StarterGui.HonorUILib.MainFrame.TopBar.TextLabel
G2L["22"] = Instance.new("TextLabel", G2L["21"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["22"]["TextSize"] = 16;
G2L["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["Size"] = UDim2.new(1, -100, 1, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Text"] = [[Honor Admin Hub]];
G2L["22"]["BackgroundTransparency"] = 1;

-- StarterGui.HonorUILib.MainFrame.TopBar.TextLabel.UIPadding
G2L["23"] = Instance.new("UIPadding", G2L["22"]);
G2L["23"]["PaddingLeft"] = UDim.new(0, 15);


-- Logic Module
-- Logic Module
G2L["logic"] = function()
	local Lib = {}
	Lib.__index = Lib

	local UserInputService = game:GetService("UserInputService")

	function Lib.new(title)
		local self = setmetatable({}, Lib)

		self.Gui = G2L["1"]
		self.Main = G2L["18"]
		self.Templates = G2L["2"]
		self.Pages = G2L["19"]
		self.Sidebar = G2L["1d"]

		G2L["22"].Text = title

		-- Dragging
		local dragging, dragStart, startPos

		self.Main.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				dragStart = input.Position
				startPos = self.Main.Position
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
				local delta = input.Position - dragStart
				self.Main.Position = UDim2.new(
					startPos.X.Scale,
					startPos.X.Offset + delta.X,
					startPos.Y.Scale,
					startPos.Y.Offset + delta.Y
				)
			end
		end)

		UserInputService.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = false
			end
		end)

		return self
	end

	function Lib:CreateTab(name)
		local Library = self -- 🔥 IMPORTANT FIX

		local tabBtn = Library.Templates.TabTemplate:Clone()
		tabBtn.Text = name
		tabBtn.Parent = Library.Sidebar
		tabBtn.Visible = true

		local page = Instance.new("ScrollingFrame")
		page.Name = name .. "_Page"
		page.Size = UDim2.new(1, -125, 1, -55)
		page.Position = UDim2.new(0, 115, 0, 45)
		page.BackgroundTransparency = 1
		page.ScrollBarThickness = 2
		page.Visible = false
		page.Parent = Library.Pages
		page.CanvasSize = UDim2.new(0, 0, 0, 0)
		page.AutomaticCanvasSize = Enum.AutomaticSize.Y

		local layout = Instance.new("UIListLayout", page)
		layout.Padding = UDim.new(0, 6)
		layout.SortOrder = Enum.SortOrder.LayoutOrder

		local padding = Instance.new("UIPadding", page)
		padding.PaddingLeft = UDim.new(0, 10)
		padding.PaddingTop = UDim.new(0, 5)

		tabBtn.MouseButton1Click:Connect(function()
			for _, p in pairs(Library.Pages:GetChildren()) do
				p.Visible = false
			end
			for _, t in pairs(Library.Sidebar:GetChildren()) do
				if t:IsA("TextButton") then
					t.TextColor3 = Color3.fromRGB(201, 201, 201)
					if t:FindFirstChild("Indicator") then
						t.Indicator.Visible = false
					end
				end
			end

			page.Visible = true
			tabBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
			if tabBtn:FindFirstChild("Indicator") then
				tabBtn.Indicator.Visible = true
			end
		end)

		local TabMethods = {}

		function TabMethods:CreateButton(text, callback)
			local b = Library.Templates.ButtonTemplate:Clone()
			b.Text = text
			b.Position = UDim2.new(0, 0, 0, 0) -- 🔥 stop flying
			b.Parent = page
			b.Visible = true
			b.MouseButton1Click:Connect(callback)
		end

		function TabMethods:CreateToggle(text, callback)
			local t = Library.Templates.ToggleTemplate:Clone()
			t.Label.Text = text
			t.Position = UDim2.new(0, 0, 0, 0) -- 🔥 stop flying
			t.Parent = page
			t.Visible = true

			local enabled = false
			t.MouseButton1Click:Connect(function()
				enabled = not enabled
				t.Box.Inner.Visible = enabled
				callback(enabled)
			end)
		end

		function TabMethods:CreateLabel(text)
			local l = Library.Templates.LabelTemplate:Clone()
			l.Text = text
			l.Position = UDim2.new(0, 0, 0, 0) -- 🔥 stop flying
			l.Parent = page
			l.Visible = true
			return l
		end

		return TabMethods
	end

	return Lib
end

-- Start Execution
local Library = G2L["logic"]()
return Library
