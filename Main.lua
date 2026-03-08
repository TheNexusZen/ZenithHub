local ALLOWED_USERS = {"nexushubtesting", "SAB88191", "seventeenlovesyouw"}
local REQUIRED_ID = 109983668079237
local Player = game:GetService("Players").LocalPlayer

local function isAllowed()
    for _, name in ipairs(ALLOWED_USERS) do
        if Player.Name == name then
            return true
        end
    end
    return false
end

if game.PlaceId ~= REQUIRED_ID and not isAllowed() then
    Player:Kick("Unauthorized")
    return
end

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
    
    User = {
        Enabled = true,
        Anonymous = true,
        Callback = function()
            print("hello")
        end
    },

})

-- SCRIPT LOADSTRINGS
getgenv().Scripts = {
    ESPbrainrot = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ESPbrainrot.lua"))() end,
    ESPplayer = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ESPplayer.lua"))() end,
    FPSd = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/FPSd.lua"))() end,
    ZHBooster = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHBooster.lua"))() end,
    ZHal = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHal.lua"))() end,
    ZHautograb = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHautograb.lua"))() end,
    ZHautokick = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHautokick.lua"))() end,
    ZHclone = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHclone.lua"))() end,
    ZHupfloorsteal = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHupfloorsteal.lua"))() end,
    ZHxray = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/TheNexusZen/ZenithHub/refs/heads/main/ZHxray.lua"))() end
}

-- EXECUTION LIST
Scripts.ESPbrainrot()
Scripts.ESPplayer()
Scripts.FPSd()
Scripts.ZHBooster()
Scripts.ZHal()
Scripts.ZHautograb()
Scripts.ZHautokick()
Scripts.ZHclone()
Scripts.ZHupfloorsteal()
Scripts.ZHxray()

local developers = {"nexushubtesting", "SAB88191", "seventeenlovesyouw"}

local Player = game:GetService("Players").LocalPlayer

local function tableHas(tbl, name)
    for _, v in ipairs(tbl) do
        if v == name then return true end
    end
    return false
end

local isDev = tableHas(developers, Player.Name)

if isDev then
    Window:Tag({
        Title = "Developer",
        Icon = "shield-check",
        Color = Color3.fromHex("#ff3030"),
        Radius = 5,
    })
end

Window:Tag({
    Title = "v1.0.0",
    Icon = "check",
    Color = Color3.fromHex("#30ff6a"),
    Radius = 3,
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

--[[ EXECUTION LIST
Scripts.ESPbrainrot()
Scripts.ESPplayer()
Scripts.FPSd()
-- Scripts.ZHBooster()
-- Scripts.ZHal()
-- Scripts.ZHautograb()
Scripts.ZHautokick()
-- Scripts.ZHclone()
-- Scripts.ZHupfloorsteal()
Scripts.ZHxray() ]]

local booster = Features:Toggle({
    Title = "Booster",
    Desc = "Toggle Booster",
    Icon = "chevrons-up",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
        if state then
                Scripts.ZHBooster()
    end
})

local autograb = Features:Toggle({
    Title = "Auto grab",
    Desc = "Toggle Auto grab",
    Icon = "hand-grab",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
        Scripts.ZHautograb()
    end
})

local Autokick = Features:Toggle({
    Title = "Auto kick",
    Desc = "Toggle Auto kick",
    Icon = "hand-grab",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
        _G.AKT = state
    end
})

local autoclone = Features:Toggle({
    Title = "Auto clone",
    Desc = "Toggle Auto clone",
    Icon = "hand-grab",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
        Scripts.ZHclone()
    end
})

local xray = Features:Toggle({
    Title = "xray",
    Desc = "Toggle xray",
    Icon = "hand-grab",
    Type = "Checkbox",
    Value = false,
    Callback = function(state) 
        _G.XRM = state
    end
})

local XrayT = Features:Slider({
    Title = "Xray Transparency",
    Desc = "Slider Description",
    Step = 0.1,
    Value = {
        Min = 0,
        Max = 1,
        Default = 0.6,
    },
    Callback = function(value)
        _G.XRT = value
    end
})
