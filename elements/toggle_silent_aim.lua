return function(Tab)
    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Camera = workspace.CurrentCamera
    local LocalPlayer = Players.LocalPlayer
    local pg = LocalPlayer:WaitForChild("PlayerGui")

    local TargetGui = Instance.new("ScreenGui", pg)
    TargetGui.Name = "TargetGui"
    TargetGui.ResetOnSpawn = false
    TargetGui.Enabled = false

    local FireButtonGui = Instance.new("ScreenGui", pg)
    FireButtonGui.Name = "FireButtonGui"
    FireButtonGui.ResetOnSpawn = false
    FireButtonGui.Enabled = false

    local Circle = Instance.new("Frame", TargetGui)
    Circle.Size = UDim2.new(0, 200, 0, 200)
    Circle.AnchorPoint = Vector2.new(0.5, 0.5)
    Circle.BackgroundTransparency = 1
    local UIStroke = Instance.new("UIStroke", Circle)
    UIStroke.Thickness = 3
    UIStroke.Color = Color3.fromRGB(255, 255, 255)
    local UICorner = Instance.new("UICorner", Circle)
    UICorner.CornerRadius = UDim.new(1, 0)

    local FireButton = Instance.new("TextButton", FireButtonGui)
    FireButton.Size = UDim2.new(0, 70, 0, 70)
    FireButton.Position = UDim2.new(0.5, -50, 0.9, -50)
    FireButton.Text = "Fire"
    FireButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    FireButton.TextColor3 = Color3.new(1, 1, 1)
    FireButton.Font = Enum.Font.SourceSansBold
    FireButton.TextSize = 24
    local fireCorner = Instance.new("UICorner", FireButton)
    fireCorner.CornerRadius = UDim.new(0.5, 0)

    local active = false

    Tab:CreateToggle({
        Name = "Silent Aim",
        CurrentValue = false,
        Color = Color3.fromRGB(255,0,0),
        Callback = function(Value)
            active = Value
            TargetGui.Enabled = active
            FireButtonGui.Enabled = active
        end
    })
end
