local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
local win = Flux:Window("verifyhub", game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name, Color3.fromRGB(0, 255, 0), Enum.KeyCode.LeftControl)
local tab = win:Tab("Friendly", "http://www.roblox.com/asset/?id=6022668888")
tab:Button("AlexVR", "Executes AlexVR, a fake vr script, controls can be seen inside the chat", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/alexvr.lua'))()
end)
tab:Button("Headcrab Hat", "Gives you a headcrab looking hat", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/headcraphat.lua'))()
Flux:Notification("You now have a headcrab on your head", "OK")
end)
local tab2 = win:Tab("Annoying", "http://www.roblox.com/asset/?id=6022668888")
tab2:Button("Hold mouse to give penis", "Hold your mouse on someone to give them a long penis!", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Alexplayrus2/verifyhub/main/penis.lua'))()
Flux:Notification("Hold your mouse over a player to give them a penis, stop holding to remove it (oh no)", "ok lol")
end)
local tab4 = win:Tab("Chat", "http://www.roblox.com/asset/?id=6022668888")
tab4:Label("Chat bypasses")
tab4:Label("Its recommended that you use a short display name/username.")
tab4:Button("Penis", "Chat an ascii of a penis", function()
    local args = {
    [1] = "#",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    local args = {
    [1] = "########",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

    local args = {
    [1] = "#",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
  end)
tab4:Button("Pissing man", "Chats an ascii of a man taking a piss", function()
        local args = {
    [1] = "##",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = " #",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = " #-->",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

local args = {
    [1] = "# # ___",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

        end)
tab4:Button("Letter P", "Chats an ascii of the letter P", function()
        local args = {
    [1] = "###",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "# .#",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "###",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "#",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "#",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end)
tab4:Button("Pnis", "Chats the word Pnis, which looks like Penis", function()
        local args = {
    [1] = "###",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "# .#",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "###",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "#",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
local args = {
    [1] = "# nis",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
        end)
tab4:Label("Other")
tab4:Button("Chat translator", "Translates the chat for you, check the chats messages for more info" function()
        loadstring(game:HttpGetAsync('https://raw.githubusercontent.com/xxaim/ignore/master/translator.lua'))()
        end)
local tab3 = win:Tab("Misc", "http://www.roblox.com/asset/?id=6023426915")
tab3:Label("Hat color (CLIENT)")
tab3:Label("Only you see the hat color. Other players see it as default")
tab3:Colorpicker("Hat color (CLIENT)", Color3.fromRGB(163, 162, 165), function(t)
for _,hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if hat:IsA("Accessory") then
hat.Handle.Color=t
end
end
end)
tab3:Button("Reset to default", "Reset your hat color to default, if you have rainbow enabled then disable it for this to work", function()
for _,hat in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if hat:IsA("Accessory") then
hat.Handle.Color=Color3.fromRGB(163, 162, 165)
end
end
Flux:Notification("Hat color resetted to default.", "OK")
end)

Flux:Notification("Press left control to hide the UI!", "OK")
