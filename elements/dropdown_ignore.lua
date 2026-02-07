return function(Tab)
    local IgnoredPlayers = {
        ["C7x702"] = true,
        ["Ggggyyytthd"] = true,
        ["Astrog1_fan"] = true,
    }

    Tab:CreateDropdown({
        Name = "Ignore List",
        Options = {"Team","Friends"},
        CurrentOption = "Team",
        Color = Color3.fromRGB(255,165,0),
        Callback = function(Value)
            if Value == "Team" then
                IgnoredPlayers = {} -- مثال: تجاهل الفريق
            elseif Value == "Friends" then
                IgnoredPlayers = {} -- مثال: تجاهل الأصدقاء
            end
            print("Ignore List:", Value)
        end
    })
end
