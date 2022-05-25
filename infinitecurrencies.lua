for _,val in pairs(game:GetService'Players'.LocalPlayer.Status.Currencies:GetChildren()) do
game:GetService'ReplicatedStorage'.RemoteEvents.MainFunction:InvokeServer("ChangeValue",{["NewValue"] = 696969696969,["Obj"] = val})
end
