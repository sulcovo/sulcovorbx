for _,val in pairs(game:GetService'Players'.LocalPlayer.Status.Currencies:GetChildren()) do
game:GetService'ReplicatedStorage'.RemoteEvents.MainFunction:InvokeServer("ChangeValue",{["NewValue"] = 0,["Obj"] = val})
end
