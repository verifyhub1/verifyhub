--set the vrhat variable to false to disable the headset hat

local vrhat=true --makes you have a vr headset looking hat, requires the plaid green verify hat

local isdancing=false
local iscrouching=false
local pointanimid="http://www.roblox.com/asset/?id=182393478"
local pointanim=Instance.new("Animation")
pointanim.AnimationId=pointanimid
local danceanim=Instance.new("Animation")
danceanim.AnimationId="rbxassetid://429703734"
local crouchanim=Instance.new("Animation")
crouchanim.AnimationId="rbxassetid://282574440"
local plr=game.Players.LocalPlayer
local dance=plr.Character.Humanoid:LoadAnimation(danceanim)
local crouch=plr.Character.Humanoid:LoadAnimation(crouchanim)
local point=plr.Character.Humanoid:LoadAnimation(pointanim)
local mouse=plr:GetMouse()
local char=plr.Character
plr.CameraMode=Enum.CameraMode.LockFirstPerson
mouse1d = mouse.Button1Down:Connect(function()
point:AdjustSpeed(1)
point:Play()
end)
mouse1u = mouse.Button1Up:Connect(function()
point:AdjustSpeed(1)
point:Stop()
end)
runservice=game:GetService("RunService")
local cock = runservice.RenderStepped:Connect(function()
plr.Character:FindFirstChild("Left Arm").LocalTransparencyModifier = 0
plr.Character:FindFirstChild("Right Arm").LocalTransparencyModifier = 0
plr.Character:FindFirstChild("Left Leg").LocalTransparencyModifier = 0
plr.Character:FindFirstChild("Right Leg").LocalTransparencyModifier = 0
end)
plr.Character.Humanoid.Changed:Connect(function()
if plr.Character.Humanoid.Health<1 then
mouse1d:Disconnect()
mouse1u:Disconnect()
cock:Disconnect()
plr.CameraMode=Enum.CameraMode.Classic

end
end)
mouse.KeyDown:Connect(function(key)
if key=="t" then
char:MoveTo(char.HumanoidRootPart.Position + Vector3.new(0,5,0))
elseif key=="g" then
dance:AdjustSpeed(1)
if isdancing==false then
isdancing=true
dance:Play()
else
isdancing=false
dance:Stop()
end
elseif key=="c" then
crouch:AdjustSpeed(1)
if iscrouching==false then
iscrouching=true
crouch:Play()
else
iscrouching=false
crouch:Stop()
end
end
end)
if vrhat==true then
if game.Players.LocalPlayer.Character:FindFirstChild("PlaidWrapHat") then
game.Players.LocalPlayer.Character.PlaidWrapHat.Handle.Mesh:Destroy()
else
local args = {
    [1] = "You need the plaid green verify hat to use the headset hat!",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

end
end
local args = {
    [1] = "AlexVR has been loaded, hold mouse to raise your hand, press g to dance, c to crouch and t to climb things up, enjoy!",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
