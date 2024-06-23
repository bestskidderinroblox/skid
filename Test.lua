local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RedzLibV5/main/Source.Lua"))()

local Window = redzlib:MakeWindow({
	Title = "Luminary Hub",
	SubTitle = "by ! xSync",
	SaveFolder = "Luminary_Hub"
})

local Info = Window:MakeTab({"Info Tab", "info"})
local Main = Window:MakeTab({"Main Tab", "home"})
local Set = Window:MakeTab({"Setting Tab", "settings"})
local Farm = Window:MakeTab({"Farm Tab", "swords"})
local Stats = Window:MakeTab({"Stats Tab", "user-plus"})
local Tele = Window:MakeTab({"Teleport Tab", "chevrons-right"})
local Player = Window:MakeTab({"Player Tab", "users"})
local Fruit = Window:MakeTab({"Fruit Tab", "apple"})
local Raid = Window:MakeTab({"Raid Tab", "flame"})
local Shop = Window:MakeTab({"Shop Tab", "shopping-cart"})
local Misc = Window:MakeTab({"Misc Tab", "menu"})
local Race = Window:MakeTab({"Race Tab", "activity"})
local Event = Window:MakeTab({"Event Tab", "waves"})

local p = Instance.new("ScreenGui")
local q = Instance.new("TextButton")
local r = Instance.new("UICorner")
local s = Instance.new("ImageLabel")
r.Name = "sex"
r.Parent = q
s.Name = "sexgay"
s.Parent = q
s.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
s.BackgroundTransparency = 1.000
s.BorderSizePixel = 0
s.Position = UDim2.new(0.234619886, 0, 0.239034846, 0)
s.Size = UDim2.new(0, 30, 0, 30)
s.Image = "rbxassetid://15682649755"
p.Name = "nung"
p.Parent = game.CoreGui
p.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
q.Name = "gay"
q.Parent = p;
q.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
q.BackgroundTransparency = 0.1
q.BorderSizePixel = 0
q.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
q.Size = UDim2.new(0, 55, 0, 55)
q.Font = Enum.Font.SourceSans
q.Text = ""
q.TextColor3 = Color3.fromRGB(153, 51, 255)
q.TextSize = 20.000
q.Draggable = true
q.MouseButton1Click:Connect(function()
	Window:Minimize()
end)
----------------------------------------------------------------------------------------------------------------------Function
--Join Team
repeat 
	wait() 
until game.Players.LocalPlayer

_G.Team = "Pirate"
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam")  then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			if _G.Team == "Pirate" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			elseif _G.Team == "Marine" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			else
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			end
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

--Check Place ID
if game.PlaceId == 2753915549 then
	World1 = true;
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
else
	game:Shutdown()
end

--Save Setting
_G.Settings = {
	--Main Tab
	SelectWeapon = "Melee",
	FastType = "Normal",
	Method = "Upper",
	AutoFarm = false,
	NeareastFarm = false,
	AutoFarmBone = false,
	AutoRandomBone = false,
	TryLuck = false,
	Pray = false,
	AutoCakePrince = false,
	AutoFarmChest = false,
	ChestBypassBypass = false,
	SelectModeMaterial = "",
	AutoFarmMaterial = false,
	--Setting Tab
	SafeMode = false,
	DistanceAutoFarm = 30,
	TweenSpeed = 300,
	--Farm Tab
	AutoCastleRaid = false,
	AutoSoulGuitar = false,
	AutoKenHakiV2 = false,
	AutoRainbowHaki = false,
	AutoSwanGlasses = false,
	AutoTrueTriplKatana = false,
	AutoFactory = false,
	AutoEctoplasm = false,
	AutoDarkCoat = false,
	AutoBartiloQuest = false,
	AutoEliteHunter = false,
	AutoEliteHunterHop = false,
	AutoHolyTorch = false,
	Auto_Cursed_Dual_Katana = false,
	TushitaQuest1 = false,
	TushitaQuest2 = false,
	YamaQuest1 = false,
	YamaQuest2 = false,
	MobAura = false,
	AutoNewWorld = false,
	AutoThirdSea = false,
	AutoSaber = false,
	AutoPole = false,
	AutoRengoku = false,
	--Stats Tab

	--Teleport Tab

	--Player Tab

	--Fruit Tab

	--Raid Tab

	--Shop Tab
	AutoBuyAbility = false,
	--Misc Tab

	--Race Tab
	AutoEvoRace = false
	--Event Tab
}

function LoadSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfolder("Luminary_Hub") then
            makefolder("Luminary_Hub")
        end
        if not isfolder("Luminary_Hub/Blox Fruits/") then
            makefolder("Luminary_Hub/Blox Fruits/")
        end
        if not isfile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            writefile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(_G.Settings))
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Luminary_Hub/Blox Fruits/" ..
                game.Players.LocalPlayer.Name .. ".json"))
            for i, v in pairs(Decode) do
                _G.Settings[i] = v
            end
        end
    else
        return 
    end
end

function SaveSettings()
    if readfile and writefile and isfile and isfolder then
        if not isfile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json") then
            LoadSettings()
        else
            local Decode = game:GetService("HttpService"):JSONDecode(readfile("Luminary_Hub/Blox Fruits/" ..
                game.Players.LocalPlayer.Name .. ".json"))
            local Array = {}
            for i, v in pairs(_G.Settings) do
                Array[i] = v
            end
            writefile("Luminary_Hub/Blox Fruits/" .. game.Players.LocalPlayer.Name .. ".json",
                game:GetService("HttpService"):JSONEncode(Array))
        end
    else
        return 
    end
end
LoadSettings()

game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Luminary Hub",
	Text = "Setting Loadded Successfully",
	Icon = "rbxassetid://15682649755",
	Duration = 2
})

--Notify
function Notify(text)
    local Notification = require(game.ReplicatedStorage.Notification)
    local notification = Notification.new(text)
    notification.Duration = 10
    notification:Display()
end

--Service
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local tween = game:service"TweenService"
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local GuiService = game:GetService("GuiService")

--Anti AFK
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

--Equip Weapon
function EquipWeapon(Tool)
    local ToolInBackpack = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool)
    if ToolInBackpack then
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ToolInBackpack)
    end
end 

--Unequip Weapon
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        wait(.1)
        _G.NotAutoEquip = false
    end
end

