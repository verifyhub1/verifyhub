getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Window = Rayfield:CreateWindow({
    Name = "VerifyHub",
    LoadingTitle = "VerifyHub Loading...",
    LoadingSubtitle = "UI by rocord#0001 and scripts by Alexplayrus1#0746",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "VerifyHub", -- Create a custom folder for your hub/game
       FileName = "SavedConfig"
    },
    Discord = {
       Enabled = false,
       Invite = "sirius", -- The Discord invite code, do not include discord.gg/
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "VerifyHub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = false,
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = "Hello"
    }
 })
-- Create tabs

local safe = Window:CreateTab("Safe", 4483362458) -- Title, Image
local annoying = Window:CreateTab("Annoying", 4483362458) -- Title, Image
local chat = Window:CreateTab("Chat", 4483362458) -- Title, Image
local hatColor = Window:CreateTab("Hat Color", 4483362458) -- Title, Image
local misc = Window:CreateTab("Misc", 4483362458) -- Title, Image


-- Hat Color


local hatColorPara1 = hatColor:CreateParagraph({Title = "Information", Content = "Hat Color is client only meaning only you can see it, and other players will see it as the default roblox item."})
local hatColorInput1 = hatColor:CreateInput({
    Name = "Hat Color (Hex)",
    PlaceholderText = "#ffffff",
    RemoveTextAfterFocusLost = false,
    Callback = function(Text)
        for _, hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if hat:IsA("Accessory") then
                hat.Handle.Color = Text
            end
        end        
    end,
 })
 local Button = Tab:CreateButton({
    Name = "Reset Color",
    Callback = function()
        for _, hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if hat:IsA("Accessory") then
                hat.Handle.Color = Color3.fromRGB(163, 162, 165)
            end
        end        
    end,
 })
