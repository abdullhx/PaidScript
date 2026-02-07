return function(Tab)
    Tab:CreateDropdown({
        Name = "Ignore List",
        Options = {"Team", "Friends"},
        CurrentOption = "Team",
        Color = Color3.fromRGB(255, 165, 0), -- برتقالي
        Callback = function(Value)
            print("Ignore List Selected:", Value)
        end
    })
end
