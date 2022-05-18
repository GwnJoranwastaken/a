local game = game

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Teams = game:GetService("Teams")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local ContextActionService = game:GetService("ContextActionService")

local Signal = loadstring(game:GetObjects("rbxassetid://6654965987")[1].Source)()
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BoredStuff2/notify-lib/main/lib"))()
local PlayerChatted = Signal.new()

local LocalPlayer = Players.LocalPlayer

local DummyRemote, DummyRemoteFunc = Instance.new("RemoteEvent"), Instance.new("RemoteFunction")
local FireServer = DummyRemote.FireServer
local InvokeServer = DummyRemoteFunc.InvokeServer
DummyRemote:Destroy()
DummyRemoteFunc:Destroy()
DummyRemote, DummyRemoteFunc = nil, nil

local Connections = {}
local Commands = {}
local Settings = {
    Prefix = "?"
}
local Ranked = {
    66184976
}
local LoopKilled = {}

-- // Command Functions \\ --
local function AddCommand(Table)
    if Table.Name and Table.Help and Table.Description and Table.Alias and Table.Callback then
        Commands[#Commands+1] = Table
    end
end
local function FindCommand(String)
    String = String:lower()
    for _,Cmd in pairs(Commands) do
        if Cmd.Name:lower() == String then
            return Cmd
        end
        for _,Alias in pairs(Cmd.Alias) do
            if Alias:lower() == String then
                return Cmd
            end
        end
    end
end
local function HandleString(String, Speaker)
    if String:sub(1,#Settings.Prefix) ~= Settings.Prefix then return end
    String = String:gsub("%"..Settings.Prefix, "")
    local Args = String:split(" ")
    local Command = FindCommand(Args[1])
    if Command then
        table.remove(Args, 1)
        Command.Callback(Args, Speaker or LocalPlayer)
    end
end

local function GetPlayers(String, Speaker)
    String = String:lower()
    if String == "me" then
        return {Speaker}
    elseif String == "random" then
        return {Players:GetPlayers()[math.random(1,#Players:GetPlayers())]}
    elseif String == "others" then
        local Plrs = {}
        for _,Player in pairs(Players:GetPlayers()) do
            if Player ~= Speaker then
                table.insert(Plrs, Player)
            end
        end
        return Plrs
    elseif String == "all" then
        return Players:GetPlayers()
    else
        for _, Player in pairs(Players:GetPlayers()) do
            if string.find(Player.Name:lower(), String) or string.find(Player.DisplayName:lower(), String) then
                return {Player}
            end
        end
    end
end

-- // Prison life functions \\ --
local function Refresh(Position, test)
    local oldCFrame = Position or LocalPlayer.Character.HumanoidRootPart.CFrame or CFrame.new(918, 100, 2382)
    local oldCam = Workspace.CurrentCamera.CFrame
    if not test then
        task.spawn(InvokeServer, Workspace.Remote.loadchar, LocalPlayer.Name, Color3.fromRGB(0, 100, 255))
    else 
        task.spawn(InvokeServer, Workspace.Remote.loadchar)
        workspace.Remote.TeamEvent:FireServer("Bright blue")
    end 
    LocalPlayer.CharacterAdded:Wait()
    local HRP = LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    HRP.CFrame = oldCFrame
    Workspace.CurrentCamera.CFrame = oldCam
    Workspace.CurrentCamera.Changed:Wait()
    Workspace.CurrentCamera.CFrame = oldCam
end
local function Arrest(Targets)
    Refresh(nil, true)
    local Cuffs = LocalPlayer.Backpack:WaitForChild("Handcuffs")
    print(Cuffs:GetFullName())
    for _, v in pairs(Targets) do
        if v.Team == Teams.Criminals and v.Character and v.Character.Head then
            repeat task.wait() 
                LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.PrimaryPart.CFrame
                workspace.Remote.arrest:InvokeServer(v.Character.Head)
            until v.Character.Head:FindFirstChild("handcuffedGui")
        end
    end
end
local function getShotgun()
    local Shotgun = LocalPlayer.Backpack:FindFirstChild("Remington 870") or LocalPlayer.Character:FindFirstChild("Remington 870")
    if Shotgun then return Shotgun end
    task.spawn(InvokeServer, workspace.Remote.ItemHandler, Workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP)
    return LocalPlayer.Backpack.ChildAdded:Wait()
end
local function Kill(Targets)    
    local Shotgun = getShotgun()
    local Table = {[1] = {}, [2] = Shotgun}
    for _, Target in pairs(Targets) do
        if not Target.Character then continue end
        local Amount = 8
        if Target.Character:FindFirstChild("Riot helmet") then Amount = 10 end
        for i=1, Amount do
            table.insert(Table[1],  {
                ["RayObject"] = Ray.new(),
                ["Distance"] = 69,
                ["Cframe"] = CFrame.new(),
                ["Hit"] = Target.Character:FindFirstChild("HumanoidRootPart") or Target.Character:FindFirstChildOfClass("BasePart")
            })
        end
    end
    task.spawn(FireServer, ReplicatedStorage.ShootEvent, table.unpack(Table))
    task.spawn(FireServer, ReplicatedStorage.ReloadEvent, Shotgun)
    return
end

local function Teleport(Player, Position)
    if not Player.Character or not Player.Character:FindFirstChildOfClass("Humanoid") then return end

    LastPos = LocalPlayer.Character.HumanoidRootPart.CFrame

    Refresh(Position)

    LocalPlayer.Character.Humanoid.Name = 69
	local new = LocalPlayer.Character["69"]:Clone()
	new.Name = "Humanoid"
	LocalPlayer.Character["69"]:Destroy()
	new.Parent = LocalPlayer.Character
	LocalPlayer.Character.Humanoid:RemoveAccessories()
    --[[for i,v in pairs(LocalPlayer.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
        v:Stop()
    end]]
    local Script = LocalPlayer.Character:FindFirstChild("Animate")
    if Script then
        LocalPlayer.Character.Animate.Disabled = true
        LocalPlayer.Character.Animate.Disabled = false
    end

    task.defer(InvokeServer, Workspace.Remote.ItemHandler, Workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)

    local Tool = LocalPlayer.Backpack.ChildAdded:Wait()
    local Handle = Tool:WaitForChild("Handle")
    local STOP = false
    task.wait()
    Tool.Parent = LocalPlayer.Character
    task.delay(1.5, function() STOP = true end)
    repeat 
        LocalPlayer.Character.HumanoidRootPart.CFrame = Position
        Tool.Parent = LocalPlayer.Character
        Player.Character.HumanoidRootPart.CFrame = Handle.CFrame + Vector3.new(0,1,0)
        task.wait(0.1)
    until Tool.Parent ~= LocalPlayer.Character or not Player or STOP
    task.wait(0.1)

    Refresh(LastPos)
end

-- // Add commands \\ --
AddCommand({
    Name = "cmds",
    Help = "cmds/commands",
    Description = "Shows the commands",
    Alias = {"commands"},
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then
            ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..Speaker.Name.." [Prisonware]: guns, kill, loopkill, unloopkill, bring, arrest, goto/to prison, yard, base, guardroom", "all")
        end
    end
})
AddCommand({
    Name = "refresh",
    Help = "refresh/re",
    Description = "Refreshs u",
    Alias = {"re"},
    Callback = function()
        Refresh()
    end
})
AddCommand({
    Name = "respawn",
    Help = "respawn",
    Description = "Respawns u",
    Alias = {},
    Callback = function() task.spawn(InvokeServer, Workspace.Remote.loadchar, LocalPlayer.Name, Color3.fromRGB(0,100,255)) end
})
AddCommand({
    Name = "guns",
    Help = "guns",
    Description = "Gives u guns",
    Alias = {},
    Callback = function(Args, Speaker)
        local Guns = {
            [1] = workspace.Prison_ITEMS.giver:FindFirstChild("Remington 870").ITEMPICKUP,
            [2] = workspace.Prison_ITEMS.giver:FindFirstChild("AK-47").ITEMPICKUP,
            [3] = workspace.Prison_ITEMS.giver.M9.ITEMPICKUP
        }
        local Remote = Workspace.Remote.ItemHandler
        
        if Speaker == LocalPlayer then
            for _, Gun in ipairs(Guns) do
                task.spawn(InvokeServer, Remote, Gun)
            end
        else
            if not Speaker.Character or not Speaker.Character.Humanoid then return end
            local LastPos = LocalPlayer.Character.HumanoidRootPart.CFrame


            Refresh()

            LocalPlayer.Character.HumanoidRootPart.CFrame = Speaker.Character.HumanoidRootPart.CFrame

            LocalPlayer.Character.Humanoid.Name = 69
            local new = LocalPlayer.Character["69"]:Clone()
            new.Name = "Humanoid"
            LocalPlayer.Character["69"]:Destroy()
            new.Parent = LocalPlayer.Character
            LocalPlayer.Character.Humanoid:RemoveAccessories()
            for i,v in pairs(LocalPlayer.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
                v:Stop()
            end
            local Script = LocalPlayer.Character:FindFirstChild("Animate")
            if Script then
                LocalPlayer.Character.Animate.Disabled = true
                LocalPlayer.Character.Animate.Disabled = false
            end

            local Guns2 = {}
            for _, Gun in pairs(Guns) do
                task.spawn(InvokeServer, Remote, Gun)
                Gun = LocalPlayer.Backpack.ChildAdded:Wait()
                task.wait()
                Gun.Parent = LocalPlayer.Character
                table.insert(Guns2, Gun)
            end

            for _, Gun in pairs(Guns2) do
                if Gun.Parent == Speaker.Character then continue end
                repeat 
                    Speaker.Character.HumanoidRootPart.CFrame = Gun:WaitForChild("Handle").CFrame
                    task.wait(0.1)
                until Gun.Parent ~= LocalPlayer.Character
            end
            
            Refresh(LastPos)
        end
    end
})
AddCommand({
    Name = "rank",
    Help = "rank/admin [Player]",
    Description = "Ranks the Player(s)",
    Alias = {"admin"},
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Player in pairs(Targets) do
            if table.find(Ranked, Player.UserId) then continue end
            table.insert(Ranked, Player.UserId)
            ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..Player.Name.." U have been ranked | use ?cmds for commands | the prefix is ?", "all")
        end
    end
})
AddCommand({
    Name = "unrank",
    Help = "unrank/unadmin [Player]",
    Description = "Unranks the Player(s)",
    Alias = {"unadmin"},
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Player in pairs(Targets) do
            if not table.find(Ranked, Player.UserId) then continue end
            for _, Ranks in pairs(Ranked) do
                if Ranks == Player.UserId then
                    table.remove(Ranked, _)
                    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..Player.Name.." U have been unranked", "all")
                end
            end
        end
    end
})
AddCommand({
    Name = "kill",
    Help = "kill [Player]",
    Description = "Kills the Player(s)",
    Alias = {},
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        Kill(Targets)
    end
})
AddCommand({
    Name = "arrest",
    Help = "arrest [Player]",
    Description = "Arrests the player",
    Alias = {},
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        Arrest(Targets)
    end
})
AddCommand({
    Name = "loopkill",
    Help = "loopkill/lk [Player]",
    Description = "Loopkills the Player(s)",
    Alias = {"lk"},
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Player in pairs(Targets) do
            table.insert(LoopKilled, Player.UserId)
        end
        Kill(Targets)
    end
})
AddCommand({
    Name = "unloopkill",
    Help = "unloopkill/unlk [Player]",
    Description = "Unloopkills the Player(s)",
    Alias = {"unlk"},
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Player in pairs(Targets) do
            if not table.find(LoopKilled, Player.UserId) then continue end
            for _, Plr in pairs(LoopKilled) do
                if Plr == Player.UserId then
                    table.remove(LoopKilled, _)
                end
            end
        end
    end
})
AddCommand({
    Name = "bring",
    Help = "bring [Player]",
    Description = "brings the Players(s)",
    Alias = {},
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then
            local Pos = Speaker.Character.HumanoidRootPart.CFrame
            local Pos2 = LocalPlayer.Character.HumanoidRootPart.CFrame
            local Targets = GetPlayers(Args[1], Speaker)
            for _, Player in pairs(Targets) do
                Teleport(Player, Pos)
                task.wait()
            end
            Refresh(Pos2)
        else
            local Pos = LocalPlayer.Character.HumanoidRootPart.CFrame
            local Targets = GetPlayers(Args[1], Speaker)
            for _, Player in pairs(Targets) do
                Teleport(Player, Pos)
                task.wait()
            end
        end
    end
})
AddCommand({
    Name = "to",
    Help = "to/goto [Player]",
    Description = "Goto the Players(s)",
    Alias = {"goto"},
    Callback = function(Args, Speaker)
        if Speaker == LocalPlayer then
            local Pos = Speaker.Character.HumanoidRootPart.CFrame
            local Targets = GetPlayers(Args[1], Speaker)
            for _, Player in pairs(Targets) do
                if not Player.Character or not Player.Character.HumanoidRootPart then continue end
                LocalPlayer.Character.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame
                break;
            end
        else
            local Pos = LocalPlayer.Character.HumanoidRootPart.CFrame
            local Targets = GetPlayers(Args[1], Speaker)
            for _, Player in pairs(Targets) do
                if not Player.Character or not Player.Character.HumanoidRootPart then continue end
                Teleport(Speaker, Player.Character.HumanoidRootPart.CFrame)
                break;
            end
            Refresh(Pos)
        end
    end
})
AddCommand({
    Name = "crash",
    Help = "crash",
    Description = "Crashs the server",
    Alias = {},
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then return end
        local Count = 0
        Lib.prompt("Prisonware", "Please wait", 10)
        task.spawn(InvokeServer, Workspace.Remote.ItemHandler, Workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
        local Hammer = LocalPlayer.Backpack.ChildAdded:Wait()
        Hammer:WaitForChild("Handle").ChildAdded:Connect(function(Child)
            task.defer(Child.Destroy, Child)
            Count += 1
        end)
        for i=1,12000 do
            task.spawn(FireServer, ReplicatedStorage.weldEvent, Hammer)
        end
        task.spawn(function()
            repeat task.wait() until Count > 40000
            task.spawn(function()
                while true do
                    Hammer.Parent = LocalPlayer.Character
                    task.wait()
                    Hammer.Parent = LocalPlayer.Backpack
                    task.wait()
                end
            end)
            Lib.prompt("Prisonware", "Crashed server", 10)
        end)
    end
})

AddCommand({
    Name = "prison",
    Help = "prison",
    Description = "Tps u the prison",
    Alias = {},
    Callback = function(Args, Speaker) 
        if Speaker == LocalPlayer then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918, 100, 2382)
        else
            Teleport(Speaker, CFrame.new(918, 100, 2382))
        end
    end
})
AddCommand({
    Name = "yard",
    Help = "yard",
    Description = "Tps u the yard",
    Alias = {},
    Callback = function(Args, Speaker) 
        if Speaker == LocalPlayer then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(780, 98, 2472)
        else
            Teleport(Speaker, CFrame.new(780, 98, 2472))
        end
    end
})
AddCommand({
    Name = "base",
    Help = "base/crimbase",
    Description = "Tps u the crimbase",
    Alias = {"crimbase"},
    Callback = function(Args, Speaker) 
        if Speaker == LocalPlayer then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-944, 94, 2068)
        else
            Teleport(Speaker, CFrame.new(-944, 94, 2068))
        end
    end
})
AddCommand({
    Name = "guardroom",
    Help = "guardroom/policeroom",
    Description = "Tps u the guard room",
    Alias = {"policeroom"},
    Callback = function(Args, Speaker) 
        if Speaker == LocalPlayer then
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836, 100, 2306)
        else
            Teleport(Speaker, CFrame.new(836, 100, 2306))
        end
    end
})

-- // GUI \\ --

local GUI = loadstring([[
    local Gui = Instance.new("ScreenGui")
    local Commandbar = Instance.new("TextBox")
    local Arrow = Instance.new("TextLabel")
    local DropShadow = Instance.new("ImageLabel")

    Gui.Name = "Gui"
    Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Commandbar.Name = "Commandbar"
    Commandbar.Parent = Gui
    Commandbar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Commandbar.BackgroundTransparency = 0.500
    Commandbar.BorderSizePixel = 0
    Commandbar.Position = UDim2.new(0.0709219873, 0, 0.900481522, 0)
    Commandbar.Size = UDim2.new(0.899999976, 0, 0, 50)
    Commandbar.Font = Enum.Font.SourceSans
    Commandbar.Text = ""
    Commandbar.TextColor3 = Color3.fromRGB(255, 255, 255)
    Commandbar.TextSize = 20
    Commandbar.TextXAlignment = Enum.TextXAlignment.Left

    Arrow.Name = "Arrow"
    Arrow.Parent = Commandbar
    Arrow.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Arrow.BackgroundTransparency = 0.500
    Arrow.BorderSizePixel = 0
    Arrow.Position = UDim2.new(-0.0335, 0, 0, 0)
    Arrow.Size = UDim2.new(0, 46, 0, 50)
    Arrow.Font = Enum.Font.SourceSans
    Arrow.Text = ">"
    Arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    Arrow.TextScaled = true
    Arrow.TextSize = 14.000
    Arrow.TextWrapped = true

    DropShadow.Name = "DropShadow"
    DropShadow.Parent = Commandbar
    DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DropShadow.BackgroundTransparency = 1.000
    DropShadow.Position = UDim2.new(0, -51, 0, -5)
    DropShadow.Size = UDim2.new(1.05299997, 9, 1, 10)
    DropShadow.ZIndex = -5
    DropShadow.Image = "rbxassetid://297694300"
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.500
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
    DropShadow.SliceScale = 0.050

return Gui]])()

local MainGui = Instance.new("ScreenGui")
MainGui.Name = "Prisonware"
local CmdBar = GUI.Commandbar
CmdBar.Parent = MainGui

local CmdbarOpen = true
local function ToggleCmdbar(a, InputState)
    if InputState and InputState ~= Enum.UserInputState.Begin then return end
    if CmdbarOpen then
        CmdBar:TweenPosition(UDim2.new(0.07, 0, 1.1, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25)
        CmdbarOpen = false
    elseif not CmdbarOpen then
        CmdBar:TweenPosition(UDim2.new(0.07, 0, 0.9, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25)
        CmdBar:CaptureFocus()
        task.wait()
        CmdBar.Text = ""
        CmdbarOpen = true
    end
end

ContextActionService:BindAction("Toggle-Cmdbar", ToggleCmdbar, false, Enum.KeyCode.BackSlash)

-- // Finish up \\ --
for _, Player in pairs(Players:GetPlayers()) do
    Player.Chatted:Connect(function(Message)
        PlayerChatted:Fire(Player, Message)
    end)
end
Players.PlayerAdded:Connect(function(Player)
    Player.Chatted:Connect(function(Message)
        PlayerChatted:Fire(Player, Message)
    end)
end)
PlayerChatted:Connect(function(Player, Message)
    if Player == LocalPlayer or table.find(Ranked, Player.UserId) then
        print(Message, Player.Name)
        HandleString(Message, Player)
    end
end)

local Lastpos = CFrame.new(0,0,0)
local Lastcam = CFrame.new(0,0,0)
task.spawn(function()
    while task.wait() do
        pcall(function()
            Lastpos = LocalPlayer.Character.HumanoidRootPart.CFrame
            Lastcam = Workspace.CurrentCamera.CFrame
        end)
    end
end)

LocalPlayer.CharacterAdded:Connect(function(Char)
    local HRP = Char:WaitForChild("HumanoidRootPart")
    local Humanoid = Char:WaitForChild("Humanoid")

    Humanoid.Died:Connect(function()
        Refresh()
    end)

    --[[local newHum = Humanoid:Clone()
    Humanoid.Name = 69
    Humanoid:Destroy()
    newHum.Parent = LocalPlayer.Character

    HRP.CFrame = Lastpos
    Workspace.CurrentCamera.CFrame = Lastcam
    Workspace.CurrentCamera.Changed:Wait()
    Workspace.CurrentCamera.CFrame = Lastcam]]

    if HRP.CFrame.Y <= -100 then
        HRP.CFrame = Lastpos
    end
end)

task.spawn(function()
    while true do
        pcall(function()
            local KillList = {}
            for _, Player in pairs(Players:GetPlayers()) do
                if Player == LocalPlayer or not Player.Character or Player.Character:FindFirstChildOfClass("ForceField") then continue end
                local Humanoid = Player.Character:FindFirstChildOfClass("Humanoid")
                if table.find(LoopKilled, Player.UserId) and Humanoid and Humanoid.Health > 0 then
                    table.insert(KillList, Player)
                    print(Player.Name)
                end
            end
            if #KillList > 0 then
                Kill(KillList)
            end
        end)
        task.wait(0.25)
    end
end)

CmdBar.FocusLost:Connect(function()
    local Text = CmdBar.Text
    ToggleCmdbar()
    if Text ~= "" then
        HandleString(Settings.Prefix..Text)
    end
end)
MainGui.Parent = game:GetService("CoreGui")

Refresh()
