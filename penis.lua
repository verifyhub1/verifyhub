local char=game.Players.LocalPlayer.Character
local mouse=game.Players.LocalPlayer:GetMouse()
local plr=game.Players.LocalPlayer
local hand=char.Necklace.Handle
local runservice=game:GetService("RunService")
local cfval=Instance.new("CFrameValue")
local ts=game:GetService("TweenService")
hand.Mesh:Destroy()
cfval.Changed:Connect(function()
char:SetPrimaryPartCFrame(cfval.Value)
end)
cock1 = mouse.Button1Down:Connect(function()
if mouse.Target.Parent:FindFirstChildOfClass("Humanoid") then
local targetroot=mouse.Target.Parent.HumanoidRootPart
cfval.Value=char.HumanoidRootPart.CFrame
hold = runservice.RenderStepped:Connect(function()
char:SetPrimaryPartCFrame(targetroot.CFrame + Vector3.new(0,-0.5,0))
end)
end
end)
cock2 = mouse.Button1Up:Connect(function()
if hold then
hold:Disconnect()
end
end)
char.Humanoid.Changed:Connect(function()
if char.Humanoid.Health<1 then
cock1:Disconnect()
cock2:Disconnect()
end
end)