--Check Quest
Tabel = {}
function GetCake_CFrame_Mon()
	local targetMonsters = {"Baking Staff", "Head Baker", "Cake Guard", "Cookie Crafter"}
	local enemySpawns = workspace.EnemySpawns:GetChildren()
	local randomSpawnIndex = math.random(1, #enemySpawns)
	local selectedSpawn = enemySpawns[randomSpawnIndex]
	
	for _,_v1 in pairs(targetMonsters) do
		local result = string.gsub(_v1, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		local monQName = result4
		
		if selectedSpawn.Name == result4 then
			return selectedSpawn.CFrame
		end
	end
end

local EnemySpawns = Instance.new("Folder",workspace)
EnemySpawns.Name = "EnemySpawns"
for i, v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
	if v:IsA("Part") then
		local EnemySpawnsX2 = v:Clone()
		local result = string.gsub(v.Name, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		EnemySpawnsX2.Name = result4
		EnemySpawnsX2.Parent = workspace.EnemySpawns
		EnemySpawnsX2.Anchored = true
	end
end
for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
		local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
		local result = string.gsub(v.Name, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		EnemySpawnsX2.Name = result4
		EnemySpawnsX2.Parent = workspace.EnemySpawns
		EnemySpawnsX2.Anchored = true
	end
end
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChild("HumanoidRootPart") then
		local EnemySpawnsX2 = v.HumanoidRootPart:Clone()
		local result = string.gsub(v.Name, "Lv. ", "")
		local result2 = string.gsub(result, "[%[%]]", "")
		local result3 = string.gsub(result2, "%d+", "")
		local result4 = string.gsub(result3, "%s+", "")
		EnemySpawnsX2.Name = result4
		EnemySpawnsX2.Parent = workspace.EnemySpawns
		EnemySpawnsX2.Anchored = true
	end
end

local function QuestCheck()
    local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Lvl >= 1 and Lvl <= 9 then
        if tostring(game.Players.LocalPlayer.Team) == "Marines" then
            MobName = "Trainee"
            QuestName = "MarineQuest"
            QuestLevel = 1
            Mon = "Trainee"
            NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
        elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
            MobName = "Bandit"
            Mon = "Bandit"
            QuestName = "BanditQuest1"
            QuestLevel = 1
            NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end
    if Lvl >= 210 and Lvl <= 249 then
        MobName = "Dangerous Prisoner"
        QuestName = "PrisonerQuest"
        QuestLevel = 2
        Mon = "Dangerous Prisoner"
        NPCPosition = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
        local matchingCFrames = {}
        local result = string.gsub(MobName, "Lv. ", "")
        local result2 = string.gsub(result, "[%[%]]", "")
        local result3 = string.gsub(result2, "%d+", "")
        local result4 = string.gsub(result3, "%s+", "")
        for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
            if v.Name == result4 then
                table.insert(matchingCFrames, v.CFrame)
            end
            MobCFrame = matchingCFrames
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end
    --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
    local Quests = require(game:GetService("ReplicatedStorage").Quests)
    for i,v in pairs(GuideModule["Data"]["NPCList"]) do
        for i1,v1 in pairs(v["Levels"]) do
            if Lvl >= v1 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if v1 > LevelRequire then
                    NPCPosition = i["CFrame"]
                    QuestLevel = i1
                    LevelRequire = v1
                end
                if #v["Levels"] == 3 and QuestLevel == 3 then
                    NPCPosition = i["CFrame"]
                    QuestLevel = 2
                    LevelRequire = v["Levels"][2]
                end
            end
        end
    end
    if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
        if _G.AutoFarm and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    end
    if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
        if _G.AutoFarm and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
    end
    for i,v in pairs(Quests) do
        for i1,v1 in pairs(v) do
            if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
                QuestName = i
                for i2,v2 in pairs(v1["Task"]) do
                    MobName = i2
                    Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
                end
            end
        end
    end
    if QuestName == "MarineQuest2" then
        QuestName = "MarineQuest2"
        QuestLevel = 1
        MobName = "Chief Petty Officer"
        Mon = "Chief Petty Officer"
        LevelRequire = 120
    elseif QuestName == "ImpelQuest" then
        QuestName = "PrisonerQuest"
        QuestLevel = 2
        MobName = "Dangerous Prisoner"
        Mon = "Dangerous Prisoner"
        LevelRequire = 210
        NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    elseif QuestName == "SkyExp1Quest" then
        if QuestLevel == 1 then
            NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        elseif QuestLevel == 2 then
            NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        end
    elseif QuestName == "Area2Quest" and QuestLevel == 2 then
        QuestName = "Area2Quest"
        QuestLevel = 1
        MobName = "Swan Pirate"
        Mon = "Swan Pirate"
        LevelRequire = 775
    end
    MobName = MobName:sub(1,#MobName)
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
            end
        end
    end
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
                Mon = a
            end
        end
    end
    local matchingCFrames = {}
    local result = string.gsub(MobName, "Lv. ", "")
    local result2 = string.gsub(result, "[%[%]]", "")
    local result3 = string.gsub(result2, "%d+", "")
    local result4 = string.gsub(result3, "%s+", "")
    for i,v in pairs(game.workspace.EnemySpawns:GetChildren()) do
        if v.Name == result4 then
            table.insert(matchingCFrames, v.CFrame)
        else
            table.insert(matchingCFrames, nil)
        end
        MobCFrame = matchingCFrames
    end
    return {
        [1] = QuestLevel,
        [2] = NPCPosition,
        [3] = MobName,
        [4] = QuestName,
        [5] = LevelRequire,
        [6] = Mon,
        [7] = MobCFrame,
        [8] = MonQ,
        [9] = MobCFrameNuber
    }
end

--Velocity
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function onStepped()
    if _G.AutoFarm or _G.TptoKisuneIsland or _G.TptoEventIsland or _G.TptoKisuneshrine or _G.ColletEmber or _G.NeareastFarm or _G.Mirage or _G.AutoEvent or _G.Auto_Gear or _G.TeleportGear or _G.AutoNewWorld or _G.TweenToFruitSpawn or _G.AutoSaber or _G.AutoPole or _G.TeleportIsland or _G.AutoThirdSea or _G.AutoBartiloQuest or _G.Auto_Evo_Race_V2 or _G.AutoDarkCoat or _G.AutoSwanGlasses or _G.AutoTrueTriplKatana or _G.AutoRengoku or _G.AutoEctoplasm or _G.AutoFactory or _G.AutoRainbowHaki or _G.AutoEliteHunter or _G.AutoCastleRaid or _G.AutoMusketeerHat or _G.AutoBuddySword or _G.AutoFarmBone or _G.SpawnBossHallow or _G.AutoKenHakiV2 or _G.AutoObservation or _G.AutoGodHuman or _G.AutoCavander or _G.AutoCursedDualKatana or _G.AutoYamaSword or _G.AutoTushitaSword or _G.AutoSerpentBowor or _G.AutoDarkDagger or _G.AutoCakePrince or _G.AutoDoughV2 or _G.AutoHolyTorch or _G.AutoBuddySwords or _G.AutoFarmBossHallow or MobAura or YamaQuest2 or YamaQuest1 or Auto_Cursed_Dual_Katana or Tushita_Quest2 or Tushita_Quest1 or _G.TeleporttoSeaBeast or _G.TPTOBOAT or Tushita_Quest2 or Tushita_Quest1 or AutoFarmMaterial or teleporttop or _G.AutoFarmChest or _G.AutoAllBoss or _G.AutoBossSelect or _G.AutoFarmBoss or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.FarmMasterySwordList or _G.AutoRaids or _G.AutoNextPlace then
        if not LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            local Noclip = Instance.new("BodyVelocity")
            Noclip.Name = "BodyClip"
            Noclip.Parent = LocalPlayer.Character.HumanoidRootPart
            Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
            Noclip.Velocity = Vector3.new(0, 0, 0)
        end
        if not LocalPlayer.Character:FindFirstChild("Highlight") then
            local Highlight = Instance.new("Highlight")
            Highlight.FillColor = Color3.new(0, 86, 255)
            Highlight.OutlineColor = Color3.new(0, 86, 255)
            Highlight.Parent = LocalPlayer.Character
        end
        for _, v in pairs(LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    else
        if LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        if LocalPlayer.Character:FindFirstChild("Highlight") then
            LocalPlayer.Character:FindFirstChild("Highlight"):Destroy()
        end
    end
end
RunService.Stepped:Connect(onStepped)

--Bring Mob
task.spawn(function()
	while true do task.wait()
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end
	end
end)

task.spawn(function()
    while true do
        task.wait()
        if BringMob then
            local enemies = game.Workspace.Enemies:GetChildren()
            for i, v in pairs(enemies) do
                if not string.find(v.Name, "Boss") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300 then
                    if InMyNetWork(v.HumanoidRootPart) then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                    end
                end
            end
        end
    end
end)

function InMyNetWork(object)
    if isnetworkowner then
        return isnetworkowner(object)
    else
        if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then 
            return true
        end
        return false
    end
end

--No Stun
local function onStunChanged(stun)
    if stun and stun:IsA("IntValue") then
        stun.Value = 0
    end
end

local function setupStunListener()
    local character = game.Players.LocalPlayer.Character
    if character then
        local stun = character:FindFirstChild("Stun")
        if stun then
            stun.Changed:Connect(function()
                onStunChanged(stun)
            end)
        end
    end
end
setupStunListener()

--Destroy Effect
local workspace = game:GetService("Workspace")
local replicatedStorage = game:GetService("ReplicatedStorage")
local targetNames = { CurvedRing = true, SlashHit = true, SwordSlash = true, SlashTail = true, Sounds = true }
local targetEffectNames = { Death = true, Spawn = true }

spawn(function()
    while task.wait() do
        for _, v in pairs(workspace["_WorldOrigin"]:GetChildren()) do
            if targetNames[v.Name] then
                v:Destroy()
            end
        end
    end
end)

spawn(function()
    for _, v in pairs(replicatedStorage.Effect.Container:GetChildren()) do
        if targetEffectNames[v.Name] then
            v:Destroy()
        end
    end
end)

spawn(function()
    for _, v in pairs(game:GetDescendants()) do
        if v:IsA("ParticleEmitter") or v:IsA("Trail") then
            v.Lifetime = NumberRange.new(0)
        elseif v:IsA("Explosion") then
            v.BlastPressure = 1
            v.BlastRadius = 1
        elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then
            v.Enabled = false
        end
    end
end)

--Fast Attack
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local CombatFramework = require(LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = debug.getupvalues(CombatFramework)[2]

local function BladeHits(range)
    local hits = {}
    for _, enemy in ipairs(Workspace.Enemies:GetChildren()) do
        local humanoid = enemy:FindFirstChildOfClass("Humanoid")
        if humanoid and humanoid.Health > 0 then
            local rootPart = humanoid.RootPart
            if rootPart and LocalPlayer:DistanceFromCharacter(rootPart.Position) < range then
                table.insert(hits, rootPart)
            end
        end
    end
    return hits
end

local function AddAttack(hitTargets)
    local activeController = CombatFrameworkR.activeController
    if activeController and activeController.equipped and #hitTargets > 0 then
        local agrs1 = debug.getupvalue(activeController.attack, 5)
        local agrs2 = debug.getupvalue(activeController.attack, 6)
        local agrs3 = debug.getupvalue(activeController.attack, 4)
        local agrs4 = debug.getupvalue(activeController.attack, 7)
        local agrs5 = (agrs1 * 798405 + agrs3 * 727595) % agrs2
        local agrs6 = agrs3 * 798405
        agrs5 = (agrs5 * agrs2 + agrs6) % 1099511627776
        agrs1 = math.floor(agrs5 / agrs2)
        agrs3 = agrs5 - agrs1 * agrs2
        agrs4 = agrs4 + 1
        debug.setupvalue(activeController.attack, 5, agrs1)
        debug.setupvalue(activeController.attack, 6, agrs2)
        debug.setupvalue(activeController.attack, 4, agrs3)
        debug.setupvalue(activeController.attack, 7, agrs4)

        local blade = activeController.currentWeaponModel
        if blade then
            ReplicatedStorage.RigControllerEvent:FireServer("weaponChange", blade.Name)
            activeController.animator.anims.basic[1]:Play(0.01, 0.01, 0.01)
            ReplicatedStorage.Remotes.Validator:FireServer(math.floor(agrs5 / 1099511627776 * 16777215), agrs4)
            ReplicatedStorage.RigControllerEvent:FireServer("hit", hitTargets, 1, "")
        end
    end
end

local function AttackFunc()
    local delay = math.random(0.1, 0.3)
    task.wait(delay)
    AddAttack(BladeHits(65))
end

local lastTick = tick()

local function RunAttack()
    if (tick() - lastTick) >= _G.FastAttackDelay then
        task.spawn(AttackFunc)
        lastTick = tick()
    end
end

local function FastAttackRoutine()
    while _G.FastAttack do
        task.wait(0.05)
        require(ReplicatedStorage.Util.CameraShaker):Stop()
        local combatFramework = require(LocalPlayer.PlayerScripts.CombatFramework)
        local controller = debug.getupvalues(combatFramework)[2]
        if typeof(controller) == "table" then
            local activeController = controller.activeController
            activeController.timeToNextAttack = 0
            activeController.active = false
            activeController.timeToNextBlock = 0
            activeController.focusStart = 0
            activeController.increment = 4
            activeController.blocking = false
            activeController.attacking = false
            activeController.humanoid.AutoRotate = false
        end
    end
end

task.spawn(FastAttackRoutine)

RunService.RenderStepped:Connect(function()
    if FastAttack or _G.FastAttack then
        RunAttack()
    end
end)

--Abadone Quest
function Com(com, ...)
	local Remote = game:GetService('ReplicatedStorage').Remotes:FindFirstChild("Comm" .. com)
	if Remote:IsA("RemoteEvent") then
		Remote:FireServer(...)
	elseif Remote:IsA("RemoteFunction") then
		Remote:InvokeServer(...)
	end
end

--Tween
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer

local function IsAlive(character)
    return character and character:FindFirstChild("Humanoid") and character.Humanoid.Health > 0
end

local function GetDistance(pos1, pos2)
    return (pos1 - pos2).Magnitude
end

function CheckHeight(part)
    local hrp = Client.Character and Client.Character:FindFirstChild("HumanoidRootPart")
    if part and hrp then
        local distanceThreshold = 50
        local distance = hrp.Position.Y - part.Position.Y
        if distance <= distanceThreshold then
            hrp.CFrame = hrp.CFrame * CFrame.new(0, 100, 0)
        end
    end
end

function DisableCollisions(object, enable)
    local parts = object.Character:GetDescendants()
    local batch = {}
    local batchSize = 0
    for _, v in ipairs(parts) do
        if v:IsA("BasePart") then
            table.insert(batch, v)
            batchSize = batchSize + 1
            if batchSize >= 100 then
                for _, part in ipairs(batch) do
                    part.CanCollide = enable
                end
                batch = {}
                batchSize = 0
            end
        end
    end
    for _, part in ipairs(batch) do
        part.CanCollide = enable
    end
end

function GetIsLand(...)
    local RealtargetPos = { ... }
    local targetPos = RealtargetPos[1]
    local RealTarget
    if typeof(targetPos) == "Vector3" then
        RealTarget = targetPos
    elseif typeof(targetPos) == "Instance" then
        RealTarget = targetPos.Position
    elseif type(targetPos) == "number" then
        RealTarget = CFrame.new(unpack(RealtargetPos)).p
    end
    local ReturnValue
    local CheckInOut = math.huge
    if Client.Team then
        for _, v in pairs(worldorigin.PlayerSpawns:FindFirstChild(tostring(Client.Team)):GetChildren()) do
            local ReMagnitude = GetDistance(RealTarget, v:GetModelCFrame().p)
            if ReMagnitude < CheckInOut then
                CheckInOut = ReMagnitude
                ReturnValue = v.Name
            end
        end
        if ReturnValue then
            return ReturnValue
        end
    end
end

function selectSpawnPoint(object)
    local closestSpawn = nil
    local closestDistance = math.huge
    for _, model in pairs(worldorigin.PlayerSpawns[tostring(Client.Team)]:GetChildren()) do
        if model:IsA("Model") then
            for _, spawn in pairs(model:GetChildren()) do
                if spawn:IsA("Part") then
                    if object and spawn then
                        local distance = GetDistance(spawn.Position, object.Position)
                        if distance < closestDistance then
                            closestSpawn = spawn
                            closestDistance = distance
                        end
                    end
                end
            end
        end
    end
    return closestSpawn
end

local PlaceId = game.PlaceId
function FindNearestTeleporter(playerPosition)
    local locations
    if PlaceId == 2753915549 then
        locations = {
            ["SkyLandsI"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
            ["SkyLandsII"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
            ["UnderWater"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
            ["Whirlpool"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
        }
    elseif PlaceId == 4442272183 then
        locations = {
            ["SwanEntrance"] = Vector3.new(-286.989075, 306.137909, 592.882751)
        }
    end
    local nearestLocation
    local minDistance = math.huge
    local playerRootPosition = Client.Character.HumanoidRootPart.Position
    for locationName, locationPosition in pairs(locations) do
        local distance = GetDistance(locationPosition, playerPosition.Position)
        if distance < minDistance then
            minDistance = distance
            nearestLocation = locationName
        end
    end
    local playerToNearest = GetDistance(playerRootPosition, playerPosition.Position)
    if minDistance <= playerToNearest then
        return locations[nearestLocation]
    end
end

function requestEntrance(aJ)
    CancelTween()
    local args = { "requestEntrance", aJ }
    Com("F_", table.unpack(args))
    local Old = Client.Character.HumanoidRootPart.CFrame
    Client.Character.HumanoidRootPart.CFrame = CFrame.new(Old.X, Old.Y, Old.Z)
    task.wait(0.3)
    return
end

function bypassTeleport(object, distance, distanceValue)
    if _G.BypassTP then
        if distance <= distanceValue then
            if _G.tween then
                _G.tween:Play()
            end
        else
            CancelTween()
            stop = false
            pcall(function()
                if tostring(GetIsLand(object)) == "DressTown" or tostring(GetIsLand(object)) == "Sky2" or tostring(GetIsLand(object)) == "Undertown" then
                    local pos = FindNearestTeleporter(object)
                    requestEntrance(pos)
                elseif Client.Data:FindFirstChild("LastSpawnPoint").Value == tostring(GetIsLand(object)) then
                    Client.Character:WaitForChild("Humanoid").Health = 0
                    task.wait(0.1)
                    repeat task.wait() until Client.Character:WaitForChild("Humanoid").Health > 0
                else
                    if not IsAlive(Client.Character) then
                        CancelTween()
                        repeat task.wait() until Client.Character:WaitForChild("Humanoid").Health > 0
                        task.wait(0.75)
                    end
                    if Client.Character:WaitForChild("Humanoid").Health > 0 then
                        local elapsedTime = 0
                        local heartbeatConnection
                        local function onUpdate(deltaTime)
                            elapsedTime = elapsedTime + deltaTime
                            Client.Character.HumanoidRootPart.CFrame = selectSpawnPoint(object).CFrame
                            Com("F_", "SetSpawnPoint")
                            if elapsedTime >= 0.075 or stop then
                                heartbeatConnection:Disconnect()
                            end
                        end
                        heartbeatConnection = game.RunService.Heartbeat:Connect(onUpdate)
                        stop = true
                    end
                    task.wait(0.04)
                    Client.Character:FindFirstChild("Humanoid").Health = 0
                    repeat task.wait() until Client.Character:WaitForChild("Humanoid").Health > 0
                    task.wait(0.1)
                    Com("F_", "SetSpawnPoint")
                end
            end)
        end
        task.wait(0.2)
        return
    end
end

local function toTarget(pos, customDistance)
    while not LocalPlayer.Character or not IsAlive(LocalPlayer.Character) do
        task.wait()
    end

    local humanoidRootPart = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end

    local val = Instance.new("CFrameValue")
    val.Value = humanoidRootPart.CFrame

    local Distance = GetDistance(pos.Position, humanoidRootPart.Position)
    local tween = TweenService:Create(
        val,
        TweenInfo.new(Distance / _G.TweenSpeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0),
        { Value = pos }
    )

    _G.tween_2 = tween
    _G.tween_2:Play()

    local completed = false
    _G.tween_2.Completed:Connect(function()
        completed = true
    end)

    while not completed do
        Distance = GetDistance(pos.Position, humanoidRootPart.Position)
        if Distance < 50 or LocalPlayer.Character.Humanoid.Health <= 0 then
            _G.tween_2:Cancel()
            humanoidRootPart.CFrame = pos
            FastAttack = true
            break
        end
        if customDistance and Distance <= customDistance then
            _G.tween_2:Cancel()
            humanoidRootPart.CFrame = pos
            FastAttack = true
            break
        end
        humanoidRootPart.CFrame = val.Value
        task.wait()
    end

    val:Destroy()
end

function TP(RealTarget, customDistance, Specical)
    local Distance = GetDistance(RealTarget.Position, Client.Character.HumanoidRootPart.Position)

    if not IsAlive(Client.Character) then
        CancelTween()
        repeat task.wait() until Client.Character:WaitForChild("Humanoid").Health > 0
        task.wait(0.75)
    end

    if customDistance then
        if Distance <= customDistance then
            CancelTween()
            Client.Character.HumanoidRootPart.CFrame = RealTarget
            FastAttack = true
            return
        end
    else
        if Distance <= 200 then
            CancelTween()
            Client.Character.HumanoidRootPart.CFrame = RealTarget
            FastAttack = true
            return
        end
    end

    if not Specical then
        bypassTeleport(RealTarget, Distance, 1000)
    end

    local cameraPart = workspace.Camera.Part
    if Distance > 1000 then
        CheckHeight(cameraPart)
    end

    local info = TweenInfo.new(Distance / _G.TweenSpeed, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(Client.Character.HumanoidRootPart, info, { CFrame = RealTarget })
    _G.tween = tween

    tween:Play()
end

function CancelTween()
    if _G.tween then
        _G.tween:Cancel()
        _G.tween = nil
    end
    if _G.tween_2 then
        _G.tween_2:Cancel()
        _G.tween_2 = nil
    end
end

--Hop
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour

local function TPReturner()
    local Site
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    if Site.nextPageCursor then
        foundAnything = Site.nextPageCursor
    end
    local num = 0
    for _, v in pairs(Site.data) do
        local ID = tostring(v.id)
        local Possible = true
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _, Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                        break
                    end
                elseif tonumber(actualHour) ~= tonumber(Existing) then
                    AllIDs = {actualHour}
                end
                num = num + 1
            end
            if Possible then
                table.insert(AllIDs, ID)
                task.wait()
                game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                wait(4)
            end
        end
    end
end

local function Teleport()
    while task.wait() do
        TPReturner()
        if foundAnything ~= "" then
            TPReturner()
        end
    end
end

local function joinNew(OtherServers)
    local HttpService = game:GetService("HttpService")
    if not isfile('servers.sss') then
        writefile('servers.sss', HttpService:JSONEncode({}))
    end
    local dontJoin = HttpService:JSONDecode(readfile('servers.sss'))
    for _, Server in ipairs(OtherServers["data"]) do
        if Server.id ~= game.JobId then
            local j = true
            for _, c in ipairs(dontJoin) do
                if c == Server.id then
                    j = false
                    break
                end
            end
            if j then
                table.insert(dontJoin, Server["id"])
                writefile("servers.sss", HttpService:JSONEncode(dontJoin))
                wait()
                return Server['id']
            end
        end
    end
    return nil
end

local function Hop()
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer
    local HttpService = game:GetService("HttpService")
    local TPService = game:GetService("TeleportService")
    local OtherServers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"))
    local server = joinNew(OtherServers)
    if not server then
        writefile("servers.sss", HttpService:JSONEncode({}))
        server = joinNew(OtherServers)
    end
    if server then
        TPService:TeleportToPlaceInstance(game.PlaceId, server)
    end
end

--Click
function Click()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
end

--Get Fighing Style
function GetFightingStyle(Style)
	ReturnText = ""
	for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.ToolTip == Style then
				ReturnText = v.Name
			end
		end
	end
	if ReturnText ~= "" then
		return ReturnText
	else
		return "Not Have"
	end
end

--Check Mastery
function CheckMasteryWeapon(NameWe, MasNum)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(NameWe) then
		if tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) < tonumber(MasNum) then
			return "true DownTo"
		elseif tonumber(game.Players.LocalPlayer.Character:FindFirstChild(NameWe).Level.Value) >= tonumber(MasNum) then
			return "true UpTo"
		end
	end
	return "else"
end

--Get Weapon Inventory
function GetWeaponInventory(Weaponname)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Sword" then
				if v.Name == Weaponname then
					return true
				end
			end
		end
	end
	return false
end

--Get Material
function GetMaterial(matname)
	for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if type(v) == "table" then
			if v.Type == "Material" then
				if v.Name == matname then
					return v.Count
				end
			end
		end
	end
	return 0
end

--All Material
local worldMaterials = {
    World1 = {
        "Magma Ore",
        "Leather",
        "Scrap Metal",
        "Angel Wings",
        "Fish Tail"
    },
    World2 = {
        "Magma Ore",
        "Scrap Metal",
        "Radioactive Material",
        "Vampire Fang",
        "Mystic Droplet"
    },
    World3 = {
        "Mini Tusk",
        "Fish Tail",
        "Scrap Metal",
        "Dragon Scale",
        "Conjured Cocoa",
        "Demonic Wisp",
        "Gunpowder"
    }
}

local AllMaterial
if World1 then
    AllMaterial = worldMaterials.World1
elseif World2 then
    AllMaterial = worldMaterials.World2
elseif World3 then
    AllMaterial = worldMaterials.World3
end

if AllMaterial then
    table.sort(AllMaterial)
end

--Check Material
local worldMaterials = {
    World1 = {
        ["Magma Ore"] = {
            MaterialMob = { "Military Soldier", "Military Spy" },
            CFrameMon = CFrame.new(-5815, 84, 8820)
        },
        ["Leather"] = {
            MaterialMob = { "Brute" },
            CFrameMon = CFrame.new(-1145, 15, 4350)
        },
        ["Scrap Metal"] = {
            MaterialMob = { "Brute" },
            CFrameMon = CFrame.new(-1145, 15, 4350)
        },
        ["Angel Wings"] = {
            MaterialMob = { "God's Guard" },
            CFrameMon = CFrame.new(-4698, 845, -1912)
        },
        ["Fish Tail"] = {
            MaterialMob = { "Fishman Warrior", "Fishman Commando" },
            CFrameMon = CFrame.new(61123, 19, 1569)
        }
    },
    World2 = {
        ["Magma Ore"] = {
            MaterialMob = { "Magma Ninja" },
            CFrameMon = CFrame.new(-5428, 78, -5959)
        },
        ["Scrap Metal"] = {
            MaterialMob = { "Swan Pirate" },
            CFrameMon = CFrame.new(878, 122, 1235)
        },
        ["Radioactive Material"] = {
            MaterialMob = { "Factory Staff" },
            CFrameMon = CFrame.new(295, 73, -56)
        },
        ["Vampire Fang"] = {
            MaterialMob = { "Vampire" },
            CFrameMon = CFrame.new(-6033, 7, -1317)
        },
        ["Mystic Droplet"] = {
            MaterialMob = { "Water Fighter", "Sea Soldier" },
            CFrameMon = CFrame.new(-3385, 239, -10542)
        }
    },
    World3 = {
        ["Mini Tusk"] = {
            MaterialMob = { "Mythological Pirate" },
            CFrameMon = CFrame.new(-13545, 470, -6917)
        },
        ["Fish Tail"] = {
            MaterialMob = { "Fishman Raider", "Fishman Captain" },
            CFrameMon = CFrame.new(-10993, 332, -8940)
        },
        ["Scrap Metal"] = {
            MaterialMob = { "Jungle Pirate" },
            CFrameMon = CFrame.new(-12107, 332, -10549)
        },
        ["Dragon Scale"] = {
            MaterialMob = { "Dragon Crew Archer", "Dragon Crew Warrior" },
            CFrameMon = CFrame.new(6594, 383, 139)
        },
        ["Conjured Cocoa"] = {
            MaterialMob = { "Cocoa Warrior", "Chocolate Bar Battler", "Sweet Thief", "Candy Rebel" },
            CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625)
        },
        ["Demonic Wisp"] = {
            MaterialMob = { "Demonic Soul" },
            CFrameMon = CFrame.new(-9507, 172, 6158)
        },
        ["Gunpowder"] = {
            MaterialMob = { "Pistol Billionaire" },
            CFrameMon = CFrame.new(-469, 74, 5904)
        }
    }
}

local function CheckMaterial(v1)
    local materialData
    if World1 then
        materialData = worldMaterials.World1[v1]
    elseif World2 then
        materialData = worldMaterials.World2[v1]
    elseif World3 then
        materialData = worldMaterials.World3[v1]
    end

    if materialData then
        MaterialMob = materialData.MaterialMob
        CFrameMon = materialData.CFrameMon
    end
end

--Custom FindFristChild
local function CustomFindFirstChild(tablename)
	for i, v in pairs(tablename) do
		if game:GetService("Workspace").Enemies:FindFirstChild(v) then
			return true
		end
	end
	return false
end
----------------------------------------------------------------------------------------------------------------------Info Tab
Info:AddDiscordInvite({
	Name = "Luminary Hub",
	Logo = "rbxassetid://15674916964",
	Invite = "https://discord.gg/J9zNHMNP7s"
})

local Skid = Info:AddParagraph({"This script 100% skid 😏😏😏"})

local HopSivi = Info:AddButton({"Hop Sivi", function()
	Hop()
end})
----------------------------------------------------------------------------------------------------------------------Main Tab
local ConfigFarm = Main:AddSection({"Config Farm"})

local SelectWeaponDropdown = Main:AddDropdown({
	Name = "Select Weapon",
	Description = "Chọn vũ khí",
	Options = {"Melee", "Sword", "Fruit"},
	Default = _G.Settings.SelectWeapon,
	Flag = _G.Settings.SelectWeapon,
	Callback = function(value)
		SelectWeapon = value
		_G.Settings.SelectWeapon = value
		SaveSettings()
	end
})
task.spawn(function()
    while wait() do
        local backpack = game.Players.LocalPlayer.Backpack
        local toolTipToFind = SelectWeapon
        if SelectWeapon == "Fruit" then
            toolTipToFind = "Blox Fruit"
        end
        for _, v in pairs(backpack:GetChildren()) do
            if v.ToolTip == toolTipToFind then
                if backpack:FindFirstChild(tostring(v.Name)) then
                    _G.SelectWeapon = v.Name
                    break
                end
            end
        end
    end
end)

local FastAttackSpeedDropdown = Main:AddDropdown({
	Name = "Fast Attack Speed",
	Description = "Tốc độ đánh nhanh",
	Options = {"0", "0.05", "0.1", "0.15", "0.2", "0.25", "0.3", "0.35", "0.4", "0.45", "0.5"},
	Default = _G.Settings.FastAttackSpeed,
	Flag = _G.Settings.FastAttackSpeed,
	Callback = function(value)
        _G.FastType = value
		_G.Settings.FastAttackSpeed = value
		SaveSettings()
	end
})
_G.FastAttackDelay = tonumber(_G.FastType) or 0.1

local MethodFarmDropdown = Main:AddDropdown({
	Name = "Method Farm",
	Description = "Cách cày",
	Options = {"Upper", "Behind", "Below"},
	Default = _G.Settings.Method,
	Flag = _G.Settings.Method,
	Callback = function(value)
		_G.Method = value
		_G.Settings.Method = value
		SaveSettings()
	end
})
task.spawn(function()
    while task.wait(0) do
        local method = _G.Method
        local distance = _G.DistanceAutoFarm
        local angle = 0
        if method == "Behind" then
            MethodFarm = CFrame.new(0, 0, distance)
        elseif method == "Below" then
            angle = 90
            MethodFarm = CFrame.new(0, -distance, 0) * CFrame.Angles(math.rad(angle), 0, 0)
        elseif method == "Upper" then
            MethodFarm = CFrame.new(0, distance, 0)
        else
            MethodFarm = CFrame.new(0, distance, 0)
        end
    end
end)

local MainFarm = Main:AddSection({"Main Farm"})

local AutoFarmLevelToggle = Main:AddToggle({
	Name = "Auto Farm Level",
	Description = "Tự động cày cấp",
	Default = _G.Settings.AutoFarm
})
AutoFarmLevelToggle:Callback(function(value)
    _G.AutoFarm = value
	_G.AutoBuyAbility = value
	_G.AutoMelee = value
    _G.Settings.AutoFarm = value
    SaveSettings()
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
    while task.wait() do
        if _G.AutoMelee then
            if game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value <= 2549 then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = 100
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end
        end
    end
end)
AttackRandomType_MonCFrame = 1
spawn(function()
	while wait() do 
		AttackRandomType_MonCFrame = math.random(1,5)
		wait(0.3)
	end
end)
local SetCFarme = 1
spawn(function()
	while wait() do
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		pcall(function()
			if _G.AutoFarm then  
				if _G.AutoFarmFast and (MyLevel >= 15 and MyLevel <= 300) then
					if MyLevel >= 15 and MyLevel <= 300 then
						Auto_Farm_Level_Fast()
						return
					end
				else
					if QuestC.Visible == true then
						if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == QuestCheck()[3] then
									if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat task.wait()
											if _G.Auto_CFrame then
												SetCFarme = 1
											end
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
											else
												PosMon = v.HumanoidRootPart.CFrame
												v.HumanoidRootPart.Size = Vector3.new(60,60,60)
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid.WalkSpeed = 0
												v.Head.CanCollide = false
												BringMob = true
												_G.FastType = "Fast"
												EquipWeapon(_G.SelectWeapon)
												v.HumanoidRootPart.Transparency = 1
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)

												if not _G.AutoFarm or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO then
													_G.FastAttack = true
												end
											end
										until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
									end
								end
							end
						else
							--UnEquipWeapon(_G.SelectWeapon)
							if _G.Auto_CFrame and not _G.AutoFarmFast then
								toTarget(QuestCheck()[7][SetCFarme] * MethodFarm)
								if (QuestCheck()[7][SetCFarme].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									if SetCFarme == nil or SetCFarme == '' then
										SetCFarme = 1
									elseif SetCFarme >= #QuestCheck()[7] then
										SetCFarme = 1
									end
									SetCFarme =  SetCFarme + 1
									wait(0.5)
								end
							else
								if not _G.AutoFarmFast then
									if AttackRandomType_MonCFrame == 1 then
										toTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
									elseif AttackRandomType_MonCFrame == 2 then
										toTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
									elseif AttackRandomType_MonCFrame == 3 then
										toTarget(QuestCheck()[7][1] * CFrame.new(20,30,0))
									elseif AttackRandomType_MonCFrame == 4 then
										toTarget(QuestCheck()[7][1] * CFrame.new(0,30,-20))
									elseif AttackRandomType_MonCFrame == 5 then
										toTarget(QuestCheck()[7][1] * CFrame.new(-20,30,0))
									else
										toTarget(QuestCheck()[7][1] * CFrame.new(0,30,20))
									end
								end
							end
						end
					else
						toTarget(QuestCheck()[2])
						if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
							BringMob = false
							wait(0.2)
							game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
							toTarget(QuestCheck()[7][1] * MethodFarm)
						end
					end
				end
			end
		end)
	end
end)

if World1 then
	local AutoFarmLevelFastToggle = Main:AddToggle({
		Name = "Auto Farm Level Fast",
		Description = "Tự động cày cấp Nhanh",
		Default = true
	})
	AutoFarmLevelFastToggle:Callback(function(value)
		_G.AutoFarmFast = value
	end)
end
_G.ChackPlayer = 0
_G.ChackPlayer2 = _G.ChackPlayer
local AllPlayersTableSkipFarm = {}
function Auto_Farm_Level_Fast()
	local PlayersAll = game.Players:GetPlayers()
	local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
	local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
	local Player = string.split(quest, " ")[2]
	getgenv().SelectPly = string.split(quest, " ")[2]
	pcall(function()
		local MyLevel = game.Players.LocalPlayer.Data.Level.Value
		local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
		CFrameMon = CFrame.new(-7719.66895, 5611.42334, -1445.98816, 0.906745553, -1.43169192e-08, -0.421678245, 5.939971e-08, 1, 9.37764852e-08, 0.421678245, -1.10078972e-07, 0.906745553)
		if _G.AutoFarm and MyLevel >= 15 and MyLevel <= 69 and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
		end
		if MyLevel >= 15 and MyLevel <= 69 then
			for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
				if v.Name == "Shanda" then
					if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
						repeat
							task.wait()
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							v.Head.CanCollide = false
							BringMob = true
							EquipWeapon(_G.SelectWeapon)
							if MyLevel >= 70 and MyLevel <= 310 then
								if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
								end
							end
							_G.FastType = "Slow"
							PosMon = v.HumanoidRootPart.CFrame
							v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
							v.HumanoidRootPart.Transparency = 1
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							if not _G.AutoFarm or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO or _G.SuperFastAttack then
								_G.FastAttack = true
							end
						until not v.Parent or not _G.AutoFarm or v.Humanoid.Health < 0
						toTarget(CFrameMon)
					end
				else
					BringMob = false
					toTarget(CFrameMon)
				end
			end
		elseif MyLevel >= 70 and MyLevel <= 310 then
			if QuestC.Visible == false then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
			elseif QuestC.Visible == true then
				if string.find(quest, "Defeat") then
					repeat
						task.wait()
						if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
						end
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
						end
						EquipWeapon(_G.SelectWeapon)
						toTarget(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5))
						game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size = Vector3.new(120, 120, 120)
						if (game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6 then
							game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
							game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
						end
						if (game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 6 then
							game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
							game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
						end
						_G.FastType = "Fast"
						if not _G.AutoFarm or not _G.Auto_Farm_LevelO or _G.Auto_Farm_Level or _G.Auto_Farm_LevelO or _G.SuperFastAttack then
							_G.FastAttack = true
						end
					until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or not Auto_Farm_Level_Fast() or MyLevel >= 310
				end
			end
		end
	end)
end
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			if _G.BringMob then  
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.AutoFarm and BringMob and v.Name == Mon and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 200 then
						v.HumanoidRootPart.CFrame = PosMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end
		end)
	end) 
end)

local AutoFarmNearestMonsterToggle = Main:AddToggle({
	Name = "Auto Farm Nearest Monster",
	Description = "Tự động cày quái gần nhất",
	Default = _G.Settings.NeareastFarm
})
AutoFarmNearestMonsterToggle:Callback(function(value)
    _G.NeareastFarm = value
    _G.Settings.NeareastFarm = value
    SaveSettings() 
    if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
	while wait(.0) do
		if _G.Settings.NeareastFarm then
			pcall(function()
				for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name and v:FindFirstChild("Humanoid") then
						if v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1500 then
							repeat
								game:GetService("RunService").Heartbeat:wait()
								EquipWeapon(_G.SelectWeapon)
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									local args = {
										[1] = "Buso"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								PosMon = v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Head.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								v.Humanoid:ChangeState(16)
								BringMob = true
								FastAttack = true
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								if not FastAttack then
									game:GetService 'VirtualUser':CaptureController()
									game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								PosMon = v.HumanoidRootPart.CFrame
							until not _G.NeareastFarm or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
						end
					end
				end
			end)
		end
	end
end)

local BoneFarm = Main:AddSection({"Bone Farm"})

local TotalBone = Main:AddParagraph({"Total Bone"})
spawn(function()
	while wait() do
		TotalBone:Set("Status : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check"))
	end
end)

local AutoFarmBoneToggle = Main:AddToggle({
	Name = "Auto Farm Bone",
	Description = "Tự động cày xương",
	Default = _G.Settings.AutoFarmBone
})
AutoFarmBoneToggle:Callback(function(value)
	_G.AutoFarmBone  = value
	_G.Settings.AutoFarmBone = value
	SaveSettings()
	if not value then
		CancelTween()
	end 
end)
spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if _G.BringMob and _G.AutoFarmBone and StartMagnetBoneMon then
            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).magnitude <= 500 then
                    v.HumanoidRootPart.CFrame = PosMonBone
                    v.HumanoidRootPart.CanCollide = false
                    v.Humanoid.JumpPower = 0
                    v.Humanoid.WalkSpeed = 0
                    v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                    v.HumanoidRootPart.Transparency = 1
                    v.Head.CanCollide = false
                    if v.Humanoid:FindFirstChild("Animator") then
                        v.Humanoid.Animator:Destroy()
                    end
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            end
        end
    end)
end)
local Number2 = 1
local BoneTabel = {
    ["Mon"] = {"Reborn Skeleton","Demonic Soul","Living Zombie","Posessed Mummy"},
    ["Boss"] = {"Soul Reaper"},
    ["Item"] = "Hallow Essence",
}
local SetCFarmeBone = 1
function GetBone_CFrame_Mon()
    local matchingCFrames = {}
    for _, Mon in ipairs(BoneTabel["Mon"]) do
        local result = Mon:gsub("Lv. ", ""):gsub("[%[%]]", ""):gsub("%d+", ""):gsub("%s+", "")
        for _, v in ipairs(game.workspace.EnemySpawns:GetChildren()) do
            if v.Name == result then
                table.insert(matchingCFrames, v.CFrame)
            end
        end
    end
    return matchingCFrames
end
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmBone then
                for _, _Boss in ipairs(BoneTabel["Boss"]) do
                    local _Item = BoneTabel["Item"]
                    if game:GetService("Workspace").Enemies:FindFirstChild(_Boss) or game:GetService("ReplicatedStorage"):FindFirstChild(_Boss) then
                        for _, _v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(_v1.Name, _Boss) then
                                if _v1:FindFirstChild("Humanoid") and _v1:FindFirstChild("HumanoidRootPart") and _v1.Humanoid.Health > 0 then
                                    repeat wait()
                                        EquipWeapon(_G.SelectWeapon)
                                        _v1.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                        BringMob = true
                                        toTarget(_v1.HumanoidRootPart.CFrame * MethodFarm)
                                        if (_v1.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                            _G.FastAttack = true
                                        end
                                    until not _G.AutoFarmBone or _v1.Humanoid.Health <= 0 or not _v1.Parent or _v1.Humanoid.Health <= 0
                                    BringMob = false
                                end
                            end
                        end
                    else
                        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(_Item) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(_Item) then
                            EquipWeapon(_Item)
                            toTarget(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
                        else
                            for _, _Mon in next, BoneTabel["Mon"] do
                                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if string.find(v.Name, _Mon) then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    PosMon = v.HumanoidRootPart.CFrame
                                                    EquipWeapon(_G.SelectWeapon)
                                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
                                                    BringMob = true
                                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                                    if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                                        _G.FastAttack = true
                                                    end
                                                until not _G.AutoFarmBone or v.Humanoid.Health <= 0 or not v.Parent or v.Humanoid.Health <= 0
                                            else
                                                local CFrameMon = CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625)
                                                repeat wait() toTarget(CFrameMon) until (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.AutoFarmBone
                                            end
                                        end
                                    end
                                else
                                    if _G.Auto_CFrame then
                                        toTarget(GetBone_CFrame_Mon()[SetCFarmeBone] * MethodFarm)
                                        if (GetBone_CFrame_Mon()[SetCFarmeBone].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
                                            if SetCFarmeBone == nil or SetCFarmeBone == '' then
                                                SetCFarmeBone = 1
                                            elseif SetCFarmeBone >= #GetBone_CFrame_Mon() then
                                                SetCFarmeBone = 1
                                            end
                                            SetCFarmeBone =  SetCFarmeBone + 1
                                            wait(0.5)
                                        end
                                    else
                                        if AttackRandomType_MonCFrame == 1 then
                                            toTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
                                        elseif AttackRandomType_MonCFrame == 2 then
                                            toTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
                                        elseif AttackRandomType_MonCFrame == 3 then
                                            toTarget(GetBone_CFrame_Mon()[1] * CFrame.new(20,30,0))
                                        elseif AttackRandomType_MonCFrame == 4 then
                                            toTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,-20))
                                        elseif AttackRandomType_MonCFrame == 5 then
                                            toTarget(GetBone_CFrame_Mon()[1] * CFrame.new(-20,30,0))
                                        else
                                            toTarget(GetBone_CFrame_Mon()[1] * CFrame.new(0,30,20))
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local AutoRandomBoneToggle = Main:AddToggle({
	Name = "Auto Random Bone",
	Description = "Tự động random xương",
	Default = _G.Settings.AutoRandomBone
})
AutoRandomBoneToggle:Callback(function(value)
	_G.AutoRandomBone = value
	_G.Settings.AutoRandomBone = value
	SaveSettings()
end)
spawn(function()
    while wait(.0) do
        if _G.AutoRandomBone then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
        end
    end
end)

local AutoTryLuckToggle = Main:AddToggle({
	Name = "Auto Try Luck",
	Description = "Tự động thử vận may",
	Default = _G.Settings.TryLuck
})
AutoTryLuckToggle:Callback(function(value)
	TryLuck = value
	_G.Settings.TryLuck = value
	SaveSettings()
end)
spawn(function()
	while wait(0.1) do
		if TryLuck then
			toTarget(CFrame.new(-8652.99707,143.450119,6170.50879,-0.983064115,-2.4800553e-10,0.18326205,-1.7891039e-9,1,-8.243923e-9,-0.18326205,-8.43218e-9,-0.983064115))
			wait()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 1)
		end
	end
end)

local AutoPrayToggle = Main:AddToggle({
	Name = "Auto Pray",
	Description = "Tự động cầu nguyện",
	Default = _G.Settings.Pray
})
AutoPrayToggle:Callback(function(value)
	Pray = value
	_G.Settings.Pray = value
	SaveSettings()
end)
spawn(function()
	while wait(0.1) do
		if Pray then
			toTarget(
				CFrame.new(-8652.99707,143.450119,6170.50879,-0.983064115,-2.4800553e-10,0.18326205,-1.7891039e-9,1,-8.243923e-9,-0.18326205,-8.43218e-9,-0.983064115))
			wait()
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
		end
	end
end)

local CakeFarm = Main:AddSection({"Cake Farm"})

local NeedKill = Main:AddParagraph({"Need Kill"})
spawn(function()
	while wait() do
		pcall(function()
			local cakeStatus = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
			if string.len(cakeStatus) == 88 then
				NeedKill:Set("Status : " .. string.sub(cakeStatus, 39, 41))
			elseif string.len(cakeStatus) == 87 then
				NeedKill:Set("Status : " .. string.sub(cakeStatus, 39, 40))
			elseif string.len(cakeStatus) == 86 then
				NeedKill:Set("Status : " .. string.sub(cakeStatus, 39, 39))
			else
				NeedKill:Set("Status : Cake Prince Is Spawning")
			end
		end)
	end
end)

local AutoFarmCakePrinceToggle = Main:AddToggle({
	Name = "Auto Farm Cake Prince",
	Description = "Tự động cày tư lệnh bột",
	Default = _G.Settings.AutoCakePrince
})
AutoFarmCakePrinceToggle:Callback(function(value)
	_G.AutoCakePrince = value
	_G.Settings.AutoCakePrince = value
	SaveSettings()
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
spawn(function()
	while wait() do
		if _G.AutoCakePrince then
			pcall(function()
				if game.ReplicatedStorage:FindFirstChild("Cake Prince") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or  game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then   
						if _G.BypassTP then
						_G.BypassTP = false
					end
					if not game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
						for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
							if x.Name == "Cake Prince" or x.Name == "Dough King" then
								if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									_G.BypassTP = false
									wait(1.5)
									toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
									return
								end
							end
						end
					end
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Cake Prince" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
										toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
										return
									end
									EquipWeapon(_G.SelectWeapon)
									v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
									BringMob = true
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
										_G.FastAttack = true
									end
									sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
								until not _G.AutoCakePrince or not v.Parent or v.Humanoid.Health <= 0
							end
						else
							for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
								if x.Name == "Cake Prince" or x.Name == "Dough King" then
									if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
										toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
										return
									end
								end
							end
						end
					end
				else 
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") or game.ReplicatedStorage:FindFirstChild("Cake Prince") then
						for _,x in pairs(game.ReplicatedStorage:GetChildren()) do 
							if x.Name == "Cake Prince" or x.Name == "Dough King" then
								if (x.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
									toTarget(CFrame.new(-2145.89722, 70.0088272, -12399.6016, 0.99999702, 1.58276379e-08, 0.00245277886, -1.57982978e-08, 1, -1.19813057e-08, -0.00245277886, 1.19425199e-08, 0.99999702))
									return
								end
							end
						end
					else
						if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
								if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
									repeat wait()
										PosMon = v.HumanoidRootPart.CFrame
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
										BringMob = true
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
											_G.FastAttack = true
										end
									until _G.AutoCakePrince == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						else
							BringMob = false
							toTarget(GetCake_CFrame_Mon() * MethodFarm)
							wait(0.5)
						end
					end
				end
			end)
		end
	end
end)

local AutoSpawnCakePrinceToggle = Main:AddToggle({
	Name = "Auto Spawn Cake Prince",
	Description = "Tự động triệu hồi tư lệnh bột",
	Default = true
})
AutoSpawnCakePrinceToggle:Callback(function(value)
	_G.Spawnka = value
end)
spawn(function()
	while _G.Spawnka do 
		wait()
		game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner")
	end
end)

local ChestFarm = Main:AddSection({"Chest Farm"})

local AutoFarmChestToggle = Main:AddToggle({
	Name = "Auto Farm Chest",
	Description = "Tự động cày rương",
	Default = _G.Settings.AutoFarmChest
})
AutoFarmChestToggle:Callback(function(value)
	_G.AutoFarmChest = value
	_G.Settings.AutoFarmChest = value
	SaveSettings()
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
_G.MagnitudeAdd = 0
spawn(function()
    while wait() do 
        if _G.AutoFarmChest then
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do 
                if v.Name:find("Chest") then
                    if game:GetService("Workspace"):FindFirstChild(v.Name) then
                        if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000+_G.MagnitudeAdd then
                            repeat wait()
                                if game:GetService("Workspace"):FindFirstChild(v.Name) then
                                    EquipWeapon(_G.SelectWeapon)
                                    toTarget(v.CFrame)
                                    UnEquipWeapon(_G.SelectWeapon)
                                end
                            until _G.AutoFarmChest == false or not v.Parent
                            toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            _G.MagnitudeAdd = _G.MagnitudeAdd+3000
                            break
                        end
                    end
                end
            end
        end
    end
end)

local AutoFarmChestToggle = Main:AddToggle({
	Name = "Auto Farm Chest Fast",
	Description = "Tự động cày rương nhanh",
	Default = _G.Settings.ChestBypassBypass
})
AutoFarmChestToggle:Callback(function(value)
	_G.ChestBypass = value
	_G.Settings.ChestBypassBypass = value
	SaveSettings()
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
spawn(function()
    while wait() do
    if _G.ChestBypass then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name, "Chest") then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                        wait(.15)
                    end
                end
                for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if string.find(v.Name, "Chest") and v:IsA("TouchTransmitter") then
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
                        wait()
                        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while task.wait() do
        if _G.ChestBypass then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
        end
    end
end)

local MaterialFarm = Main:AddSection({"Material Farm"})

local SelectMaterialDropdown = Main:AddDropdown({
	Name = "Select Material",
	Description = "Chọn nguyên liệu",
	Options = AllMaterial,
	Default = _G.Settings.SelectModeMaterial,
	Flag = "...",
	Callback = function(value)
	    SelectModeMaterial = value
		_G.Settings.SelectModeMaterial = value
		SaveSettings()
	end
})

local AutoFarmSelectedMaterialToggle = Main:AddToggle({
	Name = "Auto Farm Selected Material",
	Description = "Tự động cày nguyên liệu đã chọn",
	Default = _G.Settings.AutoFarmMaterial
})
AutoFarmSelectedMaterialToggle:Callback(function(value)
	AutoFarmMaterial = value
	_G.Settings.AutoFarmMaterial = value
	SaveSettings()
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
task.spawn(function()
	while task.wait() do
		if AutoFarmMaterial then
			xpcall(function()
				if (SelectModeMaterial ~= "") then
					CheckMaterial(SelectModeMaterial);
					if CustomFindFirstChild(MaterialMob) then
						for v0, v1 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if (AutoFarmMaterial and table.find(MaterialMob, v1.Name) and v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and (v1.Humanoid.Health > 0)) then
								repeat
									task.wait();
									FarmtoTarget = toTarget(v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1));
									if (v1:FindFirstChild("HumanoidRootPart") and v1:FindFirstChild("Humanoid") and ((v1.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150)) then
										if FarmtoTarget then FarmtoTarget:Stop(); end
										FastAttack = true;
										EquipWeapon(_G.SelectWeapon);
										spawn(function()
											for v4, v5 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
												if (v5.Name == v1.Name) then
													spawn(function()
														if InMyNetWork(v5.HumanoidRootPart) then
															v5.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame;
															v5.Humanoid.JumpPower = 0;
															v5.Humanoid.WalkSpeed = 0;
															v5.HumanoidRootPart.CanCollide = false;
															v5.Humanoid:ChangeState(14);
															v5.Humanoid:ChangeState(16);
															v5.Humanoid:ChangeState(11);
															v5.HumanoidRootPart.Size = Vector3.new(55, 55, 55);
														end
													end);
												end
											end
										end);
										if (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and (game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 150)) then
											game:service("VirtualInputManager"):SendKeyEvent(true, "V", false,game);
											game:service("VirtualInputManager"):SendKeyEvent(false, "V",false, game);
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v1.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
									end
								until not CustomFindFirstChild(MaterialMob) or not AutoFarmMaterial or (v1.Humanoid.Health <= 0) or not v1.Parent
								FastAttack = false;
							end
						end
					else
						FastAttack = false;
						Modstween = toTarget(CFrameMon);
						if (World1 and (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
							if Modstween then Modstween:Stop(); end
							wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
								"requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
						elseif (World1 and not (table.find(MaterialMob, "Fishman Commando")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 50000)) then
							if Modstween then Modstween:Stop(); end
							wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
								"requestEntrance", Vector3.new(3864.8515625, 6.6796875, -1926.7841796875));
						elseif (World1 and (table.find(MaterialMob, "God's Guard")) and ((CFrameMon.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).magnitude > 3000)) then
							if Modstween then Modstween:Stop(); end
							wait(0.5); game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
								"requestEntrance",
								Vector3.new(-4607.8227539063, 872.54248046875, -1667.5568847656));
						elseif ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
							if Modstween then 
								Modstween:Stop()
								spawn(function()
									if posrandom <= 1 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(0,0,35)
										posrandom = posrandom + 0.1
									elseif posrandom >= 1 and posrandom <= 2 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
										posrandom = posrandom + 0.1
									elseif posrandom >= 2 and posrandom <= 3 then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon *CFrame.new(0,0,-35)
										posrandom = posrandom + 0.1
									elseif posrandom >= 3 and posrandom <= 4  then
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(-35,0,0)
										posrandom = posrandom + 0.1
								elseif posrandom >=4 and posrandom <= 5 then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon * CFrame.new(35,0,0)
									posrandom = 0
								end
							end)
						end
						   -- game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
						end
					end
				end
			end, function(x)
			   
			end)
		else
			break;
		end
	end
end)
----------------------------------------------------------------------------------------------------------------------Setting Tab
local SafeModeToggle = Set:AddToggle({
	Name = "Safe Mode",
	Description = "Chế độ an toàn",
	Default = _G.Settings.SafeMode
})
SafeModeToggle:Callback(function(value)
	_G.SafeMode = value
	_G.Settings.SafeMode = value
	SaveSettings()
end)
spawn(function()
	while _G.Settings.SafeMode do
		task.wait()
		if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
			local HealthPercent = (game.Players.LocalPlayer.Character.Humanoid.Health / game.Players.LocalPlayer.Character.Humanoid.MaxHealth) * 100
			if HealthPercent < 20 then
				game.Players.LocalPlayer.Character:MoveTo(Vector3.new(0, 100, 0))
				game:GetService("StarterGui"):SetCore("SendNotification", {
					Title = "Crazzy Hub V3",
					Text = "Safe Mode Running",
					Icon = "rbxassetid://15689000757",
					Duration = 1
				})
			end
		end
	end
end)

local AutoHakiToggle = Set:AddToggle({
	Name = "Auto Haki",
	Description = "Tự động bật haki",
	Default = true
})
AutoHakiToggle:Callback(function(value)
	_G.AutoHaki = value
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoHaki then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end
		end)
	end
end)

local BringMobToggle = Set:AddToggle({
	Name = "Bring Mob",
	Description = "Gom quái",
	Default = true
})
BringMobToggle:Callback(function(value)
	_G.BringMob = value
end)

local FastAttackToggle = Set:AddToggle({
	Name = "Fast Attack",
	Description = "Đánh nhanh",
	Default = true
})
FastAttackToggle:Callback(function(value)
	_G.FastAttack = value
end)

Set:AddSlider({
	Name = "Distance Farm",
	Min = 1,
	Max = 50,
	Increase = 1,
	Default = _G.Settings.DistanceAutoFarm,
	Callback = function(value)
		_G.DistanceAutoFarm = value
		_G.Settings.DistanceAutoFarm = value
		SaveSettings()
	end
})

Set:AddSlider({
	Name = "Tween Speed",
	Min = 1,
	Max = 350,
	Increase = 1,
	Default = _G.Settings.TweenSpeed,
	Callback = function(value)
		_G.TweenSpeed = value
		_G.Settings.TweenSpeed = value
		SaveSettings()
	end
})
----------------------------------------------------------------------------------------------------------------------Farm Tab
local AutoCastleRaidToggle = Farm:AddToggle({
	Name = "Auto Castle Raid",
	Description = "Tự động đánh hải tặc ở lâu đài",
	Default = _G.Settings.AutoCastleRaid
})
AutoCastleRaidToggle:Callback(function(value)
	_G.AutoCastleRaid = value
	_G.Settings.AutoCastleRaid = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoCastleRaid then
				if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
							repeat wait()
								PosMon = v.HumanoidRootPart.CFrame
								EquipWeapon(_G.SelectWeapon)
								v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)  
								BringMob = true
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								if (v.HumanoidRootPart.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									game:GetService("VirtualUser"):CaptureController()
									game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
								end
							until not _G.AutoCastleRaid or not v.Parent or v.Humanoid.Health <= 0
							BringMob = false
						end
					end
				else
					if (CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
						for i,v in pairs(game.ReplicatedStorage:GetChildren()) do
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							end
						end
					end
					toTarget(CFrame.new(-5118.48682, 314.54129, -2958.64404, -0.387232125, 1.81507858e-08, 0.921982229, -7.54388907e-08, 1, -5.13709999e-08, -0.921982229, -8.94458196e-08, -0.387232125))
				end
			end
		end)  
	end
end)

local AutoSoulGuitarToggle = Farm:AddToggle({
	Name = "Auto Soul Guitar",
	Description = "Tự động lấy guitar linh hồn",
	Default = _G.Settings.AutoSoulGuitar
})
AutoSoulGuitarToggle:Callback(function(value)
	AutoSoulGuitar = value
	_G.Settings.AutoSoulGuitar = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
	while task.wait() do
		pcall(function()
			if AutoSoulGuitar then
				if (GetWeaponInventory("Soul Guitar") == false) then
					if ((CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000) then
						if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy", true)
						elseif (game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0) then
							if (game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0) then
								Quest2 = true
								repeat
									task.wait()
									toTarget(CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875))
								until ((CFrame.new(-8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not AutoSoulGuitar
								wait(1)
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector)
								wait(1)
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector)
								wait(1)
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector)
								wait(1)
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector)
								wait(1)
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector)
								wait(1)
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector)
								wait(1)
								fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector)
								wait(1)
							elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
								if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
									Quest4 = true
									repeat
										task.wait()
										toTarget(CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625))
									until ((CFrame.new(-9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not AutoSoulGuitar
									wait(1)
									toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector)
									wait(1)
									toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector)
									wait(1)
									toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector)
									wait(1)
									toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector)
									wait(1)
									toTarget(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
									wait(1)
									fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector)
								else
									Quest3 = true
								end
							else
								if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
									local args = {
										[1] = "GuitarPuzzleProgress",
										[2] = "Ghost"
									}
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
								end
								if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
									for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
										if (v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and (v.Humanoid.Health > 0)) then
											if (v.Name == "Living Zombie") then
												EquipWeapon(_G.SelectWeapon)
												BringMob = true
												FastAttack = true
												if _G.AutoHaki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
													wait()
													EquipWeapon(_G.SelectWeapon)
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.FastAttack then
													game:GetService'VirtualUser':CaptureController()
													game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												FarmPos = v.HumanoidRootPart.CFrame
												MonFarm = v.Name
											end
										end
									end
								else
									toTarget(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))
								end
							end
						elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Error") then
							game:GetService("StarterGui"):SetCore("SendNotification", {
								Title = "Crazzy Hub V3",
								Text = "Please go to grave",
								Icon = "rbxassetid://15689000757",
								Duration = 3
							})
							toTarget(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))
						elseif
                                string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Nothing")
                             then
							game:GetService("StarterGui"):SetCore("SendNotification", {
								Title = "Crazzy Hub V3",
								Text = "Wait for next night",
								Icon = "rbxassetid://15689000757",
								Duration = 3
							})
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
						end
					else
						toTarget(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))
					end
				end
			end
		end)
	end
