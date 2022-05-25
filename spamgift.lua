getgenv().spam = true
local player = game:GetService("Players").LocalPlayer
while spam do wait()
local A_1 = "DropCurrency"
local A_2 = 
{
	["Object1"] = game:GetService("ReplicatedStorage").Bullets.CurrencyDropTemplates.GemCrate, 
	["Currency"] = "Gems", 
	["Cost"] = 1, 
	["Object2"] = game:GetService("ReplicatedStorage").Bullets.CurrencyDropTemplates.GemCrate, 
	["Object3"] = game:GetService("ReplicatedStorage").Bullets.CurrencyDropTemplates.GemCrate, 
	["Object4"] = game:GetService("ReplicatedStorage").Bullets.CurrencyDropTemplates.GemCrate, 
	["TargetedPlayer"] = player
}
local Event = game:GetService("ReplicatedStorage").RemoteEvents.MainFunction
Event:InvokeServer(A_1, A_2)
end
