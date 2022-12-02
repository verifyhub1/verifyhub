getgenv().SecureMode = true
local rocordUI = loadstring(game:HttpGet('https://rocord.dev/cdn/apps/rocordUI/loader'))()
local Window = rocordUI:CreateWindow({
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
       Invite = "nil",
       RememberJoins = true 
    },
    KeySystem = false,
    KeySettings = {
       Title = "VerifyHub",
       Subtitle = "Key System",
       Note = "nil",
       FileName = "Key",
       SaveKey = false,
       GrabKeyFromSite = false, 
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
                hat.Handle.Color = Color3.fromHex(Text)
            end
        end        
    end,
 })
 local Button = hatColor:CreateButton({
    Name = "Reset Color",
    Callback = function()
        for _, hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if hat:IsA("Accessory") then
                hat.Handle.Color = Color3.fromRGB(163, 162, 165)
            end
        end        
    end,
 })