end)

local AutoKenHakiV2Toggle = Farm:AddToggle({
	Name = "Auto Ken Haki V2",
	Description = "Tự động lấy haki quan sát v2",
	Default = _G.Settings.AutoKenHakiV2
})
AutoKenHakiV2Toggle:Callback(function(value)
    _G.AutoKenHakiV2 = value
	_G.Settings.AutoKenHakiV2 = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoKenHakiV2 then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    repeat
                        toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                        task.wait()
                    until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                    wait(.5)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen")
                    wait(1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest","CitizenQuest", 1)
                else
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Banana") and game.Players.LocalPlayer.Backpack:FindFirstChild("Apple") and game.Players.LocalPlayer.Backpack:FindFirstChild("Pineapple") then
                        repeat
                            toTarget(CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625))
                            task.wait()
                        until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12444.78515625, 332.40396118164, -7673.1806640625)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen")
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game.Players.LocalPlayer.Character:FindFirstChild("Fruit Bowl") then
                        repeat
                            toTarget(CFrame.new(-10920.125, 624.20275878906, -10266.995117188))
                            task.wait()
                        until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10920.125, 624.20275878906, -10266.995117188)).Magnitude <= 10
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Start")
                        wait(1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy")
                    elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Defeat 50 Forest Pirates") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Forest Pirate" then
                                    repeat
                                        task.wait()
                                        BringMob = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    until not _G.AutoKenHakiV2 or v.Humanoid.Health <= 0
                                    BringMob = false
                                    FastAttack = false
                                end
                            end
                        else
                            repeat
                                toTarget(CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625))
                                task.wait()
                            until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13277.568359375, 370.34185791016, -7821.1572265625)).Magnitude <= 10
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text == "Defeat  Captain Elephant (0/1)" then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Captain Elephant" then
                                    repeat
                                        task.wait()
                                        BringMob = true
                                        FastAttack = true
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                            task.wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        PosMon = v.HumanoidRootPart.CFrame
                                        if not _G.FastAttack then
                                            game:GetService 'VirtualUser':CaptureController()
                                            game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        v.Humanoid:ChangeState(14)
                                        v.Humanoid:ChangeState(16)
                                        toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                    until not _G.AutoKenHakiV2 or v.Humanoid.Health <= 0
                                    BringMob = false
                                    FastAttack = false
                                end
                            end
                        else
                            repeat
                                toTarget(CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875))
                                task.wait()
                            until not _G.AutoKenHakiV2 or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13493.12890625, 318.89553833008, -8373.7919921875)).Magnitude <= 10
                        end
                    else
                        for i, v in pairs(game.Workspace:GetDescendants()) do
                            if v.Name == "Apple" or v.Name == "Banana" or v.Name == "Pineapple" then
                                v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10)
                                task.wait()
                                firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle, 0)
                                task.wait()
                            end
                        end
                    end
                end
            end
        end)
    end
