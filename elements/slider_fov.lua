return function(Tab)
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    local pg = LocalPlayer:WaitForChild("PlayerGui")
    local TargetGui = pg:FindFirstChild("TargetGui")
    if not TargetGui then return end
    local Circle = TargetGui:FindFirstChildWhichIsA("Frame")
    if not Circle then return end

    local FOV = 200

    Tab:CreateSlider({
        Name = "FOV",
        Range = {50,200},
        Increment = 1,
        CurrentValue = FOV,
        Color = Color3.fromRGB(0,255,0),
        Callback = function(Value)
            FOV = Value
            Circle.Size = UDim2.new(0, FOV, 0, FOV)
        end
    })
end
