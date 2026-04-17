-- Pluto UI Example
-- Load the library from GitHub
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/BananaCatbeststaff/Pluto-UI/main/Init.lua"))()

-- Create a window
local Window = WindUI:CreateWindow({
    Title = "Pluto UI",
    Subtitle = "Example Script",
    Author = "Your Name",
    Size = UDim2.new(0, 580, 0, 460),
    Theme = "Dark",
    Transparent = false,
    Acrylic = false,
    MinSize = Vector2.new(500, 400),
    MaxSize = Vector2.new(800, 600),
})

-- Create a tab
local MainTab = Window:Tab({
    Title = "Main",
    Icon = "home"
})

-- Add a button
MainTab:Button({
    Title = "Click Me",
    Desc = "This is a button",
    Callback = function()
        print("Button clicked!")
        WindUI:Notify({
            Title = "Success",
            Content = "Button was clicked!",
            Duration = 3
        })
    end
})

-- Add a toggle
MainTab:Toggle({
    Title = "Toggle Example",
    Desc = "Enable or disable something",
    Default = false,
    Callback = function(value)
        print("Toggle is now:", value)
    end
})

-- Add a slider
MainTab:Slider({
    Title = "Slider Example",
    Desc = "Adjust a value",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Slider value:", value)
    end
})

-- Add an input
MainTab:Input({
    Title = "Input Example",
    Desc = "Enter some text",
    Placeholder = "Type here...",
    Callback = function(value)
        print("Input value:", value)
    end
})

-- Add a dropdown
MainTab:Dropdown({
    Title = "Dropdown Example",
    Desc = "Select an option",
    Multi = false,
    Options = {"Option 1", "Option 2", "Option 3"},
    Default = "Option 1",
    Callback = function(value)
        print("Selected:", value)
    end
})

-- Create another tab
local SettingsTab = Window:Tab({
    Title = "Settings",
    Icon = "settings"
})

-- Add a color picker
SettingsTab:Colorpicker({
    Title = "Color Picker",
    Desc = "Choose a color",
    Default = Color3.fromRGB(255, 0, 0),
    Callback = function(color)
        print("Selected color:", color)
    end
})

-- Add a keybind
SettingsTab:Keybind({
    Title = "Keybind Example",
    Desc = "Press a key",
    Default = Enum.KeyCode.E,
    Callback = function(key)
        print("Keybind set to:", key)
    end
})

-- Add a section divider
SettingsTab:Divider()

-- Add a paragraph
SettingsTab:Paragraph({
    Title = "About",
    Desc = "This is an example of Pluto UI library. It supports many UI elements and themes."
})

print("Pluto UI loaded successfully!")