end)

local AutoRainbowHakiToggle = Farm:AddToggle({
	Name = "Auto Rainbow Haki",
	Description = "Tự động lấy haki 7 màu",
	Default = _G.Settings.AutoRainbowHaki
})
AutoRainbowHakiToggle:Callback(function(value)
    _G.AutoRainbowHaki = value
	_G.Settings.AutoRainbowHaki = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoRainbowHaki then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan",
                            "Bet")
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Stone" then
                                repeat
                                    task.wait()
                                    BringMob = true
                                    FastAttack = true
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not _G.FastAttack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(16)
                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                BringMob = false
                                FastAttack = false
                            end
                        end
                    else
                        toTarget(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717,-0.592676699,0.805107772, 2.03251839e-05, 0.805323839, 0.592835128, -0.999732077,-0.0137055516, 0.0186523199))
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Island Empress") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Island Empress") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Island Empress" then
                                repeat
                                    task.wait()
                                    BringMob = true
                                    FastAttack = true
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not _G.FastAttack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(16)
                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                BringMob = false
                                FastAttack = false
                            end
                        end
                    else
                        toTarget(CFrame.new(5713.98877, 601.922974, 202.751251, -0.101080291, -0,-0.994878292, -0, 1, -0, 0.994878292, 0, -0.101080291))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Kilo Admiral" then
                                repeat
                                    task.wait()
                                    BringMob = true
                                    FastAttack = true
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not _G.FastAttack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(16)
                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                BringMob = false
                                FastAttack = false
                            end
                        end
                    else
                        toTarget(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -0,-0.143904909, -0, 1.00000012, -0, 0.143904924, 0, -0.989591479))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Captain Elephant" then
                                repeat
                                    task.wait()
                                    BringMob = true
                                    FastAttack = true
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not _G.FastAttack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(16)
                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                BringMob = false
                                    FastAttack = false
                            end
                        end
                    else
                        toTarget(CFrame.new(-13485.0283, 331.709259, -8012.4873, 0.714521289,7.98849911e-08,0.69961375, -1.02065748e-07, 1, -9.94383065e-09, -0.69961375, -6.43015241e-08,0.714521289))
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Beautiful Pirate" then
                                repeat
                                    task.wait()
                                    BringMob = true
                                    FastAttack = true
                                    if _G.AutoHaki then
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                    end
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        task.wait()
                                        EquipWeapon(_G.SelectWeapon)
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    if not _G.FastAttack then
                                        game:GetService 'VirtualUser':CaptureController()
                                        game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                    v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                    v.Humanoid.JumpPower = 0
                                    v.Humanoid.WalkSpeed = 0
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid:ChangeState(11)
                                    v.Humanoid:ChangeState(14)
                                    v.Humanoid:ChangeState(16)
                                    toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
                                until not _G.AutoRainbowHaki or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                BringMob = false
                                FastAttack = false
                            end
                        end
                    else
                        toTarget(CFrame.new(5312.3598632813, 20.141201019287, -10.158538818359))
                    end
                else
                    toTarget(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))
                    if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan","Bet")
                    end
                end
            end
        end)
    end
