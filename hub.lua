local Core = Instance.new("ScreenGui")
Core.Name = "Core"
Core.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Core.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- // Main UI Construction // --

local Background = Instance.new("Frame")
Background.Name = "Background"
Background.AnchorPoint = Vector2.new(0.5, 0.5)
Background.Position = UDim2.new(0.5, 0, 0.5, 0)
Background.Size = UDim2.new(0.4, 0, 0.4, 0)
Background.BackgroundTransparency = 1
Background.Parent = Core

local Group = Instance.new("CanvasGroup")
Group.Name = "Group"
Group.AnchorPoint = Vector2.new(0.5, 0.5)
Group.Position = UDim2.new(0.5, 0, 0.5, 0)
Group.Size = UDim2.new(1, 0, 1, 0)
Group.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Group.BorderSizePixel = 0
Group.Parent = Background

Instance.new("UICorner", Group)

local accent = Instance.new("Frame")
accent.Name = "accent"
accent.Size = UDim2.new(0.02, 0, 1, 0)
accent.BackgroundColor3 = Color3.fromRGB(180, 60, 50)
accent.BorderSizePixel = 0
accent.Parent = Group

local CloseButton = Instance.new("TextButton")
CloseButton.Name = "CloseButton"
CloseButton.Text = "X"
CloseButton.Size = UDim2.new(0, 50, 0, 50)
CloseButton.AnchorPoint = Vector2.new(1, 0)
CloseButton.Position = UDim2.new(1, 25, 0, -25)
CloseButton.TextColor3 = Color3.fromRGB(180, 60, 50)
CloseButton.BackgroundTransparency = 1
CloseButton.TextSize = 60
CloseButton.FontFace = Font.new("rbxasset://fonts/families/Jura.json", Enum.FontWeight.Bold)
CloseButton.Parent = Background

Instance.new("UICorner", CloseButton)

local Container = Instance.new("Frame")
Container.Name = "Container"
Container.AnchorPoint = Vector2.new(0.5, 0.5)
Container.Position = UDim2.new(0.5, 0, 0.5, 0)
Container.Size = UDim2.new(1, 0, 1, 0)
Container.BackgroundTransparency = 1
Container.ZIndex = 2
Container.Parent = Background

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 10)
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Container

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 50)
UIPadding.PaddingBottom = UDim.new(0, 10)
UIPadding.PaddingLeft = UDim.new(0, 20)
UIPadding.PaddingRight = UDim.new(0, 20)
UIPadding.Parent = Container

-- Function to create a new Row
local function AddRow(name)
    local Row = Instance.new("Frame")
    Row.Name = name or "Row"
    Row.BackgroundTransparency = 1
    Row.Size = UDim2.new(0.2, 0, 1, 0)
    Row.Parent = Container
    
    local List = Instance.new("UIListLayout")
    List.Padding = UDim.new(0, 10)
    List.SortOrder = Enum.SortOrder.LayoutOrder
    List.Parent = Row
    
    return Row
end

-- Function to create a Button and return the object
local function AddButton(row, text)
    local Button = Instance.new("TextButton")
    Button.Name = text -- This allows you to find it by name
    Button.Text = text
    Button.Size = UDim2.new(1, 0, 0.1, 0)
    Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextScaled = true
    Button.FontFace = Font.new("rbxasset://fonts/families/RobotoMono.json")
    Button.Parent = row
    
    Instance.new("UICorner", Button)
    
    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(164, 55, 45)
    UIStroke.Thickness = 2
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.Parent = Button

    -- Hover Effects
    Button.MouseEnter:Connect(function()
        Button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    end)
    Button.MouseLeave:Connect(function()
        Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end)
    
    return Button -- Returning the button so you can connect to it later
end

CloseButton.MouseButton1Click:Connect(function()
    Core:Destroy()
end)


--[[
local row1 = AddRow("row1")
local placeholder = AddButton(row1, "placeholder")
placeholder.MouseButton1Click:Connect(function()

end)
]]

local row1 = AddRow("row1")
local Infyield = AddButton(row1, "Infinity Yield")
local ring = AddButton(row1, "Super Ring Parts")
local nofall = AddButton(row1, "NoFall")

Infyield.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
ring.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Papierek12/scripts/refs/heads/main/super-ring-parts.lua"))()
end)
nofall.MouseButton1Click:Connect(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Papierek12/scripts/refs/heads/main/nofall.lua"))()
end)
