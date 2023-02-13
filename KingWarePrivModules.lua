repeat task.wait() until game:IsLoaded()
repeat task.wait() until shared.GuiLibrary
local uis = game:GetService("UserInputService")
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local KNG = function(tab, argstable) 
	return GuiLibrary["ObjectsThatCanBeSaved"][tab.."Window"]["Api"].CreateOptionsButton(argstable)
end
function securefunc(func)
	task.spawn(function()
		spawn(function()
			pcall(function()
				loadstring(
					func()
				)()
			end)
		end)
	end)
end
function warnnotify(title, content, duration)
	local frame = GuiLibrary["CreateNotification"](title or "KingWare Warning", content or "(No Content Given)", duration or 5, "assets/WarningNotification.png")
	frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64)
end
function infonotify(title, content, duration)
	local frame = GuiLibrary["CreateNotification"](title or "KingWare Info", content or "(No Content Given)", duration or 5, "assets/InfoNotification.png")
	frame.Frame.Frame.ImageColor3 = Color3.fromRGB(255, 64, 64)
end
function getstate()
	local ClientStoreHandler = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
	return ClientStoreHandler:getState().Game.matchState
end
function iscustommatch()
	local ClientStoreHandler = require(game.Players.LocalPlayer.PlayerScripts.TS.ui.store).ClientStore
	return ClientStoreHandler:getState().Game.customMatch
end
function checklagback()
	local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	return isnetworkowner(hrp)
end

local AntiDis = KNG("World", {
    Name = "AntiDis",
    Function = function(callback) 
        if callback then
			repeat task.wait() until game:IsLoaded()
			repeat task.wait() until game:GetService("ReplicatedStorage"):FindFirstChild("Inventories"):FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("wood_sword");
			local plr = game.Players.LocalPlayer
					local chr = plr.Character
					local hrp = chr.HumanoidRootPart
						hrp.Parent = nil
						   chr:MoveTo(chr:GetPivot().p)
								task.wait()
								hrp.Parent = chr
				else
				createwarning("KingWareV69", "Reset to disable", 4)	
        end
    end,
    Default = false,
    HoverText = "You saw it on the discord chat lol"
})

local RainBow = KNG("World", {
    Name = "RainBowTools",
    Function = function(callback) 
        if callback then
			local ColorLoop = nil
					for i,v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
						if v.Name == "Handle" then
							v.TextureID = ""
							v.Material = Enum.Material.Neon
							v.Transparency = 0
							ColorLoop = true
							repeat task.wait()
								if  lplr.Character.Humanoid.Health ~= 0 then
									v.Color = Color3.fromRGB(22, 185, 63)
									wait(0.6)
									v.Color = Color3.fromRGB(44, 255, 237)
									wait(0.6)
									v.Color = Color3.fromRGB(38, 42, 255)
									wait(0.6)
									v.Color = Color3.fromRGB(240, 34, 255)
									wait(0.6)
									v.Color = Color3.fromRGB(220, 20, 23)
									wait(0.6)
									v.Color = Color3.fromRGB(226, 108, 29)
									wait(0.6)
									v.Color = Color3.fromRGB(255, 247, 12)
								end
							until not ColorLoop
						end
					end
				else
					ColorLoop = false
					game.Workspace.Camera.Viewmodel.wood_sword.Handle.Transparency = 0
					game.Workspace.Camera.Viewmodel.wood_sword.Handle.TextureID = "rbxassetid://6770060739"	
        end
    end,
    Default = false,
    HoverText = "Found by zack"
})

local Invisvoid = KNG("World", {
    Name = "Invisantivoid",
    Function = function(callback) 
        if callback then
			local part = Instance.new("Part", Workspace)
            part.Name = "AntiVoid"
            part.Size = Vector3.new(2100, 0.5, 2000)
            part.Position = Vector3.new(160.5, 25, 247.5)
            part.Transparency = 1
            part.Anchored = true
	    part.Color = Color3.fromRGB(255, 255, 255)
            else               
		game.Workspace.AntiVoid:Destroy()
        end
    end,
    Default = true,
    HoverText = "A invisible antivoid"
})

local Troll = KNG("World", {
    Name = "TrollPanel",
    Function = function(callback) 
        if callback then
			createwarning("KingWareV69", "Please wait while we bypass remotes.", 2)
wait(2)
createwarning("KingWare V69", "Cohost remote bypassed anticheat hooked!", 2)
               local v2 = require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out)
local OfflinePlayerUtil = v2.OfflinePlayerUtil
local v6 = OfflinePlayerUtil.getPlayer(game.Players.LocalPlayer);
v6:SetAttribute("Cohost", true)
              createwarning("HostExploit", ":omegatroll:", 5)
else
               local v2 = require(game:GetService("ReplicatedStorage")["rbxts_include"]["node_modules"]["@easy-games"]["game-core"].out)
local OfflinePlayerUtil = v2.OfflinePlayerUtil
local v6 = OfflinePlayerUtil.getPlayer(game.Players.LocalPlayer);
v6:SetAttribute("Cohost", false)
        end
    end,
    Default = false,
    HoverText = "good for trolling"
})

