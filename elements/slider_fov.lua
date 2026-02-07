return function(Tab)
    Tab:CreateSlider({
        Name = "FOV",
        Range = {10, 200},
        Increment = 1,
        CurrentValue = 70,
        Color = Color3.fromRGB(0, 255, 0), -- أخضر
        Callback = function(Value)
            print("FOV:", Value)
        end
    })
end
