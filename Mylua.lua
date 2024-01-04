--MAIN
getgenv().clicker = false;
getgenv().rebirth = false;
getgenv().redeemClickRewards = false;
getgenv().gemCollector = false;

--MISC
getgenv().requestRedeemGift = false;


--eggs
getgenv().Eggy = false;
getgenv().Eggtypes = {"Basic", "Farm", "Fantasy", "Wisdom", "Wicked", "Winged", "Buzz", "Sunny", "Industry", "Crystalized", "Swamp", "Mystical", "Sand", "Carnival", "Candy", "Devil"}



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
  Name = "KiokenZHub",
  Content = "Welcome to KiokenZHub",
  Image = "rbxassetid://4483345998",
  Time = 7
})


local Window = OrionLib:MakeWindow({Name = "Click Simulator!", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})

--Main--
local MainTab = Window:MakeTab({
  Name = "Main",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})
local MainSection = MainTab:AddSection({
  Name = "Farming"
})
MainSection:AddToggle({
  Name = "AutoClick",
  Default = false,
  Callback = function(Value)
   getgenv().clicker = Value
      if getgenv().clicker == true then
          autoClick();
      end
  end
})
MainSection:AddToggle({
  Name = "AutoRebirth",
  Default = false,
  Callback = function(Value)
   getgenv().rebirth = Value
   if getgenv().rebirth == true then
       autoRebirth()
   end
  end
})
MainSection:AddToggle({
  Name = "AutoRedeemClicksRewrds",
  Default = false,
  Callback = function(Value)
   getgenv().redeemClickRewards = Value
   if getgenv().redeemClickRewards == true then
       clickRewards()
   end
end
})

MainSection:AddToggle({
   Name = "AutocollectGem",
   Default = false,
   Callback = function (Value)
       getgenv().gemCollector = Value
       if getgenv().gemCollector == true then
          gemCollectors()
       end
   end
})

--MainEnd--

--PetTab--
local PetTab = Window:MakeTab({
   Name = "Pet",
   Icon = "rbxassetid://4483345998",
   PremiumOnly = false
})
local PetSection = PetTab:AddSection({
   Name = "Eggs"
})
PetSection:AddParagraph("Note!!", "If you want to change the egg turn off, and then turn on again")
PetSection:AddToggle({
    Name = "BuyEggs",
    Default = false,
    Callback = function(Value)
        getgenv().Eggy = Value
    end
})
PetSection:AddDropdown({
   Name = "Earth",
   Default = {},
   Options = {"Basic", "Farm", "Fantasy", "Wisdom", "Wicked", "Winged", "Buzz", "Sunny", "Industry", "Crystalized", "Swamp", "Mystical", "Sand", "Carnival", "Candy", "Devil"},
   Callback = function(EarthEgg)
       if getgenv().Eggy == true then
           if EarthEgg == "Basic" then
               buyEggs("Basic Egg")
           elseif EarthEgg == "Farm" then
               buyEggs("Farm Egg")
           elseif EarthEgg == "Fantasy" then
               buyEggs("Fantasy Egg")
           elseif EarthEgg == "Wisdom" then
               buyEggs("Wisdom Egg")
           elseif EarthEgg == "Wicked"then
               buyEggs("Wicked Egg")
           elseif EarthEgg == "Winged"then
               buyEggs("Winged Egg")
           elseif EarthEgg == "Buzz"then
               buyEggs("Buzz Egg")
           elseif EarthEgg == "Sunny"then
               buyEggs("Sunny Egg")
           elseif EarthEgg == "Industry"then
               buyEggs("Industry Egg")
           elseif EarthEgg == "Crystalized"then
               buyEggs("Crystalized Egg")
           elseif EarthEgg == "Swamp"then
               buyEggs("Swamp Egg")
           elseif EarthEgg == "Mystical"then
               buyEggs("Mystical Egg")
           elseif EarthEgg == "Sand"then
               buyEggs("Sand Egg")
           elseif EarthEgg == "Carnival"then
               buyEggs("Carnival Egg")
           elseif EarthEgg == "Candy"then
               buyEggs("Candy Egg")
           elseif EarthEgg == "Devil"then
               buyEggs("Devil Egg") 
           else 
           end
       end
   end
})

PetSection:AddDropdown({
   Name = "Space",
   Default = {},
   Options = {"Comet", "Cyber", "UFO", "Martian", "Starlight", "Uranium"},
   Callback = function(EarthEgg)
       if getgenv().Eggy == true then
           if EarthEgg == "Comet" then
               buyEggs("Comet Egg")
           elseif EarthEgg == "Cyber" then
               buyEggs("Cyber Egg")
           elseif EarthEgg == "UFO" then
               buyEggs("UFO Egg")
           elseif EarthEgg == "Martian" then
               buyEggs("Martian Egg")
           elseif EarthEgg == "Starlight"then
               buyEggs("Starlight Egg")
           elseif EarthEgg == "Uranium"then
               buyEggs("Uranium Egg")
           else 
           end
       end
   end
})

local PetSection_2 = PetTab:AddSection{
   Name = "Other"
}

--PetTabEnd--


--MISC--
local MiscTab = Window:MakeTab{
   Name = "MISC",
   Icon = "rbxassetid://4483345998",
   PremiumOnly = false
}
MiscTab:AddToggle{
   Name = "TimeRewards",
   Default = false,
   Callback = function(Value)
           getgenv().requestRedeemGift = Value
           if getgenv().requestRedeemGift == true then
               timeRewards()
       end
   end
}
--MISCEnd--