end)         

local AutoSwanGlassesToggle = Farm:AddToggle({
	Name = "Auto Swan Glasses",
	Description = "Tự động lấy kính đô phờ la min gô",
	Default = _G.Settings.AutoSwanGlasses
})
AutoSwanGlassesToggle:Callback(function(value)
	_G.AutoSwanGlasses = value
	_G.Settings.AutoSwanGlasses = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoSwanGlasses then
				if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Don Swan" and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								task.wait()
								BringMob = true
								FastAttack = true
								if _G.AutoHaki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								EquipWeapon(_G.SelectWeapon)
								PosMon = v.HumanoidRootPart.CFrame
								if not _G.FastAttack then
									game:GetService 'VirtualUser':CaptureController()
									game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								v.Humanoid:ChangeState(16)
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							until not _G.AutoSwanGlasses or v.Humanoid.Health <= 0
							BringMob = false
							FastAttack = false
						end
					end
				else
					repeat
						task.wait()
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.537666320801, 905.48291015625))
					until (CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 or not _G.AutoSwanGlasses
				end
			end
		end)
	end
end)

local AutoBuyLegendarySwordToggle = Farm:AddToggle({
	Name = "Auto Buy Legendary Sword",
	Description = "Tự động mua kiếm zoro",
	Default = _G.Settings.AutoTrueTriplKatana
})
AutoBuyLegendarySwordToggle:Callback(function(value)
	_G.AutoTrueTriplKatana = value
	_G.Settings.AutoTrueTriplKatana = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.AutoTrueTriplKatana then
                local string_1 = "MysteriousMan";
                local string_2 = "2";
                local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
                Target:InvokeServer(string_1, string_2);
            end
        end)
    end
