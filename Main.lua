-- loadstrings --
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHBooster.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHautograb.lua"))()

local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

WindUI:AddTheme({
    Name = "Blue", -- theme name
    
    Accent = Color3.fromHex("#18181b"),
    Background = Color3.fromHex("#101010"), -- Accent
    Outline = Color3.fromHex("#FFFFFF"),
    Text = Color3.fromHex("#FFFFFF"),
    Placeholder = Color3.fromHex("#7a7a7a"),
    Button = Color3.fromHex("#52525b"),
    Icon = Color3.fromHex("#a1a1aa"),
})

WindUI:SetTheme("Blue")

local Window = WindUI:CreateWindow({
    Title = "Zenith HUB",
    Icon = "app-window-mac",
    Author = "by NEXUSZENITH",
    Folder = "ZenithHub",
    Size = UDim2.fromOffset(580, 460),
    MinSize = Vector2.new(560, 350),
    MaxSize = Vector2.new(850, 560),
    Transparent = true,
    Theme = "Blue",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = false,
    ScrollBarEnabled = false,
    NewElements = true,
    User = {
    Enabled = true,
    Anonymous = true,
    Callback =
            print("hello")
},


})

Window:EditOpenButton({
    Title = "Open Zenith Hub",
    Icon = "monitor",
    CornerRadius = UDim.new(0,16),
    StrokeThickness = 2,
    Color = ColorSequence.new( -- gradient
        Color3.fromHex("00C8FF"), 
        Color3.fromHex("FFFFFF")
    ),
    OnlyMobile = false,
    Enabled = true,
    Draggable = false,
})

local Features = Window:Tab({
    Title = "Features",
    Icon = "blocks", -- optional
    Locked = false,
})

local ESP = Window:Tab({
    Title = "ESP",
    Icon = "eye", -- optional
    Locked = false,
})

local Settings = Window:Tab({
    Title = "Settings",
    Icon = "cog", -- optional
    Locked = false,
})

-- Features Tab

local Booster = Features:Toggle({
    Title = "Booster",
    Desc = "Toggle Booster",
    Icon = "chevrons-up",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHBooster.lua"))()
    end
})

local Booster = Features:Toggle({
    Title = "Autograb",
    Desc = "Toggle Autograb",
    Icon = "hand-grab",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHautograb.lua"))()
    end
})
