local trophies = 0
game:GetService'ReplicatedStorage'.RemoteEvents.BuyEvent:FireServer(game:GetService'Players'.LocalPlayer.leaderstats.Trophies, game:GetService'Players'.LocalPlayer.leaderstats.Trophies.Value)
game:GetService'ReplicatedStorage'.RemoteEvents.BuyEvent:FireServer(game:GetService'Players'.LocalPlayer.leaderstats.Trophies, -trophies)