end)

local AutoFactoryToggle = Farm:AddToggle({
	Name = "Auto Factory",
	Description = "Tự động đánh nhà máy",
	Default = _G.Settings.AutoFactory
})
AutoFactoryToggle:Callback(function(value)
	_G.AutoFactory = value
	_G.Settings.AutoFactory = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoFactory then
				if workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 1 then
					repeat
						task.wait()
						FastAttack = true
						if _G.AutoHai then
							if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
							end
						end
						EquipWeapon(_G.SelectWeapon)
						if not _G.FastAttack then
							game:GetService 'VirtualUser':CaptureController()
							game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
						end
						toTarget(CFrame.new(456.917724609375, 182.5244903564453, -430.490966796875))
					until not _G.AutoFactory or workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 0
					FastAttack = false
				end
			elseif workspace.Map.Dressrosa.SmileFactory.Door.Transparency == 0 then
				_G.AutoFactory = false
			end
		end)
	end
end)

local AutoFarmEctoplasmToggle = Farm:AddToggle({
	Name = "Auto Farm Ectoplasm",
	Description = "Tự động cày vật chất kì dị",
	Default = _G.Settings.AutoEctoplasm
})
AutoFarmEctoplasmToggle:Callback(function(value)
	_G.AutoEctoplasm = value
	_G.Settings.AutoEctoplasm = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoEctoplasm then
				if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" or v.Name == "Arctic Warrior" then
							if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat
									task.wait()
									BringMob = true
									FastAttack = true
									if _G.AutoHaki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
										task.wait()
										EquipWeapon(_G.SelectWeapon)
									end
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.FastAttack then
										game:GetService 'VirtualUser':CaptureController()
										game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
									v.Humanoid.JumpPower = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									v.Humanoid:ChangeState(16)
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
								until not _G.AutoEctoplasm or not v.Parent or v.Humanoid.Health <= 0
								BringMob = false
								FastAttack = false
							end
						end
					end
				else
					BringMob = false
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			end
		end)
	end
end)

local AutoKillDarkBeardToggle = Farm:AddToggle({
	Name = "Auto Kill Dark Beard",
	Description = "Tự động đánh râu đen",
	Default = _G.Settings.AutoDarkCoat
})
AutoKillDarkBeardToggle:Callback(function(value)
	_G.AutoDarkCoat = value
	_G.Settings.AutoDarkCoat = value
	SaveSettings()
	if value == false then
		toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
	end
end)
task.spawn(
    function()
	while task.wait() do
		pcall(function()
			if _G.AutoDarkCoat then
				if game:GetService("Workspace").Enemies:FindFirstChild("Darkbeard") then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == ("Darkbeard" or v.Name == "Darkbeard") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
							repeat
								task.wait()
								BringMob = true
								FastAttack = true
								if _G.AutoHaki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
									task.wait()
									EquipWeapon(_G.SelectWeapon)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not _G.FastAttack then
									game:GetService "VirtualUser":CaptureController()
									game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
								v.Humanoid.JumpPower = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								v.Humanoid:ChangeState(16)
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							until _G.AutoDarkCoat == false or v.Humanoid.Health <= 0
							BringMob = false
							FastAttack = false
						end
					end
				else
					toTarget(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
				end
			end
		end)
	end
end)

local AutoBartiloQuestToggle = Farm:AddToggle({
	Name = "Auto Bartilo Quest",
	Description = "Tự động làm nhiệm vụ bartilo",
	Default = _G.Settings.AutoBartiloQuest
})
AutoBartiloQuestToggle:Callback(function(value)
	_G.AutoBartiloQuest = value
	_G.Settings.AutoBartiloQuest = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.Settings.AutoBartiloQuest then
				if game.Players.LocalPlayer.Data.Level.Value >= 850 then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then
								for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Swan Pirate" then
										pcall(function()
											repeat
												task.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then
														Farmtween:Stop()
													end
													FastAttack = true
													BringMob = true
													if _G.AutoHaki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso")
                                                                                             then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														task.wait()
														EquipWeapon(_G.SelectWeapon)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.FastAttack then
														game:GetService "VirtualUser":CaptureController()
														game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													v.Humanoid:ChangeState(14)
													v.Humanoid:ChangeState(16)
													toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												end
											until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartiloQuest == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
											BringMob = false
											FastAttack = false
										end)
									end
								end
							else
								Questtween = toTarget(CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position, CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625))
								if (CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Questtween then
										Questtween:Stop()
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625)
								end
							end
						else
							Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position, CFrame.new(-456.28952, 73.0200958, 299.895966))
							if (CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Bartilotween then
									Bartilotween:Stop()
								end
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
								local args = {
									[1] = "StartQuest",
									[2] = "BartiloQuest",
									[3] = 1
								}
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
							end
						end
					end
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
					if game.Workspace.Enemies:FindFirstChild("Jeremy") then
						for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
							if v.Name == "Jeremy" then
								repeat
									task.wait()
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
										Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
									elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Farmtween then
											Farmtween:Stop()
										end
										FastAttack = true
										if _G.AutoHaki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon)
                                                                         then
											task.wait()
											EquipWeapon(_G.SelectWeapon)
										end
										PosMon = v.HumanoidRootPart.CFrame
										if not _G.FastAttack then
											game:GetService "VirtualUser":CaptureController()
											game:GetService "VirtualUser":Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										v.Humanoid:ChangeState(14)
										v.Humanoid:ChangeState(16)
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									end
								until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoBartiloQues == false
								FastAttack = false
							end
						end
					else
						Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position, CFrame.new(2099.88159, 448.931, 648.997375))
						if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
							if Bartilotween then
								Bartilotween:Stop()
							end
							game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
						end
					end
				elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
					if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
						Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position, CFrame.new(-1836, 11, 1714))
					elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						if Bartilotween then
							Bartilotween:Stop()
						end
						game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
						wait(.5)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
						wait(1)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
					end
				end
			end
		end)
	end
end)

local EliteHunter = Farm:AddSection({"Elite Hunter"})

local EliteStatus = Farm:AddParagraph({"Elite Hunter"})
task.spawn(function()
	while task.wait() do
		pcall(function()
		   	if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
				EliteStatus:Set("Status : 🟢") 
			else
				EliteStatus:Set("Status : 🔴")
			end
		end)
	end
end)

local EliteProgress = Farm:AddParagraph({"Elite Hunter Progress"})
spawn(function()
	pcall(function()
		while task.wait() do
			EliteProgress:Set("Status : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
		end
	end)
end)

local AutoEliteHunterToggle = Farm:AddToggle({
	Name = "Auto Elite Hunter",
	Description = "Tự động đánh boss bí ẩn",
	Default = _G.Settings.AutoEliteHunter
})
AutoEliteHunterToggle:Callback(function(value)
	_G.AutoEliteHunter = value
	Elite()
	_G.Settings.AutoEliteHunter = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)

local AutoEliteHunterHopToggle = Farm:AddToggle({
	Name = "Auto Elite Hunter + Hop",
	Description = "Tự động đánh boss bí ẩn + đổi sever",
	Default = _G.Settings.AutoEliteHunterHop
})
AutoEliteHunterHopToggle:Callback(function(value)
	_G.AutoEliteHunterHop = value
	Elite()
	_G.Settings.AutoEliteHunterHop = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)

function Elite()
	task.spawn(function()
		while task.wait() do
			pcall(function()
				if _G.AutoEliteHunter then
					if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") then
							for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
								if string.find(v.Name, "Diablo") then
									EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if EliteHunter then
											EliteHunter:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                                            .HumanoidRootPart.CFrame
									end
								end
								if string.find(v.Name, "Urban") then
									EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if EliteHunter then
											EliteHunter:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                                            .HumanoidRootPart.CFrame
									end
								end
								if string.find(v.Name, "Deandre") then
									EliteHunter = toTarget(v.HumanoidRootPart.CFrame)
									if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
										if EliteHunter then
											EliteHunter:Stop()
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v
                                            .HumanoidRootPart.CFrame
									end
								end
							end
							for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
								if _G.AutoEliteHunter and string.find(v.Name, "Diablo") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Farmtween then
												Farmtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v .HumanoidRootPart.CFrame * MethodFarm
											FastAttack = true
											EquipWeapon(_G.SelectWeapon)
										end
									until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
								end
								if _G.AutoEliteHunter and string.find(v.Name, "Urban") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Farmtween then
												Farmtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v .HumanoidRootPart.CFrame * MethodFarm
											FastAttack = true
											EquipWeapon(_G.SelectWeapon)
										end
									until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
								end
								if _G.AutoEliteHunter and string.find(v.Name, "Deandre") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat
										task.wait()
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150 then
											Farmtween = toTarget(v.HumanoidRootPart.CFrame)
										elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
											if Farmtween then
												Farmtween:Stop()
											end
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v .HumanoidRootPart.CFrame * MethodFarm
											FastAttack = true
											EquipWeapon(_G.SelectWeapon)
										end
									until not _G.AutoEliteHunter or not v.Parent or v.Humanoid.Health <= 0
									FastAttack = false
								end
							end
						else
							local string_1 = "EliteHunter";
							local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
							Target:InvokeServer(string_1);
						end
					else
						local string_1 = "EliteHunter";
						local Target = game:GetService("ReplicatedStorage").Remotes["CommF_"];
						Target:InvokeServer(string_1);
					end
				end
			end)
		end
	end)
	if _G.AutoEliteHunterHop then
		if not (game.Workspace.Enemies:FindFirstChild("Deandre") or game.Workspace.Enemies:FindFirstChild("Urban") or game.Workspace.Enemies:FindFirstChild("Diablo") or game.ReplicatedStorage:FindFirstChild("Deandre") or game.ReplicatedStorage:FindFirstChild("Urban") or game.ReplicatedStorage:FindFirstChild("Diablo")) then
			wait(10)
			Teleport()
			Hop()
		end
	end
end

local AutoCDK = Farm:AddSection({"Cursed Dual Katana"})

local AutoHolyTorchToggle = Farm:AddToggle({
	Name = "Auto Holy Torch",
	Description = "Tự động lấy đuốc ma",
	Default = _G.Settings.AutoHolyTorch
})
AutoHolyTorchToggle:Callback(function(value)
    _G.AutoHolyTorch = value
    _G.BypassTP = false
	_G.Settings.AutoKenHakiV2 = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
    while wait() do
        if _G.AutoHolyTorch then
            if game.ReplicatedStorage:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") or game.Workspace.Enemies:FindFirstChild("rip_indra True Form [Lv. 5000] [Raid Boss]") and game:GetService("Workspace").Map.Turtle.TushitaGate.TushitaGate.Transparency == 1 then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                    EquipWeapon("Holy Torch")
                elseif game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                    if game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Particles.Main.Enabled ~= true then
                        if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                            HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.CFrame)
                        elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if HolyTorchtween then
                                HolyTorchtween:Stop()
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch1.CFrame
                        end
                    elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Particles.Main.Enabled ~= true then
                        if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                            HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.CFrame)
                        elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch2.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if HolyTorchtween then
                                HolyTorchtween:Stop()
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch2.CFrame
                        end
                    elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Particles.Main.Enabled ~= true then
                        if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                            HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.CFrame)
                        elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch3.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if HolyTorchtween then
                                HolyTorchtween:Stop()
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch3.CFrame
                        end
                    elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Particles.Main.Enabled ~= true then
                        if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                            HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.CFrame)
                        elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch4.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if HolyTorchtween then
                                HolyTorchtween:Stop()
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch4.CFrame
                        end
                    elseif game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Particles.Main.Enabled ~= true then
                        if (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                            HolyTorchtween = TP(game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position,game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.CFrame)
                        elseif (game:GetService("Workspace").Map.Turtle.QuestTorches.Torch5.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if HolyTorchtween then
                                HolyTorchtween:Stop()
                            end
                            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Turtle.QuestTorches.Torch5.CFrame
                        end
                    end
                else
                    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Waterfall.SecretRoom.Room.Door.Door.Hitbox.CFrame
                end
            end
        end
    end
end)

local AutoCursedDualKatanaToggle = Farm:AddToggle({
	Name = "Auto Cursed Dual Katana",
	Description = "Tự động lấy song kiếm oden",
	Default = _G.Settings.Auto_Cursed_Dual_Katana
})
AutoCursedDualKatanaToggle:Callback(function(value)
    _G.Auto_Cursed_Dual_Katana = value
	_G.Settings.Auto_Cursed_Dual_Katana = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Cursed_Dual_Katana then
                if GetWeaponInventory("Cursed Dual Katana") == true then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Cursed Dual Katana") or game.Players.LocalPlayer.Backpack:FindFirstChild("Cursed Dual Katana") then
    
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Cursed Dual Katana")
                    end
                else
                    if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                        if game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                                EquipWeapon("Tushita")
                            else
                                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if v.Name == "Tushita" and v:IsA("Tool") then
                                        if v.Level.Value >= 350 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
                                            _G.AutoFarmBone = false
                                        else
                                            _G.SelectWeapon = "Tushita"
                                            _G.AutoFarmBone = true
                                        end
                                    end
                                end
                            end
                        elseif game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                                EquipWeapon("Yama")
                            else
                                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                                    if v.Name == "Yama" and v:IsA("Tool") then
                                        if v.Level.Value >= 350 then
                                            Auto_CDK_Quest = true
                                            _G.AutoFarmBone = false
                                        else
                                            _G.SelectWeapon = "Yama"
                                            _G.AutoFarmBone = true
                                        end
                                    end
                                end
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
                    end      
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if Auto_CDK_Quest then
                if GetMaterial("Alucard Fragment") == 0 then
                    Auto_Quest_Yama_1 = true
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif GetMaterial("Alucard Fragment") == 1 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = true
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif GetMaterial("Alucard Fragment") == 2 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = true
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                elseif GetMaterial("Alucard Fragment") == 3 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = true
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif GetMaterial("Alucard Fragment") == 4 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = true
                    Auto_Quest_Tushita_3 = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif GetMaterial("Alucard Fragment") == 5 then
                    Auto_Quest_Yama_1 = false
                    Auto_Quest_Yama_2 = false
                    Auto_Quest_Yama_3 = false
                    Auto_Quest_Tushita_1 = false
                    Auto_Quest_Tushita_2 = false
                    Auto_Quest_Tushita_3 = true
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
                elseif GetMaterial("Alucard Fragment") == 6 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss") then
                        Auto_Quest_Yama_1 = false
                        Auto_Quest_Yama_2 = false
                        Auto_Quest_Yama_3 = false
                        Auto_Quest_Tushita_1 = false
                        Auto_Quest_Tushita_2 = false
                        Auto_Quest_Tushita_3 = false
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton Boss" or v.Name == "Cursed Skeleton" then
                                    if v.Humanoid.Health > 0 then
                                        v.HumanoidRootPart.CanCollide = false
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                    end
                                end
                            end
                        end
                    else
                        if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")
                            wait(1)
                            toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)
                            toTarget(CFrame.new(-12253.5419921875, 598.8999633789062, -6546.8388671875))
                        else
                            toTarget(CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875))
                        end   
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Mythological Pirate" then
                            repeat wait()
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                            until not Auto_CDK_Quest or not _G.Auto_Cursed_Dual_Katana 
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
                        end
                    end
                else
                    toTarget(CFrame.new(-13451.46484375, 543.712890625, -6961.0029296875))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        v.HazeESP.Size = UDim2.new(50,50,50,50)
                        v.HazeESP.MaxDistance = "inf"
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if Auto_Quest_Yama_2 and v:FindFirstChild("HazeESP") and (v.HumanoidRootPart.Position - PosMonsEsp.Position).magnitude <= 300 then
                    v.HumanoidRootPart.CFrame = PosMonsEsp
                    v.HumanoidRootPart.CanCollide = false
                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                    if not v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                        local vc = Instance.new("BodyVelocity", v.HumanoidRootPart)
                        vc.MaxForce = Vector3.new(1, 1, 1) * math.huge
                        vc.Velocity = Vector3.new(0, 0, 0)
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_2 then 
            pcall(function() 
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v:FindFirstChild("HazeESP") then
                        repeat wait()
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                toTarget(v.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))
                            else
                                BringMob = true
                                FastAttack = true
                                if _G.AutoHaki then
                                    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                    end
                                end
                                if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)
                                end
                                PosMonsEsp = v.HumanoidRootPart.CFrame
                                if not _G.FastAttack then
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                end
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))								
                            end      
                        until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health <= 0 or not v:FindFirstChild("HazeESP")
                    else
                        for x,y in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if y:FindFirstChild("HazeESP") then
                                if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000 then
                                    toTarget(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then         
                    _G.AutoFarmBone = false           
                    toTarget(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)
                elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Hell's Messenger" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            BringMob = true
                                            FastAttack = true
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                                wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            PosMonsEsp = v.HumanoidRootPart.CFrame
                                            if not _G.FastAttack then
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Yama_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            toTarget(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            toTarget(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            toTarget(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            toTarget(game:GetService("Workspace").Map.HellDimension.Exit.CFrame)
                        end
                    until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or GetMaterial("Alucard Fragment") == 3
                else
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper") then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Soul Reaper" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))
                                        until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                    end
                                end
                            end
                        else
                            toTarget(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))
                        end
                    else
                        _G.AutoFarmBone = true
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                    end
                end
            end)
        end
    end
