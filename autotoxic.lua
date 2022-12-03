local quotes = {"imao imagine not having a good gaming chair like me - eKRXDQKR55", "im a cheater? no i just have a good gaming chair stay mad lol - eKRXDQKR55", "cry some more - eKRXDQKR55", "i got good crocs, unlike you - eKRXDQKR55"}
function chattoxicquotes()
while true do
local args = {
    [1] = tostring(quotes[math.random(1, #quotes)]),
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
wait(5)

end
end
local toxicspam=coroutine.wrap(chattoxicquotes)
toxicspam()

local EventFolder = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents

local chatdetect = EventFolder.OnMessageDoneFiltering.OnClientEvent:Connect(function(messageObj)
    if string.find(string.lower(messageObj.Message), "hacker") then
        local args = {
    [1] = "bro its just lag - eKRXDQKR55",
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    end
end)
