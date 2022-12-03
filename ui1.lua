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
       Enabled = true,
       Invite = "SjSgvxNNtE",
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

local safe = Window:CreateTab("Safe", 4335489513) -- Title, Image
local annoying = Window:CreateTab("Annoying", 3944693371) -- Title, Image
local chat = Window:CreateTab("Chat", 4370314188) -- Title, Image
local hatColor = Window:CreateTab("Hat Color", 6961018885) -- Title, Image
local misc = Window:CreateTab("Misc", 4483364237) -- Title, Image


-- Safe


local safePara1 = safe:CreateParagraph({Title = "Welcum", Content = "Welcome to VerifyHub"})
local safePara2 = safe:CreateParagraph({Title = "AlexVR", Content = "a fake vr script, hold mouse to raise your hand, press g to dance, c to crouch and t to climb things up, enjoy!"})
local safeButton1 = safe:CreateButton({
    Name = "Execute AlexVR",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/alexvr.lua'))()
    end,
 })
local safePara3 = safe:CreateParagraph({Title = "Headcrab Hat", Content = "Gives you a headcrab looking hat, you need to be wearing the following clothing items: Jade Necklace with Shell Pendant (free, ID 376527115), Roblox Logo Visor (free, ID 607700713), 'Verified, Bonafide, Plaidafied' (verify your email, ID 102611803). You will see 'Callback Error' below if you aren't wearing these hats."})
local safeButton2 = safe:CreateButton({
    Name = "Execute Headcrab Hat",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/headcraphat.lua'))()
    end,
 })


-- Annoying


local annoyingPara1 = annoying:CreateParagraph({Title = "Penis Giver", Content = "Penis Giver will place a penis model on the players you hold Mouse1 on by rapidly teleporting to them and blockifying a necklace hat. Required hats: Jade Necklace with Shell Pendant (free, ID 376527115)"})
local annoyingButton1 = annoying:CreateButton({
    Name = "Activate Penis Giver",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/penis.lua'))()
    end,
 })


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
 local hatColorButton1 = hatColor:CreateButton({
    Name = "Reset Color",
    Callback = function()
        for _, hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if hat:IsA("Accessory") then
                hat.Handle.Color = Color3.fromRGB(163, 162, 165)
            end
        end        
    end,
 })


-- Misc

local miscButton1 = misc:CreateButton({
    Name = "Execute Infinite Yield + Infinite Store",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Infinite-Store/Infinite-Store/main/main.lua"))()
    end,
 })
