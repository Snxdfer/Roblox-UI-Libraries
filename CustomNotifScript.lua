local Notify = loadstring(game:HttpGet("https://raw.githubusercontent.com/Snxdfer/back-ups-for-libs/refs/heads/main/CustomNotifScript_ByMe.lua"))()
-- rbxassetid Icons: https://raw.githubusercontent.com/Snxdfer/Roblox-UI-Libraries/refs/heads/main/rbxassetidIcons.lua

Notify:MakeNotification({
    Name = "Error",
    Content = "Error fetching script.",
    Time = 10,
    Image = "rbxassetid://10709753149",
    SoundId = "rbxassetid://94922572272481",
    Volume = 3
})

Notify:MakeNotification({
    Name = "Success",
    Content = "Script loaded successfully.",
    Time = 5,
    Image = "rbxassetid://10747374131",
    SoundId = "rbxassetid://137955043051820",
    Volume = 1
})
