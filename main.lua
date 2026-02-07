-- تحميل مكتبة Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- إنشاء النافذة
local Window = Rayfield:CreateWindow({
    Name = "A7xDev",
    LoadingTitle = "جارٍ التحميل...",
    LoadingSubtitle = "A7xDev UI",
    ConfigurationSaving = { Enabled = false },
    Color = Color3.fromRGB(50, 150, 255) -- لون النافذة أزرق سماوي
})

-- تحميل الواجهة الأولى Silent Aim
local Tab1 = Window:CreateTab("Silent Aim")

loadstring(game:HttpGet("https://raw.githubusercontent.com/USERNAME/REPO/main/tabs/silent_aim.lua"))()(Tab1)