end)
spawn(function() 
    while wait() do
        if Auto_Quest_Tushita_1 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            toTarget(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))
            wait(5)
            toTarget(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))
            wait(5)
            toTarget(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))    
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if Auto_Quest_Tushita_2 and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat wait()
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                    toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                    game:GetService'VirtualUser':CaptureController()
                                    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_2 == false
                            end
                        end
                    end
                else
                    toTarget(CFrame.new(-5545.1240234375, 313.800537109375, -2976.616455078125))
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Queen" then
                                if v.Humanoid.Health > 0 then
                                    repeat wait()
                                        if _G.AutoHaki then
                                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                            end
                                        end
                                        if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                            wait()
                                            EquipWeapon(_G.SelectWeapon)
                                        end
                                        if not _G.FastAttack then
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        toTarget(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                                    until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                end
                            end
                        end
                    else
                        toTarget(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))
                    end
                elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                    repeat wait()
                        if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Cursed Skeleton" or v.Name == "Cursed Skeleton" or v.Name == "Heaven's Guardian" then
                                    if v.Humanoid.Health > 0 then
                                        repeat wait()
                                            if _G.AutoHaki then
                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                                end
                                            end
                                            if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
                                                wait()
                                                EquipWeapon(_G.SelectWeapon)
                                            end
                                            if not _G.FastAttack then
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid:ChangeState(11)
                                        until v.Humanoid.Health <= 0 or not v.Parent or Auto_Quest_Tushita_3 == false
                                    end
                                end
                            end
                        else
                            wait(5)
                            toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)        
                            toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame)
                            wait(1.5)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                            wait(1.5)     
                            toTarget(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame)
                        end
                    until _G.Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or GetMaterial("Alucard Fragment") == 6
                else
                    Hop()
                end
            end)
        end
    end
end)

Tushita_Quest1 = nil
local AutoTushitaQuest1Toggle = Farm:AddToggle({
	Name = "Auto Tushita Quest 1",
	Description = "Tự động làm nhiệm vụ tushita số 1",
	Default = _G.Settings.TushitaQuest1
})
AutoTushitaQuest1Toggle:Callback(function(value)
	_G.TushitaQuest1 = value
	_G.Settings.TushitaQuest1 = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
    while wait() do
        if _G.TushitaQuest1 then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", "Tushita")
                wait(1)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good")
                Tushita_Quest1 = true
                toTarget(CFrame.new(-6127.5712890625, 16.446542739868164, -2247.595703125))
                wait(60)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                wait(1)
                toTarget(CFrame.new(-127.23313903808594, 6.755744934082031, 5259.51025390625))    
                wait(60)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                wait(1)
                toTarget(CFrame.new(-2067.349365234375, 4.701088905334473, -9890.4501953125))
                wait(60)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))
                Tushita_Quest1 = false
            end)
        end
    end
end)

local AutoTushitaQuest1Toggle = Farm:AddToggle({
	Name = "Auto Tushita Quest 2",
	Description = "Tự động làm nhiệm vụ tushita số 2",
	Default = _G.Settings.TushitaQuest2
})
AutoTushitaQuest1Toggle:Callback(function(value)
	Tushita_Quest2 = value
	_G.Settings.TushitaQuest2 = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if Tushita_Quest2 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Tushita")
				wait(1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")
				wait(.5)
				if game:GetService("Workspace").Enemies:GetChildren() then
					toTarget(CFrame.new(-5523.9453125, 313.7913818359375, -2958.09765625))
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if Tushita_Quest2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
							repeat wait()
								BringMob = true
								FastAttack = true
								if _G.AutoHaki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
									wait()
									EquipWeapon(_G.SelectWeapon)
								end

								PosMon = v.HumanoidRootPart.CFrame
								if not _G.FastAttack then
									game:GetService'VirtualUser':CaptureController()
									game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							until v.Humanoid.Health <= 0 or not Tushita_Quest2
							BringMob = false
							FastAttack = false
						end
					end
				end
			end
		end)
	end
end)

local AutoYamaQuest1Toggle = Farm:AddToggle({
	Name = "Auto Yama Quest 1",
	Description = "Tự động làm nhiệm vụ yama số 1",
	Default = _G.Settings.YamaQuest1
})
AutoYamaQuest1Toggle:Callback(function(value)
	YamaQuest1 = value
	_G.Settings.YamaQuest1 = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if YamaQuest1 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem","Yama")
				wait(.1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")
				wait(.1)
				toTarget(CFrame.new(-13284.16796875, 332.4040222167969, -7899.060546875))
			end
		end)
	end
end)

local AutoYamaQuest2Toggle = Farm:AddToggle({
	Name = "Auto Yama Quest 2",
	Description = "Tự động làm nhiệm vụ yama số 2",
	Default = _G.Settings.YamaQuest2
})
AutoYamaQuest2Toggle:Callback(function(value)
	YamaQuest2 = value
	_G.Settings.YamaQuest2 = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if YamaQuest2 then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if YamaQuest2 and v:FindFirstChild("Humanoid") and v:FindFirstChild("HazeESP") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
						repeat wait()
							BringMob = true
							FastAttack = true
							if _G.AutoHaki then
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end
							end
							if not game.Players.LocalPlayer.Character:FindFirstChil(_G.SelectWeapon) then
								wait()
								EquipWeapon(_G.SelectWeapon)
							end
							PosMon = v.HumanoidRootPart.CFrame
							if not _G.FastAttack then
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
						until not YamaQuest2 or not v.Parent or v.Humanoid.Health <= 0
						BringMob = false
						FastAttack = false
					end
				end
			end
		end)
	end
end)

local MobAuraForCDKQuestToggle = Farm:AddToggle({
	Name = "Mob Aura For CDK Quest",
	Description = "Tự động giết quái xung quanh cho nhiệm vụ song kiếm",
	Default = _G.Settings.MobAura
})
MobAuraForCDKQuestToggle:Callback(function(value)
	MobAura = value
	_G.Settings.MobAura = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while wait() do
		pcall(function()
			if MobAura then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if MobAura and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 1000 then
						repeat wait()
							BringMob = true
							FastAttack = true
							if _G.AutoHaki then
								if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
								end
							end
							if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
								wait()
								EquipWeapon(_G.SelectWeapon)
							end
							PosMon = v.HumanoidRootPart.CFrame
							if not _G.FastAttack then
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
							end
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid:ChangeState(11)
							toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							MagnetMobAura = true
							if delay then
								delay(1,function()
									MagnetMobAura = true
								end)
							end 
						until not MobAura or not v.Parent or v.Humanoid.Health <= 0
						MagnetMobAura = false
						FastAttack = false
						BringMob = false
					end
				end
			end
		end)
	end
end)
task.spawn(function()
	while wait() do
		pcall(function()
			local MyLevel = game.Players.LocalPlayer.Data.Level.Value
			if MobAura then
				for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
					if (v.HumanoidRootPart.Position-PosMonAura.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMonAura
						v.Humanoid.JumpPower = 0
						v.Humanoid.WalkSpeed = 0
						v.HumanoidRootPart.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						v.Humanoid:ChangeState(11)
					end
				end
			end
		end)
	end
end)

local AutoNewWorld = Farm:AddSection({"Auto New World"})

local AutoSecondSeaToggle = Farm:AddToggle({
	Name = "Auto Second Sea",
	Description = "Tự động lên biển 2",
	Default = _G.Settings.AutoNewWorld
})
AutoSecondSeaToggle:Callback(function(value)
    _G.AutoNewWorld = value
	_G.Settings.AutoNewWorld = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoNewWorld then
				if game.Players.LocalPlayer.Data.Level.Value >= 700 then
					if _G.AutoFarm then
						_G.AutoFarm = false
					end
					if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
						wait(.5)
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
						EquipWeapon("Key")
						repeat
							task.wait()
							toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
						until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNewWorld
						wait(3)
					elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
						if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
							for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
									repeat
										task.wait()
										if _G.AutoHaki then
											if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
											end
										end
										EquipWeapon(_G.SelectWeapon)
										toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
										FastAttack = true
										if not _G.FastAttack then
											game:GetService 'VirtualUser':CaptureController()
											game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
										end
										v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
										v.Humanoid.JumpPower = 0
										v.Humanoid.WalkSpeed = 0
										v.HumanoidRootPart.CanCollide = false
										v.Humanoid:ChangeState(11)
										v.Humanoid:ChangeState(14)
										v.Humanoid:ChangeState(16)
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
									until v.Humanoid.Health <= 0 or not v.Parent
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
								end
							end
						else
							toTarget(CFrame.new(1347.7124, 37.3751602, -1325.6488))
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
					end
				end
			end
		end)
	end
end)

