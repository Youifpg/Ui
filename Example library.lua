-- Load the library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Youifpg/Ui/refs/heads/main/ToraIsMe.lua", true))()

-- Create windows
local Window = Library:CreateWindow("Main")
-- Add a button to toggle the library
Window:AddButton({
    text = "Example button",
    callback = function()
        print("example")
    end
})

-- Add options to the main window
Window:AddToggle({
    text = "Auto example",
    flag = "Aim",
    state = false,
    callback = function()
        print("hi")
    end
})

Window:AddLabel({
    text = "This is a sample text",
})

-- List of mobs
local Mobs = {"Goblin", "Orc", "Dragon", "Skeleton", "Vampire"}

Window:AddList({
    text = "Select a Mob",
    flag = "mobList",
    value = "::Select a Mob::",
    values = Mobs, -- you can put here
    callback = function(selectedMob)
        print("Selected mob:", selectedMob)
    end
})

-- Add slider for speed
Window:AddSlider({
    text = "Speed",
    flag = "PlayerSpeedSlider",
    value = 16,
    min = 16,
    max = 100,
    callback = function(value)

})

-- Add key bind
Window:AddBind({
    text = "Bind a key",
    key = "W",
    position = 2,
    hold = false,
    callback = function(value)
        print("Key pressed: " .. tostring(value))
    end
})

-- Assuming you already have a created window called 'Window'
Window:AddBox({
    text = "example",
    flag = "box",
    value = "example",
    callback = function(text)
     print("text")
   end
})

-- Add color picker
Window:AddColor({
    text = "Select a color",
    flag = "ColorPicker",
    color = {255, 0, 0}, -- Initial color (Red)
    callback = function(selectedColor)
        print("Selected color: " .. tostring(selectedColor))
        -- Logic to use the selected color
    end
})
