animator=game.Players.LocalPlayer.Character.Animate
--idle lol
animator.idle.Animation2:Destroy()
animator.idle:FindFirstChildOfClass("Animation").AnimationId = "rbxassetid://0"
--move
animator.walk:FindFirstChildOfClass("Animation").AnimationId = "rbxassetid://429703734"
animator.run:FindFirstChildOfClass("Animation").AnimationId = "rbxassetid://429703734"
--jump and fall
animator.jump:FindFirstChildOfClass("Animation").AnimationId = "rbxassetid://184574340"
animator.fall:FindFirstChildOfClass("Animation").AnimationId = "rbxassetid://204295235"
--tool hold
animator.toolnone:FindFirstChildOfClass("Animation").AnimationId = "rbxassetid://0"
--climb
animator.climb:FindFirstChildOfClass("Animation").AnimationId = "rbxassetid://204328711"