local AutoThirdSeaToggle = Farm:AddToggle({
	Name = "Auto Third Sea",
	Description = "Tự động lên biển 3",
	Default = _G.Settings.AutoThirdSea
})
AutoThirdSeaToggle:Callback(function(value)
	_G.AutoThirdSea = value
	_G.Settings.AutoThirdSea = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoThirdSea then
				if game.Players.LocalPlayer.Data.Level.Value >= 1500 then
					if _G.AutoFarm then
						_G.AutoFarm = false
					end
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil then
							Com("F_", "TravelZou")
							if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 0 then
								if game.Workspace.Enemies:FindFirstChild("rip_indra") then
									for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "rip_indra" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat
												task.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,
														v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then Farmtween:Stop() end
													FastAttack = true
													if _G.AutoHaki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes
																.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														task.wait()
														EquipWeapon(_G.SelectWeapon)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.FastAttack then
														game:GetService 'VirtualUser':CaptureController()
														game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
													v.Humanoid.JumpPower = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Humanoid:ChangeState(11)
													v.Humanoid:ChangeState(14)
													v.Humanoid:ChangeState(16)
													toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												end
											until not _G.AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0
											wait(.5)
											Check = 2
											repeat
												task.wait()
												Com("F_", "TravelZou")
											until Check == 1
												FastAttack = false
										end
									end
								else
									Com("F_", "ZQuestProgress", "Check")
									Com("F_", "ZQuestProgress", "Begin")
								end
							elseif game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
								Com("F_", "TravelZou")
							else
								if game.Workspace.Enemies:FindFirstChild("Don Swan") then
									for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Don Swan" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat
												task.wait()
												if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
													Farmtween = toTarget(v.HumanoidRootPart.Position,
														v.HumanoidRootPart.CFrame)
												elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
													if Farmtween then Farmtween:Stop() end
													FastAttack = true
													if _G.AutoHaki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes
																.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														task.wait()
														EquipWeapon(_G.SelectWeapon)
													end
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.FastAttack then
														game:GetService 'VirtualUser':CaptureController()
														game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
													v.Humanoid.JumpPower = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													v.Humanoid:ChangeState(14)
													v.Humanoid:ChangeState(16)
													v.Humanoid:ChangeState(11)
													toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
												end
											until not _G.AutoThirdSea or not v.Parent or v.Humanoid.Health <= 0
											FastAttack = false
										end
									end
								else
									TweenDonSwanthireworld = toTarget(
										CFrame.new(2288.802, 15.1870775, 863.034607).Position,CFrame.new(2288.802, 15.1870775, 863.034607))
									if (CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if TweenDonSwanthireworld then TweenDonSwanthireworld:Stop()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607)
										end
									end
								end
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
								TabelDevilFruitStore = {}
								TabelDevilFruitOpen = {}
								for i, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
									for i1, v1 in pairs(v) do
										if i1 == "Name" then
											table.insert(TabelDevilFruitStore, v1)
										end
									end
								end
								for i, v in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
									if v.Price >= 1000000 then
										table.insert(TabelDevilFruitOpen, v.Name)
									end
								end
								for i, DevilFruitOpenDoor in pairs(TabelDevilFruitOpen) do
									for i1, DevilFruitStore in pairs(TabelDevilFruitStore) do
										if DevilFruitOpenDoor == DevilFruitStore and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild(DevilFruitStore) then
												Com("F_", "LoadFruit", DevilFruitStore)
											else
												Com("F_", "TalkTrevor", "1")
												Com("F_", "TalkTrevor", "2")
												Com("F_", "TalkTrevor", "3")
											end
										end
									end
								end
								Com("F_", "TalkTrevor", "1")
								Com("F_", "TalkTrevor", "2")
								Com("F_", "TalkTrevor", "3")
							end
						end
					else
						if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0 then
							if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true then
								if game.Workspace.Enemies:FindFirstChild("Swan Pirate") then
									for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
										if v.Name == "Swan Pirate" then
											pcall(function()
												repeat
													task.wait()
													if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
														Farmtween = toTarget(v.HumanoidRootPart.Position,
															v.HumanoidRootPart.CFrame)
													elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
														if Farmtween then Farmtween:Stop() end
														FastAttack = true
														BringMob = true
														if _G.AutoHaki then
															if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
																game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
															end
														end
														if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
															task.wait()
															EquipWeapon(_G.FastType)
														end
														PosMon = v.HumanoidRootPart.CFrame
														if not _G.FastAttack then
															game:GetService 'VirtualUser':CaptureController()
															game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
														end
														v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
														v.Humanoid.JumpPower = 0
														v.HumanoidRootPart.CanCollide = false
														v.Humanoid.WalkSpeed = 0
														v.Humanoid:ChangeState(11)
														v.Humanoid:ChangeState(14)
														v.Humanoid:ChangeState(16)
														toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													end
												until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoThirdSea == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
												FastAttack = false
												BringMob = false
											end)
										end
									end
								else
									Questtween = toTarget(CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position,CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625))
									if (CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
										if Bartilotween then Bartilotween:Stop() end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(960.9769897460938, 141.33583068847656, 1216.1959228515625)
									end
								end
							else
								Bartilotween = toTarget(CFrame.new(-456.28952, 73.0200958, 299.895966).Position,CFrame.new(-456.28952, 73.0200958, 299.895966))
								if (CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Bartilotween then Bartilotween:Stop() end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966)
									Com("F_", "StartQuest", "BartiloQuest", 1)
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1 then
							if game.Workspace.Enemies:FindFirstChild("Jeremy") then
								for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
									if v.Name == "Jeremy" then
										repeat
											task.wait()
											if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
												Farmtween = toTarget(v.HumanoidRootPart.Position, v.HumanoidRootPart.CFrame)
											elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
												if Farmtween then Farmtween:Stop() end
												FastAttack = true
												if _G.AutoHaki then
													if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
														game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
													end
												end
												if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
													task.wait()
													EquipWeapon(_G.SelectWeapon)
												end
												PosMon = v.HumanoidRootPart.CFrame
												if not _G.FastAttack then
													game:GetService 'VirtualUser':CaptureController()
													game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
												end
												v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
												v.Humanoid.JumpPower = 0
												v.Humanoid.WalkSpeed = 0
												v.HumanoidRootPart.CanCollide = false
												v.Humanoid:ChangeState(11)
												v.Humanoid:ChangeState(14)
												v.Humanoid:ChangeState(16)
												toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
											end
										until not v.Parent or v.Humanoid.Health <= 0 or _G.AutoThirdSea == false
										FastAttack = false
									end
								end
							else
								Bartilotween = toTarget(CFrame.new(2099.88159, 448.931, 648.997375).Position,CFrame.new(2099.88159, 448.931, 648.997375))
								if (CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Bartilotween then Bartilotween:Stop() end
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375)
								end
							end
						elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2 then
							if (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
								Bartilotween = toTarget(CFrame.new(-1836, 11, 1714).Position,CFrame.new(-1836, 11, 1714))
							elseif (CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
								if Bartilotween then Bartilotween:Stop() end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714)
								wait(.5)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
								wait(.1)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
							end
						end
					end
				end
			end
		end)
	end
end)

local AutoSword = Farm:AddSection({"Auto Sword"})

local AutoSaberToggle = Farm:AddToggle({
	Name = "Auto Saber",
	Description = "Tự động lấy kiếm saber",
	Default = _G.Settings.AutoSaber
})
AutoSaberToggle:Callback(function(value)
    _G.AutoSaber  = value
	_G.Settings.AutoSaber = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoSaber  and game.Players.LocalPlayer.Data.Level.Value >= 200 and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Saber") and not game.Players.LocalPlayer.Character:FindFirstChild("Saber") then
				if _G.AutoFarm then
					_G.AutoFarm = false
					_G.BypassTP = false
				end
				if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
					if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
						if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724, -4.39869794e-08, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
							toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
							wait(1)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
							wait(1)
						else
							toTarget(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279,3.0717151e-09, -0.928667724, 3.97099491e-08, 1, 1.91679348e-08, 0.928667724,-4.39869794e-08, 0.37091279))
						end
					else
						if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
							if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
								EquipWeapon("Torch")
								toTarget(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587,-1.28799094e-09, 0.761243105, -5.70652914e-10, 1, 1.20584542e-09,-0.761243105, 3.47544882e-10, -0.648466587))
							else
								toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551,-0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198,3.42372805e-05, -0.258850515, 0.965917408))
							end
						else
							if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
								wait(0.5)
								EquipWeapon("Cup")
								wait(0.5)game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup",
								game:GetService("Players").LocalPlayer.Character.Cup)
								wait(0)
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
							else
								if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0 then
									if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										toTarget(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564,-0.0227849055, 0.939347804, 0.0251603816, 0.999569714,0.0150796166, -0.939287126, 0.0184739735, 0.342634559))
										for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
											if v.Name == "Mob Leader" then
												repeat
													task.wait()
													BringMob = true
													FastAttack = true
													if _G.AutoHaki then
														if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
															game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
														end
													end
													if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
														task.wait()
														EquipWeapon(_G.SelectWeapon)
													end
													toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
													PosMon = v.HumanoidRootPart.CFrame
													if not _G.FastAttack then
													game:GetService 'VirtualUser':CaptureController()
													game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
													end
													v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
													v.Humanoid.JumpPower = 0
													v.Humanoid.WalkSpeed = 0
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid:ChangeState(11)
													v.Humanoid:ChangeState(14)
													v.Humanoid:ChangeState(16)
												until v.Humanoid.Health <= 0 or _G.AutoSaber  == false
											end
										end
									end
								elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
									wait(0.5)
									EquipWeapon("Relic")
									wait(0.5)
									toTarget(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494,5.66906877e-09, 0.481375456, 2.53851997e-08, 1, -5.79995607e-08,-0.481375456, 6.30572643e-08, 0.876514494))
								end
							end
						end
					end
				else
					if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
						toTarget(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-08,0.513301849, -8.55007443e-08, 1, -2.77243419e-08, -0.513301849, -2.00944328e-08,0.85820812))
						for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if v.Name == "Saber Expert" then
								repeat
									task.wait()
									BringMob = true
									FastAttack = true
									if _G.AutoHaki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
										task.wait()
										EquipWeapon(_G.SelectWeapon)
									end
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.FastAttack then
										game:GetService 'VirtualUser':CaptureController()
										game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
									v.Humanoid.JumpPower = 0
									v.Humanoid.WalkSpeed = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									v.Humanoid:ChangeState(16)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								until v.Humanoid.Health <= 0 or _G.AutoSaber  == false
								if v.Humanoid.Health <= 0 then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
								end
							end
						end
					end
				end
			end
		end)
	end
end)

local AutoPoleToggle = Farm:AddToggle({
	Name = "Auto Pole",
	Description = "Tự động lấy pole",
	Default = _G.Settings.AutoPole
})
AutoPoleToggle:Callback(function(value)
	_G.AutoPole = value
	_G.Settings.AutoPole = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoPole then
				if game.ReplicatedStorage:FindFirstChild("Thunder God") or game.Workspace.Enemies:FindFirstChild("Thunder God") then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Thunder God" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
							repeat
								task.wait()
								if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
									Farmtween = toTarget(v.HumanoidRootPart.Position,
										v.HumanoidRootPart.CFrame)
								elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
									if Farmtween then Farmtween:Stop() end
									BringMob = true
									FastAttack = true
									if _G.AutoHaki then
										if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
										end
									end
									EquipWeapon(_G.SelectWeapon)
									toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
									PosMon = v.HumanoidRootPart.CFrame
									if not _G.FastAttack then
										game:GetService 'VirtualUser':CaptureController()
										game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
									end
									v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
									v.Humanoid.JumpPower = 0
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Humanoid:ChangeState(11)
									v.Humanoid:ChangeState(14)
									v.Humanoid:ChangeState(16)
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
								end
							until not _G.AutoPole or v.Humanoid.Health <= 0 or not v.Parent
							BringMob = false
							FastAttack = false
						end
					end
				else
					Questtween = toTarget(CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position,CFrame.new(-7900.66406, 5606.90918, -2267.46436))
					if (CFrame.new(-7900.66406, 5606.90918, -2267.46436).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
						if Questtween then Questtween:Stop() end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7900.66406,5606.90918, -2267.46436)
					end
				end
			end
		end)
	end
end)

local AutoPoleToggle = Farm:AddToggle({
	Name = "Auto Rengoku Sword",
	Description = "Tự động lấy kiếm rengoku",
	Default = _G.Settings.AutoRengoku
})
AutoPoleToggle:Callback(function(value)
	_G.AutoRengoku = value
	_G.Settings.AutoRengoku = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoRengoku then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game.Players.LocalPlayer.Character:FindFirstChild("Hidden Key") then
					EquipWeapon("Hidden Key")
					toTarget(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				elseif game.Workspace.Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
					for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
						if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
							repeat
								task.wait()
								BringMob = true
								FastAttack = true
								if _G.AutoHaki then
									if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
									end
								end
								if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
									task.wait()
									EquipWeapon(_G.SelectWeapon)
								end
								PosMon = v.HumanoidRootPart.CFrame
								if not _G.FastAttack then
									game:GetService 'VirtualUser':CaptureController()
									game:GetService 'VirtualUser':Button1Down(Vector2.new(1280, 672))
								end
								v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid:ChangeState(11)
								v.Humanoid:ChangeState(14)
								v.Humanoid:ChangeState(16)
								toTarget(v.HumanoidRootPart.CFrame * MethodFarm)
							until game.Players.LocalPlayer.Backpack:FindFirstChild("Hidden Key") or not _G.AutoRengoku or not v.Parent or v.Humanoid.Health <= 0
							BringMob = false
								FastAttack = false
						end
					end
				else
					BringMob = false
						FastAttack = false
					toTarget(CFrame.new(5525.7045898438, 262.90060424805, -6755.1186523438))
				end
			end
		end)
	end
end)
----------------------------------------------------------------------------------------------------------------------Stats Tab

----------------------------------------------------------------------------------------------------------------------Teleport Tab

----------------------------------------------------------------------------------------------------------------------Player Tab

----------------------------------------------------------------------------------------------------------------------Fruit Tab

----------------------------------------------------------------------------------------------------------------------Raid Tab

----------------------------------------------------------------------------------------------------------------------Shop Tab
local AutoBuyAbilityToggle = Shop:AddToggle({
	Name = "Auto Buy Ability",
	Description = "Tự động mua ability",
	Default = _G.Settings.AutoBuyAbility
})
AutoBuyAbilityToggle:Callback(function(value)
	_G.AutoBuyAbility = value
	_G.Settings.AutoBuyAbility = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
task.spawn(function()
	while task.wait() do
		pcall(function()
			if _G.AutoBuyAbility then
				local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
				local BusoCheck = false
				local SoruCheck = false
				local GeppoCheck = false
				local KenCheck = false
				if Beli >= 885000 then
					repeat
						task.wait()
						local args = {
							[1] = "BuyHaki",
							[2] = "Buso"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						BusoCheck = true
						local args = {
							[1] = "BuyHaki",
							[2] = "Geppo"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						GeppoCheck = true
						local args = {
							[1] = "BuyHaki",
							[2] = "Soru"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						SoruCheck = true
						local args = {
							[1] = "KenTalk",
							[2] = "Start"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						local args = {
							[1] = "KenTalk",
							[2] = "Buy"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
						KenCheck = true
						if World1 then
							local args = {
								[1] = "LoadItem",
								[2] = "Black Cape"
							}
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
						end
						if W2 then
							local args = {
								[1] = "LoadItem",
								[2] = "Warrior Helmet"
							}
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
						end
						if W3 then
							local args = {
								[1] = "LoadItem",
								[2] = "Warrior Helmet"
							}
							game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
						end
						while task.wait() do
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
						end
					until not BusoCheck and not GeppoCheck and not SoruCheck and not KenCheck or not _G.AutoBuyAbility
				end
			end
		end)
	end
end)
----------------------------------------------------------------------------------------------------------------------Misc Tab

----------------------------------------------------------------------------------------------------------------------Race Tab
local AutoEvoRaceToggle = Race:AddToggle({
	Name = "Auto Evo Race V2",
	Description = "Tự động nâng tộc lên v2",
	Default = _G.Settings.AutoEvoRace
})
AutoEvoRaceToggle:Callback(function(value)
	_G.Auto_Evo_Race_V2 = value
	_G.Settings.AutoEvoRace = value
	SaveSettings()
	if value == false then
        toTarget(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    end
end)
spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_Evo_Race_V2 then
				if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
					if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 0 then
						two(CFrame.new(-2779.83521, 72.9661407, -3574.02002, -0.730484903, 6.39014104e-08, -0.68292886, 3.59963224e-08, 1, 5.50667032e-08, 0.68292886, 1.56424669e-08, -0.730484903))
						if (Vector3.new(-2779.83521, 72.9661407, -3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
							wait(1.3)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","2")
						end
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 1 then
						pcall(function()
							if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1") then
								two(game:GetService("Workspace").Flower1.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2") then
								two(game:GetService("Workspace").Flower2.CFrame)
							elseif not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if string.find(v.Name, "Swan Pirate") then
											repeat wait()
												AutoHaki()
												EquipWeapon(_G.SelectWeapon)
												two(v.HumanoidRootPart.CFrame * MethodFarm)
												v.HumanoidRootPart.CanCollide = false
												v.HumanoidRootPart.Size = Vector3.new(50,50,50)
												game:GetService'VirtualUser':CaptureController()
												game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
												PosMonEvo = v.HumanoidRootPart.CFrame
												StartEvoMagnet = true
											until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not v.Parent or v.Humanoid.Health <= 0 or _G.Auto_Evo_Race_V2 == false
											StartEvoMagnet = false
										end
									end
								else
									StartEvoMagnet = false
									two(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
								end
							end
						end)
					elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","1") == 2 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist","3")
					end
				end
			end
		end)
	end
end)
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.Auto_Evo_Race_V2 and StartEvoMagnet and v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonEvo.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonEvo
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(50,50,50)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
	end)
end)
----------------------------------------------------------------------------------------------------------------------Event Tab
