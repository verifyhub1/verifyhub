getgenv().SecureMode = true
local rocordUI = loadstring(game:HttpGet('https://rocord.dev/cdn/apps/rocordUI/loader'))()
local Window = rocordUI:CreateWindow({
    Name = "VerifyHub",
    LoadingTitle = "VerifyHub Loading...",
    LoadingSubtitle = "UI by rocord#0001 and scripts by Alexplayrus1#0746",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "VerifyHub", 
       FileName = "SavedConfig"
    },
    Discord = {
       Enabled = true,
       Invite = "SjSgvxNNtE",
       RememberJoins = true 
    },
    KeySystem = true,
    KeySettings = {
       Title = "VerifyHub",
       Subtitle = "Key System",
       Note = "Join the discord and verify your user to unlock the script!",
       FileName = "Key",
       SaveKey = false,
       GrabKeyFromSite = true, 
       Key = "https://rocord.dev/keysystem/verifyhub.php"
    }
 })
-- Create tabs
local credits = Window:CreateTab("Credits", 4483362748) -- Title, Image
local safe = Window:CreateTab("Safe", 4335489513) -- Title, Image
local annoying = Window:CreateTab("Annoying", 3944693371) -- Title, Image
local chat = Window:CreateTab("Chat", 4370314188) -- Title, Image
local hatColor = Window:CreateTab("Hat Color", 6961018885) -- Title, Image
local misc = Window:CreateTab("Misc", 4483364237) -- Title, Image


-- Credits


local creditsLabel1 = credits:CreateLabel("Welcum To VerifyHub")
local creditsPara1 = credits:CreateParagraph({Title = "Credits", Content = "This UI: rocord#0001\nAlexVR, Headcrab Hat, Penis Giver, Hat Color Changer, AutoToxic: Alexplayrus1#0746\nSnake Transform: MyWorld#4430"})


-- Safe


local safePara1 = safe:CreateParagraph({Title = "AlexVR", Content = "a fake vr script, hold mouse to raise your hand, press g to dance, c to crouch and t to climb things up, enjoy! Required hats: 'Verified, Bonafide, Plaidafied' (verify your email, ID 102611803) Stop AlexVR by resetting your character."})
local safeButton1 = safe:CreateButton({
    Name = "Execute AlexVR",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/verifyhub1/verifyhub/main/alexvr.lua'))()
    end,
 })
local safePara2 = safe:CreateParagraph({Title = "Headcrab Hat", Content = "Gives you a headcrab looking hat, you need to be wearing the following clothing items: Jade Necklace with Shell Pendant (free, ID 376527115), Roblox Logo Visor (free, ID 607700713), 'Verified, Bonafide, Plaidafied' (verify your email, ID 102611803). You will see 'Callback Error' below if you aren't wearing these hats. Stop Headcrab Hat by resetting your character."})
local safeButton2 = safe:CreateButton({
    Name = "Execute Headcrab Hat",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/verifyhub1/verifyhub/main/headcraphat.lua'))()
    end,
 })
 local safePara3 = safe:CreateParagraph({Title = "Snake Transform", Content = "Transforms your character into a ragdoll snake. Works on FE meaning other people can see it. Stop Snake Transform by resetting your character."})
local safeButton3 = safe:CreateButton({
    Name = "Execute Snake Transform",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/verifyhub1/verifyhub/main/snake.lua'))()
    end,
 })
 local safePara4 = safe:CreateParagraph({Title = "Default Animations Rewrite", Content = "Replaces your default roblox character animations with custom-written animations. Stop Default Animations Rewrite by resetting your character."})
local safeButton4 = safe:CreateButton({
    Name = "Execute Default Animations Rewrite",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/verifyhub1/verifyhub/main/animoverwrite.lua'))()
    end,
})


-- Annoying


local annoyingPara1 = annoying:CreateParagraph({Title = "Penis Giver", Content = "Penis Giver will place a penis model on the players you hold Mouse1 on by rapidly teleporting to them and blockifying a necklace hat. Required hats: Jade Necklace with Shell Pendant (free, ID 376527115). Stop Penis Giver by resetting your character."})
local annoyingButton1 = annoying:CreateButton({
    Name = "Activate Penis Giver",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/verifyhub1/verifyhub/main/penis.lua'))()
    end,
 })


-- Chat


local chatPara1 = chat:CreateParagraph({Title = "AutoToxic", Content = "AutoToxic will spam the chat with toxic quotes and will say 'its just lag' if someone says 'hacker'. Stop AutoToxic by leaving the game."})
local chatButton1 = chat:CreateButton({
    Name = "Activate AutoToxic",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/verifyhub1/verifyhub/main/autotoxic.lua'))()
    end,
 })


-- Hat Color


local hatColorPara1 = hatColor:CreateParagraph({Title = "Information", Content = "Hat Color is client only meaning only you can see it, and other players will see it as the default roblox item. Stop Hat Color by clicking the 'Reset Color' button below."})
local hatColorColorPicker1 = hatColor:CreateColorPicker({
    Name = "Hat Color Picker",
    Color = Color3.fromRGB(255,255,255),
    Flag = "HatColor",
    Callback = function(Value)
        for _, hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if hat:IsA("Accessory") then
                hat.Handle.Color = Value
            end
        end 
    end
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
