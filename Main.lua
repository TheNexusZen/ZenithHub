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
        Window.Icon:SetAnonymous(Not User.Anonymous)
        local state = User.Anonymous and "Enabled" or "Disabled"
        WindUI:Notify({
            Title = "Anonymous Mode",
            Content = "Anonymous mode is now " .. state,
            Duration = 3,
            Icon = "user-round-cog",
        })
        
        print("Clicked! Anonymous is now: " .. tostring(User.Anonymous))
    end,
},

})