local AutoWin1 = {["Enabled"] = false}
	AutoWin1 = GuiLibrary["ObjectsThatCanBeSaved"]["BalantWindow"]["Api"].CreateOptionsButton({
		["Name"] = "AutoWin1",
		["Function"] = function(callback)
			if callback then
				if (matchState == 0 or lplr.Character:FindFirstChildWhichIsA("ForceField")) then
					spawn(function()
						createwarning("AutoWin1", "Activated. Do not spam it pls", 6)
						local v1 = game.Players.LocalPlayer.Character
						if matchState == 0 then repeat task.wait() until matchState ~= 0 end
						local v4 = game:GetService("ReplicatedStorage"):FindFirstChild("Inventories"):FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("wood_pickaxe")
						local v5 = game:GetService("ReplicatedStorage"):FindFirstChild("Inventories"):FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("wood_sword")
						local v6 = game.Players.LocalPlayer.Character;
						local v7 = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart");
						local bed
						for i2,v8 in pairs(workspace:GetChildren()) do
							if v8.Name == "bed" then
								if v8.Covers.BrickColor ~= game.Players.LocalPlayer.Team.TeamColor then
									game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v8.CFrame
									task.wait(.1)
									game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v8.CFrame
									task.wait(.1)
									game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v8.CFrame + Vector3.new(0, 7, 0)
									game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v8.CFrame + Vector3.new(0, 7, 0)
									game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = v8.CFrame + Vector3.new(0, 7, 0)
									local v9 = game.Players.LocalPlayer.Character;
									repeat task.wait() until v8 == nil or v8.Parent == nil
									bed = nil
								end
							end
						end
						repeat task.wait() until bed == nil
						for i3,v10 in pairs(game.Players:GetPlayers()) do
							if v10.Character and v10.Character:FindFirstChild("HumanoidRootPart") then
								if v10.Team ~= game.Players.LocalPlayer.Team then
									while v10 and v10.Character.Humanoid.Health > 0 and v10.Character.PrimaryPart do
										task.wait(.2)
										if game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild'HumanoidRootPart' then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v10.Character.HumanoidRootPart.CFrame end
										workspace.Gravity = 196.2
									end
								end
							end
						end
					end)
				else
					createwarning("AutoWin1", "Failed to enable: Please use it during pre-match or during respawn.", 6)
				end
				AutoWin30v30["ToggleButton"](false)
			end
		end
	})

	local Invisvoid = KNG("World", {
		Name = "CoolAntiVoid",
		Function = function(callback) 
			if callback then
				local part = Instance.new("Part", Workspace)
				part.Name = "AntiVoid"
				part.Size = Vector3.new(2100, 0.5, 2000)
				part.Position = Vector3.new(160.5, 25, 247.5)
				part.Transparency = 0.5
				part.Anchored = true
			part.Color = Color3.fromRGB(255, 255, 255)
				else               
			game.Workspace.AntiVoid:Destroy()
			end
		end,
		Default = true,
		HoverText = "A antivoid"
	})

	
	

	local TexturePack = KNG("World", {
		Name = "CoolTexturePack",
		Function = function(callback) 
			if callback then
				Enabled = Callback
                if Enabled then
                    local obj = game:GetObjects("rbxassetid://11144793662")[1]
                    obj.Name = "Part"
                    obj.Parent = game:GetService("ReplicatedStorage")
                    for i,v in pairs(obj:GetChildren()) do
                        if string.lower(v.Name):find("cross") then
                            for i2,b in pairs(v:GetChildren()) do
                                b:Destroy()
                            end
                        end
                    end
                    shared.con = game:GetService("ReplicatedStorage").ChildAdded:Connect(function(v)
                        for i,x in pairs(obj:GetChildren()) do
                            x:Clone().Parent = v
                        end
                        shared.con:Disconnect()
                    end)
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/SmokeXDev/SmokeXPrivate/main/TexturePack.lua"))()
			end
		end,
		Default = false,
		HoverText = "MineCraft Texture Pack"
	})

	local ChatCrasher = KNG("Utility", {
		Name = "ChatCrasher",
		Function = function(callback) 
			if callback then
				while true do
					wait(1.7)
					local args = {
						[1] = " ",
						[2] = "All"
					}
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				end
			end
		end,
		Default = false,
		HoverText = "Disables Chat but i fuckin hate it"
	})
