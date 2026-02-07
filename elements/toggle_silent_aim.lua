return function(Tab)
    Tab:CreateToggle({
        Name = "Silent Aim",
        CurrentValue = false,
        Color = Color3.fromRGB(255, 0, 0), -- أحمر
        Callback = function(Value)
            print("Silent Aim:", Value)
        end
    })
end