--Teleport--
local TeleportTab = Window:MakeTab({
   Name = "Teleport",
   Icon = "rbxassetid://4483345998",
   PremiumOnly = false
})
local TeleportSection = TeleportTab:AddSection({
   Name = "Teleport"
})
TeleportSection:AddDropdown({
   Name = "Earth",
   Options = {"Forest", "Snow", "Fall", "Flower", "Beach", "Crystal", "Mushroom", "Desert", "Candy", "Lava"},
   Callback = function(World)
         if World == "Forest" then
        teleportWorld("Forest Island")
     elseif World == "Snow" then
        teleportWorld("Snow Island")
     elseif World == "Fall" then
        teleportWorld("Fall Island")
     elseif World == "Flower" then
        teleportWorld("Flower Island")
     elseif World == "Beach" then
        teleportWorld("Beach Island")
     elseif World == "Crystal" then
        teleportWorld("Crystal Island")
     elseif World == "Mushroom" then
        teleportWorld("Mushroom Island")
     elseif World == "Desert" then
        teleportWorld("Desert Island")
     elseif World == "Candy" then
        teleportWorld("Candy Island")
     elseif World == "Lava" then
        teleportWorld("Lava Island")
     end
 end
})
TeleportSection:AddParagraph("Note", "You Need To Unlock The Portal First")
TeleportSection:AddDropdown({
   Name = "Space",
   Options = {"Ether", "Martian", "Starlight", "Uranium"},
   Callback = function (World)
       if World == "Ether" then
           teleportWorld("Ether Island")
       elseif World == "Martian" then
           teleportWorld("Martian Island")
       elseif World == "Starlight" then
           teleportWorld("Starlight Island")
       elseif World == "Uranium" then
           teleportWorld("Uranium Island")
       end
   end
})

--TeleportEnd--


--Player Tab--

local PlayerTab = Window:MakeTab({
  Name = "Player",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local PlayerSection = PlayerTab:AddSection({
  Name = "Player"
})


PlayerSection:AddSlider({
  Name = "Walkspeed",
  Min = 16,
  Max = 100,
  Default = 5,
  Color = Color3.fromRGB(255,255,255),
  Increment = 1,
  ValueName = "Walkspeed",
  Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end  
})

--Player Tab End--

--Settings Tab--

local SettingsTab = Window:MakeTab({
  Name = "Settings",
  Icon = "rbxassetid://4483345998",
  PremiumOnly = false
})

local SettingsSection = SettingsTab:AddSection({
  Name = "Settings"
})

SettingsSection:AddButton({
  Name = "Destroy UI",
  Callback = function()
      OrionLib:Destroy()
  end  
})

--Settings End--



OrionLib:Init() --UI Lib End

--Main
function autoClick()
  spawn(function()
      while getgenv().clicker == true do
          game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.Click:InvokeServer()
          wait()
      end
  end)
end

function autoRebirth()
  spawn(function()
      while getgenv().rebirth == true do
          local args = {[1] = game:GetService("Players").LocalPlayer}
          game:GetService("ReplicatedStorage").Packages.Knit.Services.RebirthService.RF.RequestRebirth:InvokeServer(unpack(args))
          wait()
      end
  end)
end

function clickRewards()
  spawn(function()
      while getgenv().redeemClickRewards == true do
          game:GetService("ReplicatedStorage").Packages.Knit.Services.ClickService.RF.RedeemClickReward:InvokeServer()
          wait()
      end
  end)
end

function gemCollectors()
   spawn(function()
       while getgenv().gemCollector == true do
           local args = {
               [1] = "Earth"
           }
           game:GetService("ReplicatedStorage").Packages.Knit.Services.GemCollectorService.RF.RequestCollect:InvokeServer(unpack(args))
           wait()
       end
   end)
end


--MISC
function timeRewards()
  spawn(function()
      while getgenv().requestRedeemGift == true do
          if getgenv().requestRedeemGift == true then
              local i = 1
              local args = {}
              while i <= 12 do
                  args[1] = i
                  game:GetService("ReplicatedStorage").Packages.Knit.Services.GiftsService.RF.RequestRedeemGift:InvokeServer(unpack(args))
                  i = i + 1
              end
          end
      end
  end)
end



--##
--Eggs
function buyEggs(eggType)
  spawn(function()
      while getgenv().Eggy == true do
          local args = {[1] = eggType,[2] = "Single"}
          game:GetService("ReplicatedStorage").Packages.Knit.Services.EggService.RF.OpenEgg:InvokeServer(unpack(args))
          wait()
      end
  end)
end



--If player not on the map the script deactivate.
function getCurrentplyrPOS()
  local plyr = game.Players.LocalPlayer;
  if Plyr.Character then
      return plyr.Character.HumanoidRootPart.Position;
  end
  return false;
end

function teleportTO(placeCFrame)
  local plyr = game.Players.LocalPlayer;
  if plyr.Character then
      plyr.Character.HumanoidRootPart.CFrame = placeCFrame;
  end
end
function teleportWorld(world)
  if game:GetService("Workspace").Islands:FindFirstChild(world) then
      teleportTO(game:GetService("Workspace").Islands[world].Top.Top.CFrame)
      wait(1)
      teleportTO(game:GetService("Workspace").Islands[world].Enter.CFrame)
  end
end




