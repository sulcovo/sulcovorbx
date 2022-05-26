local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/mainlibrary.lua"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/notholder.lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/notif.lua"))()


Notification:Notify(
   {Title = "Vítej, sulcovo!", Description = "Admin/Premium účet načten."},
   {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "image"},
   {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
)

local Window = Library.CreateLib("cau, sulcovo! <3    sulcware xd", "Ocean")
local Tab = Window:NewTab("Local Player")
local Section = Tab:NewSection("random funkce")

Section:NewSlider("walkspeed", "nastavi rychlost podle slideru", 500, 13, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("jumppower", "nastavi jump podle slideru", 500, 50, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)





local Tab = Window:NewTab("Brawl-Blox")
local Section = Tab:NewSection("Brawl-Blox (2965881766)")





Section:NewToggle("Oneshot", "Kills everyone in one-shot", function(state)
    if state then
             Notification:Notify(
             {Title = "sulcware - Brawl-Blox", Description = "Oneshot turned on!"},
             {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
             {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
             )
              _G.oneshot = true
              while _G.oneshot do
              local args = {
                  [1] = "CreateModifier",
                  [2] = {
               ["ModifierName"] = "Power Cube 1",
               ["ModifierFolderName"] = "AttackModifiers",
               ["chr"] = game:GetService'Players'.LocalPlayer.Character,
               ["Duration"] = 99999999999999,
               ["ModifierValue"] = 10000000
           }
       }
       game:GetService'ReplicatedStorage'.RemoteEvents.MainFunction:InvokeServer(unpack(args))    
             task.wait(10)
     end
    else
        Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Oneshot turned off!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
        _G.oneshot = false
    end
end)






Section:NewToggle("Infinite trophies", "Gives infinite trophies", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/infinitetrophies.lua"))()
        Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Infinite trophies were added!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/infinitetrophiesoff.lua"))()
        Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Infinite trophies were resetted!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
    end
end)







Section:NewToggle("Infinite currencies", "Gives unlimited of every currency", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/infinitecurrencies.lua"))()
        Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Infinite currencies were added!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/infinitecurrenciesoff.lua"))()
        Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Infinite currencies were resetted!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
    end
end)


Section:NewButton("Max Brawler levels", "Maxes out all of you Brawlers", function()
    for _,val1 in pairs(game:GetService'Players'.LocalPlayer.Brawlers:GetChildren()) do
    game:GetService'ReplicatedStorage'.RemoteEvents.MainFunction:InvokeServer("ChangeValue",{["NewValue"] = 11,["Obj"] = val1.Power})
    game:GetService'ReplicatedStorage'.RemoteEvents.MainFunction:InvokeServer("ChangeValue",{["NewValue"] = 35,["Obj"] = val1.Rank})
    end
    Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Brawlers were maxed-out!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
end)



Section:NewToggle("Spam gem gifts", "Spams gem gifts around you and lags the server", function(state)
    if state then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/spamgift.lua"))()
        Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Spam gifts started!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sulcovo/sulcovorbx/main/spamgiftoff.lua"))()
        Notification:Notify(
        {Title = "sulcware - Brawl-Blox", Description = "Spam gifts stopped!"},
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},s
        {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(86, 76, 251)}
        )
    end
end)





local Tab = Window:NewTab("nastaveni")
local Section = Tab:NewSection("zaklad")
Section:NewKeybind("on/off ui", "nastavi cim se zapne a vypne ui", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
