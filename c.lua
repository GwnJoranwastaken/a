local GUI = loadstring([[
    local GUI = Instance.new("ScreenGui")
    local CommandList = Instance.new("Frame")
    local Label = Instance.new("TextLabel")
    local Commands = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local Search = Instance.new("TextBox")
    local Corners = Instance.new("UICorner")
    local Close = Instance.new("TextButton")
    local DropShadow = Instance.new("ImageLabel")
    local CommandBar = Instance.new("Frame")
    local Arrow = Instance.new("TextLabel")
    local Input = Instance.new("TextBox")
    local DropShadow_2 = Instance.new("ImageLabel")
    local Output = Instance.new("Frame")
    local Label_2 = Instance.new("TextLabel")
    local ScrollingFrame = Instance.new("ScrollingFrame")
    local UIListLayout_2 = Instance.new("UIListLayout")
    local Close_2 = Instance.new("TextButton")
    local DropShadow_3 = Instance.new("ImageLabel")
    local CommandFrame = Instance.new("Frame")
    local Corners_2 = Instance.new("UICorner")
    local Name = Instance.new("TextLabel")
    local Usage = Instance.new("TextLabel")
    local Description = Instance.new("TextLabel")
    local Aliases = Instance.new("TextLabel")
    local Info = Instance.new("TextLabel")
    local Warn = Instance.new("TextLabel")
    local Err = Instance.new("TextLabel")
    local NotificationHolder = Instance.new("Frame")
    local UIListLayout_3 = Instance.new("UIListLayout")
    local Notification = Instance.new("Frame")
    local Label_3 = Instance.new("TextLabel")
    local Filler = Instance.new("TextLabel")
    local Body = Instance.new("TextLabel")
    local DropShadow_4 = Instance.new("ImageLabel")
    
    GUI.Name = "GUI"
    GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    CommandList.Name = "CommandList"
    CommandList.Parent = GUI
    CommandList.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    CommandList.BorderSizePixel = 0
    CommandList.Position = UDim2.new(0.0439633578, 0, 0.123595506, 0)
    CommandList.Size = UDim2.new(0, 360, 0, 300)
    CommandList.Visible = false
    
    Label.Name = "Label"
    Label.Parent = CommandList
    Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1.000
    Label.BorderSizePixel = 0
    Label.Size = UDim2.new(0, 360, 0, 20)
    Label.Font = Enum.Font.SourceSans
    Label.Text = "Commands"
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.TextSize = 18.000
    
    Commands.Name = "Commands"
    Commands.Parent = CommandList
    Commands.Active = true
    Commands.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Commands.BackgroundTransparency = 1.000
    Commands.Position = UDim2.new(0, 0, 0.232524514, 0)
    Commands.Size = UDim2.new(0, 360, 0, 230)
    Commands.ScrollBarThickness = 0
    
    UIListLayout.Parent = Commands
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 6)
    
    Search.Name = "Search"
    Search.Parent = CommandList
    Search.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    Search.BorderSizePixel = 0
    Search.Position = UDim2.new(0.0111112148, 0, 0.0931899175, 0)
    Search.Size = UDim2.new(0, 350, 0, 35)
    Search.Font = Enum.Font.SourceSans
    Search.PlaceholderColor3 = Color3.fromRGB(200, 200, 200)
    Search.PlaceholderText = "Search commands"
    Search.Text = ""
    Search.TextColor3 = Color3.fromRGB(255, 255, 255)
    Search.TextSize = 18
    Search.TextXAlignment = Enum.TextXAlignment.Left
    
    Corners.CornerRadius = UDim.new(0, 4)
    Corners.Name = "Corners"
    Corners.Parent = Search
    
    Close.Name = "Close"
    Close.Parent = CommandList
    Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close.BackgroundTransparency = 1.000
    Close.BorderSizePixel = 0
    Close.Position = UDim2.new(0.944444418, 0, 0, 0)
    Close.Size = UDim2.new(0, 20, 0, 20)
    Close.Font = Enum.Font.SourceSans
    Close.Text = "x"
    Close.TextColor3 = Color3.fromRGB(255, 255, 255)
    Close.TextScaled = true
    Close.TextSize = 14.000
    Close.TextWrapped = true
    
    DropShadow.Name = "DropShadow"
    DropShadow.Parent = CommandList
    DropShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DropShadow.BackgroundTransparency = 1.000
    DropShadow.Position = UDim2.new(0, -5, 0, -5)
    DropShadow.Size = UDim2.new(1, 10, 1, 10)
    DropShadow.ZIndex = -5
    DropShadow.Image = "rbxassetid://297694300"
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.500
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(95, 103, 894, 902)
    DropShadow.SliceScale = 0.050
    
    CommandBar.Name = "CommandBar"
    CommandBar.Parent = GUI
    CommandBar.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    CommandBar.BorderSizePixel = 0
    CommandBar.Position = UDim2.new(0.0490694568, 0, 1.14999998, 0)
    CommandBar.Size = UDim2.new(0.899999976, 0, 0, 50)
    
    Arrow.Name = "Arrow"
    Arrow.Parent = CommandBar
    Arrow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Arrow.BackgroundTransparency = 1.000
    Arrow.BorderSizePixel = 0
    Arrow.Size = UDim2.new(0.0460550003, 0, 0, 50)
    Arrow.Font = Enum.Font.SourceSans
    Arrow.Text = ">"
    Arrow.TextColor3 = Color3.fromRGB(255, 255, 255)
    Arrow.TextScaled = true
    Arrow.TextSize = 69.000
    Arrow.TextWrapped = true
    
    Input.Name = "Input"
    Input.Parent = CommandBar
    Input.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    Input.BackgroundTransparency = 0.100
    Input.BorderSizePixel = 0
    Input.Position = UDim2.new(0.0460549966, 0, 0, 0)
    Input.Size = UDim2.new(0.953040004, 0, 0, 50)
    Input.Font = Enum.Font.SourceSans
    Input.PlaceholderText = "Command here"
    Input.Text = ""
    Input.TextColor3 = Color3.fromRGB(255, 255, 255)
    Input.TextSize = 18.000
    Input.TextXAlignment = Enum.TextXAlignment.Left
    
    DropShadow_2.Name = "DropShadow"
    DropShadow_2.Parent = CommandBar
    DropShadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DropShadow_2.BackgroundTransparency = 1.000
    DropShadow_2.Position = UDim2.new(0, -5, 0, -5)
    DropShadow_2.Size = UDim2.new(1, 10, 1, 10)
    DropShadow_2.ZIndex = -5
    DropShadow_2.Image = "rbxassetid://297694300"
    DropShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow_2.ImageTransparency = 0.500
    DropShadow_2.ScaleType = Enum.ScaleType.Slice
    DropShadow_2.SliceCenter = Rect.new(95, 103, 894, 902)
    DropShadow_2.SliceScale = 0.050
    
    Output.Name = "Output"
    Output.Parent = GUI
    Output.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Output.BorderSizePixel = 0
    Output.Position = UDim2.new(0.557550132, 0, 0.211357281, 0)
    Output.Size = UDim2.new(0, 325, 0, 245)
    Output.Visible = false
    
    Label_2.Name = "Label"
    Label_2.Parent = Output
    Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Label_2.BackgroundTransparency = 1.000
    Label_2.BorderSizePixel = 0
    Label_2.Size = UDim2.new(0, 325, 0, 20)
    Label_2.Font = Enum.Font.SourceSans
    Label_2.Text = "Output"
    Label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label_2.TextSize = 18.000
    
    ScrollingFrame.Parent = Output
    ScrollingFrame.Active = true
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.Position = UDim2.new(0.0136412978, 0, 0.100000001, 0)
    ScrollingFrame.Size = UDim2.new(0, 315, 0, 215)
    ScrollingFrame.ScrollBarThickness = 0
    
    UIListLayout_2.Parent = ScrollingFrame
    UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
    
    Close_2.Name = "Close"
    Close_2.Parent = Output
    Close_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Close_2.BackgroundTransparency = 1.000
    Close_2.BorderSizePixel = 0
    Close_2.Position = UDim2.new(0.944444418, 0, 0, 0)
    Close_2.Size = UDim2.new(0, 20, 0, 20)
    Close_2.Font = Enum.Font.SourceSans
    Close_2.Text = "x"
    Close_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Close_2.TextScaled = true
    Close_2.TextSize = 14.000
    Close_2.TextWrapped = true
    
    DropShadow_3.Name = "DropShadow"
    DropShadow_3.Parent = Output
    DropShadow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DropShadow_3.BackgroundTransparency = 1.000
    DropShadow_3.Position = UDim2.new(0, -5, 0, -5)
    DropShadow_3.Size = UDim2.new(1, 10, 1, 10)
    DropShadow_3.ZIndex = -5
    DropShadow_3.Image = "rbxassetid://297694300"
    DropShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow_3.ImageTransparency = 0.500
    DropShadow_3.ScaleType = Enum.ScaleType.Slice
    DropShadow_3.SliceCenter = Rect.new(95, 103, 894, 902)
    DropShadow_3.SliceScale = 0.050
    
    CommandFrame.Name = "CommandFrame"
    CommandFrame.Parent = GUI
    CommandFrame.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    CommandFrame.BorderColor3 = Color3.fromRGB(41, 41, 41)
    CommandFrame.Position = UDim2.new(0.481520593, 0, 0.215088278, 0)
    CommandFrame.Size = UDim2.new(0, 350, 0, 90)
    CommandFrame.Visible = true
    
    Corners_2.CornerRadius = UDim.new(0, 4)
    Corners_2.Name = "Corners"
    Corners_2.Parent = CommandFrame
    
    Name.Name = "Name"
    Name.Parent = CommandFrame
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1.000
    Name.BorderSizePixel = 0
    Name.Size = UDim2.new(0, 350, 0, 28)
    Name.Font = Enum.Font.GothamBold
    Name.Text = "Sample"
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextSize = 14.000
    
    Usage.Name = "Usage"
    Usage.Parent = CommandFrame
    Usage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Usage.BackgroundTransparency = 1.000
    Usage.BorderSizePixel = 0
    Usage.Position = UDim2.new(0, 0, 0.32131356, 0)
    Usage.Size = UDim2.new(0, 350, 0, 20)
    Usage.Font = Enum.Font.Gotham
    Usage.Text = "Usage: Sample [player]"
    Usage.TextColor3 = Color3.fromRGB(255, 255, 255)
    Usage.TextSize = 14.000
    Usage.TextXAlignment = Enum.TextXAlignment.Left
    
    Description.Name = "Description"
    Description.Parent = CommandFrame
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1.000
    Description.BorderSizePixel = 0
    Description.Position = UDim2.new(0, 0, 0.544458628, 0)
    Description.Size = UDim2.new(0, 350, 0, 20)
    Description.Font = Enum.Font.Gotham
    Description.Text = "Description: do something"
    Description.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description.TextSize = 14.000
    Description.TextXAlignment = Enum.TextXAlignment.Left
    
    Aliases.Name = "Aliases"
    Aliases.Parent = CommandFrame
    Aliases.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Aliases.BackgroundTransparency = 1.000
    Aliases.BorderSizePixel = 0
    Aliases.Position = UDim2.new(0, 0, 0.767603755, 0)
    Aliases.Size = UDim2.new(0, 350, 0, 20)
    Aliases.Font = Enum.Font.Gotham
    Aliases.Text = "Aliases: test"
    Aliases.TextColor3 = Color3.fromRGB(255, 255, 255)
    Aliases.TextSize = 14.000
    Aliases.TextXAlignment = Enum.TextXAlignment.Left
    
    Info.Name = "Info"
    Info.Parent = GUI
    Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Info.BackgroundTransparency = 1.000
    Info.BorderSizePixel = 0
    Info.Size = UDim2.new(0, 314, 0, 25)
    Info.Visible = true
    Info.Font = Enum.Font.SourceSans
    Info.Text = "[Info]: Sample text"
    Info.TextColor3 = Color3.fromRGB(255, 255, 255)
    Info.TextSize = 17.000
    Info.TextXAlignment = Enum.TextXAlignment.Left
    
    Warn.Name = "Warn"
    Warn.Parent = GUI
    Warn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Warn.BackgroundTransparency = 1.000
    Warn.BorderSizePixel = 0
    Warn.Position = UDim2.new(0, 0, 0.116279073, 0)
    Warn.Size = UDim2.new(0, 314, 0, 25)
    Warn.Visible = true
    Warn.Font = Enum.Font.SourceSans
    Warn.Text = "[Warn]: Sample text"
    Warn.TextColor3 = Color3.fromRGB(255, 218, 68)
    Warn.TextSize = 17.000
    Warn.TextXAlignment = Enum.TextXAlignment.Left
    
    Err.Name = "Err"
    Err.Parent = GUI
    Err.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Err.BackgroundTransparency = 1.000
    Err.BorderSizePixel = 0
    Err.Position = UDim2.new(0, 0, 0.232558146, 0)
    Err.Size = UDim2.new(0, 314, 0, 25)
    Err.Visible = true
    Err.Font = Enum.Font.SourceSans
    Err.Text = "[Err]: Sample text"
    Err.TextColor3 = Color3.fromRGB(215, 90, 74)
    Err.TextSize = 17.000
    Err.TextXAlignment = Enum.TextXAlignment.Left
    
    NotificationHolder.Name = "NotificationHolder"
    NotificationHolder.Parent = GUI
    NotificationHolder.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    NotificationHolder.BackgroundTransparency = 1.000
    NotificationHolder.BorderSizePixel = 0
    NotificationHolder.Position = UDim2.new(0, 6, 0, 6)
    NotificationHolder.Size = UDim2.new(0.99000001, 0, 0.980000019, 0)
    
    UIListLayout_3.Parent = NotificationHolder
    UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_3.VerticalAlignment = Enum.VerticalAlignment.Bottom
    UIListLayout_3.Padding = UDim.new(0, 4)
    
    Notification.Name = "Notification"
    Notification.Parent = GUI
    Notification.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Notification.BorderSizePixel = 0
    Notification.Position = UDim2.new(0.00453227572, 0, 0.407250673, 0)
    Notification.Size = UDim2.new(0, 250, 0, 80)
    Notification.Visible = true
    
    Label_3.Name = "Label"
    Label_3.Parent = Notification
    Label_3.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    Label_3.BorderSizePixel = 0
    Label_3.Position = UDim2.new(0.0240000002, 0, 0, 0)
    Label_3.Size = UDim2.new(0, 244, 0, 21)
    Label_3.Font = Enum.Font.SourceSans
    Label_3.Text = "Notification"
    Label_3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label_3.TextSize = 18.000
    Label_3.TextXAlignment = Enum.TextXAlignment.Left
    
    Filler.Name = "Filler"
    Filler.Parent = Label_3
    Filler.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    Filler.BorderSizePixel = 0
    Filler.Position = UDim2.new(-0.0251803398, 0, 0, 0)
    Filler.Size = UDim2.new(0, 6, 0, 21)
    Filler.Font = Enum.Font.SourceSans
    Filler.Text = ""
    Filler.TextColor3 = Color3.fromRGB(0, 0, 0)
    Filler.TextSize = 14.000
    
    Body.Name = "Body"
    Body.Parent = Notification
    Body.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    Body.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Body.BorderSizePixel = 0
    Body.Position = UDim2.new(0.023999989, 0, 0.25, 0)
    Body.Size = UDim2.new(0, 244, 0, 59)
    Body.Font = Enum.Font.SourceSans
    Body.Text = "Sample text"
    Body.TextColor3 = Color3.fromRGB(255, 255, 255)
    Body.TextSize = 18.000
    Body.TextWrapped = true
    Body.TextXAlignment = Enum.TextXAlignment.Left
    Body.TextYAlignment = Enum.TextYAlignment.Top
    
    DropShadow_4.Name = "DropShadow"
    DropShadow_4.Parent = Notification
    DropShadow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    DropShadow_4.BackgroundTransparency = 1.000
    DropShadow_4.Position = UDim2.new(0, -5, 0, -5)
    DropShadow_4.Size = UDim2.new(1, 10, 1, 10)
    DropShadow_4.ZIndex = -5
    DropShadow_4.Image = "rbxassetid://297694300"
    DropShadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow_4.ImageTransparency = 0.500
    DropShadow_4.ScaleType = Enum.ScaleType.Slice
    DropShadow_4.SliceCenter = Rect.new(95, 103, 894, 902)
    DropShadow_4.SliceScale = 0.050
    
    return GUI
]])()

local game = game
local GetService = game.GetService
local Services = {
    Workspace = GetService(game, "Workspace");
    Players = GetService(game, "Players");
    CoreGui = GetService(game, "CoreGui");
    TweenService = GetService(game, "TweenService");
    RunService = GetService(game, "RunService");
    HttpService = GetService(game, "HttpService");
    ReplicatedStorage = GetService(game, "ReplicatedStorage");
    UserInputService = GetService(game, "UserInputService");
    ContextActionService = GetService(game, "ContextActionService")
}
local Connections = {}
local Commands = {}
local States = {
    Godmode = false,
    Fastrespawn = true,
    Autoguns = false,
    Noclip = false,
}
local Ranked = {}
local LoopKilled = {}
local AuraPlayers = {}
local InfectedPlayers = {}
local Prefix = "?"

local LocalPlayer = Services.Players.LocalPlayer
local InvokeServer = Instance.new("RemoteFunction").InvokeServer

if getgenv().stopAdmin then getgenv().stopAdmin() end

local CommandFrame = GUI.CommandFrame:Clone()
local CommandList = GUI.CommandList
local CommandBar = GUI.CommandBar
local OutputFrame = GUI.Output
local Notification = GUI.Notification:Clone()
local NotificationHolder = GUI.NotificationHolder
local OutputLabels = {
    ["info"] = GUI.Info:Clone();
    ["warn"] = GUI.Warn:Clone();
    ["err"] = GUI.Err:Clone();
}
local function Output(Type, Message)
    local Label = (OutputLabels[Type:lower()] and OutputLabels[Type:lower()]:Clone()) or nil
    if Label then
        Label.Text = "["..Label.Name.."]: "..Message
        Label.Parent = OutputFrame.ScrollingFrame
    end
end
local function Notify(Message, Time)
    local Notification = Notification:Clone()

    Notification.Body.Text = Message
    Notification.Parent = NotificationHolder

    task.delay(Time or 5, function()
        local Tween = Services.TweenService:Create(Notification, TweenInfo.new(0.5), {Transparency = 1})
        Services.TweenService:Create(Notification.Label.Filler, TweenInfo.new(0.5), {Transparency = 1, TextTransparency = 1}):Play()
        Services.TweenService:Create(Notification.Label, TweenInfo.new(0.5), {Transparency = 1, TextTransparency = 1}):Play()
        Services.TweenService:Create(Notification.Body, TweenInfo.new(0.5), {Transparency = 1, TextTransparency = 1}):Play()
        Services.TweenService:Create(Notification.DropShadow, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()
        Tween:Play()
        Tween.Completed:Wait()
        Notification:Destroy()
    end)
end

-- // Functions \\ --
local function GetCharacter(Player)
    return (Player and Player.Character) or LocalPlayer.Character
end
local function GetHumanoid(Player)
    local Char = GetCharacter(Player or nil)
    return Char:FindFirstChildOfClass("Humanoid") or nil
end
local function GetRoot(Player)
    local Char = GetCharacter(Player or nil)
    local Humanoid = GetHumanoid(Player or nil)
    return (Char and Char:FindFirstChild("HumanoidRootPart")) or (Humanoid and Humanoid.RootPart) or nil
end

-- // Command functions \\ --
local function GetPlayers(String, Speaker)
    String = String:lower()
    if String == "me" then
        return {Speaker}
    elseif String == "random" then
        return {Services.Players:GetPlayers()[math.random(1,#Services.Players:GetPlayers())]}
    elseif String == "others" then
        local Plrs = {}
        for _,Player in pairs(Services.Players:GetPlayers()) do
            if Player ~= Speaker then
                table.insert(Plrs, Player)
            end
        end
        return Plrs
    elseif String == "all" then
        return Services.Players:GetPlayers()
    else
        for _, Player in pairs(Services.Players:GetPlayers()) do
            if string.find(Player.Name:lower(), String) or string.find(Player.DisplayName:lower(), String) then
                return {Player}
            end
        end
    end
end
local function FindCommand(String)
    String = String:lower()
    for _, Cmd in pairs(Commands) do
        if Cmd.Name:lower() == String then
            return Cmd
        elseif Cmd.Alias then
            for _, Alias in pairs(Cmd.Alias) do
                if Alias:lower() == String then
                    return Cmd
                end
            end
        end
    end
end
local function AddCommand(Table)
    if Table.Name and Table.Description and Table.Help and Table.Callback then
        table.insert(Commands, Table)
    end
end
local function ExecuteCommand(String, Speaker)
    if String:lower():sub(1, #Prefix) ~= Prefix:lower() then return end
    Speaker = Speaker or LocalPlayer
    String = String:gsub("%"..Prefix, "")
    local Args = String:split(" ")
    local Cmd = FindCommand(Args[1])
    if Cmd then
        table.remove(Args, 1)
        Cmd.Callback(Args, Speaker)
    end
end

local SavedCFrame, SavedCam
local function SavePos()
    local Root = GetRoot()
    local Cam = Services.Workspace.CurrentCamera
    if Root then
        SavedCFrame = Root.CFrame
    end
    if Cam then
        SavedCam = Cam.CFrame
    end
end
local function LoadPos(Position)
    local Root = GetRoot()
    local Cam = Services.Workspace.CurrentCamera
    if Root then
        Root.CFrame = Position or SavedCFrame
    end
    if Cam then
        Cam.CFrame = SavedCam
        Cam.Changed:Wait()
        Cam.CFrame = SavedCam
    end
end
local function LoadChar(Color)
    task.spawn(GetCharacter().Destroy, GetCharacter())
    task.spawn(InvokeServer, Services.Workspace.Remote.loadchar, Services.HttpService:GenerateGUID(false), Color or nil)
    return LocalPlayer.CharacterAdded:Wait()
end
local function Refresh()
    SavePos()
    local Char = LoadChar(Color3.fromRGB(math.random(1,255), math.random(1,255), math.random(1,255)))
    Char:WaitForChild("HumanoidRootPart")
    LoadPos()
    Output("Info", "Refreshed")
end
local ToolTable = {
    ["M9"] = Services.Workspace["Prison_ITEMS"].giver.M9.ITEMPICKUP,
    ["Remington 870"] = Services.Workspace["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP,
    ["AK-47"] = Services.Workspace["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP,
    ["Crude Knife"] = Services.Workspace.Prison_ITEMS.single:FindFirstChild("Crude Knife").ITEMPICKUP,
    ["Hammer"] = Services.Workspace.Prison_ITEMS.single:FindFirstChild("Hammer").ITEMPICKUP
}
local function GetTool(Name)
    local Tool = LocalPlayer.Backpack:FindFirstChild(Name) or LocalPlayer.Character:FindFirstChild(Name)
    if Tool then return Tool end
    Tool = ToolTable[Name]
    task.spawn(InvokeServer, Services.Workspace.Remote.ItemHandler, Tool)
    return LocalPlayer.Backpack:WaitForChild(Name)
end
local function Kill(List)
    local Gun = GetTool("Remington 870")
    local Table = {
        [1] = {},
        [2] = Gun
    }
    for Index, Player in pairs(List) do
        local Root = GetRoot(Player)
        local Hum = GetHumanoid(Player)
        if Root and (Hum and Hum.Health > 0) then
            for i=1, (Hum.MaxHealth > 100 and 10 or 8) do
                table.insert(Table[1], {
                    ["RayObject"] = Ray.new(),
                    ["Distance"] = 69,
                    ["Cframe"] = CFrame.new(),
                    ["Hit"] = Root
                })
            end
        end    
    end
    Services.ReplicatedStorage.ShootEvent:FireServer(unpack(Table))
    Services.ReplicatedStorage.ReloadEvent:FireServer(Gun)
end
local function Teleport(Player, Position)
    if Player == LocalPlayer then
        GetRoot().CFrame = Position
        return
    end
    SavePos()
    local success = pcall(function() 
        local Character = LoadChar(Color3.new(0, 255, 0))
        local Root = Character:WaitForChild("HumanoidRootPart")
        local STOP = false

        LoadPos(Position)
        local Hammer = GetTool("Hammer")
        local TargetCharacter = GetCharacter(Player)

        local Hum = GetHumanoid()
        local HumClone = Hum:Clone()
        HumClone.Parent = Character
        Hum:Destroy()
        Services.Workspace.CurrentCamera.CameraSubject = Character

        Hammer.Parent = Character
        task.wait(0.1)
        task.delay(2, function() STOP = true end)
        repeat
            task.wait()
            Root.CFrame = Position + Vector3.new(0, math.random(-0.5, 0.5))
            TargetCharacter.HumanoidRootPart.CFrame = Hammer.Handle.CFrame
        until Hammer.Parent ~= Character or STOP
        task.wait(0.2)
        Character = LoadChar(Color3.new(69,12,83))
        Character:WaitForChild("HumanoidRootPart")

        LoadPos()
    end)
    if not success then
        local Char = LoadChar(Color3.new(69,12,83))
        Char:WaitForChild("HumanoidRootPart")
        LoadPos()
    end
end
local function GetPlayersInRange(Position, Range)
    local Plrs = {}
    for _, Player in pairs(Services.Players:GetPlayers()) do
        if not GetCharacter(Player) or Player == LocalPlayer then continue end
        local Root = GetRoot(Player)
        local Hum = GetHumanoid(Player)
        if not Hum or not Root or Hum.Health <= 0 or GetCharacter(Player):FindFirstChildOfClass("ForceField") then continue end
        local Mag = (Position - Root.Position).Magnitude
        if Mag <= Range then
            table.insert(Plrs, Player)
        end
    end
    return Plrs
end

-- // Add Commands \\ --
AddCommand({
    Name = "cmds",
    Alias = {"commands"},
    Help = "cmds/commands",
    Description = "Shows a list of commands",
    Callback = function(Args, Speaker)
        if Speaker == LocalPlayer then
            CommandList.Visible = not CommandList.Visible
        else
            Services.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. Speaker.Name .. " cmds, kill, loopkill, unloopkill, aura, virus, bring, prison, yard, base/crimbase, walmart", "All")
        end
    end
})
AddCommand({
    Name = "output",
    Alias = {},
    Help = "output",
    Description = "Shows a output",
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then return end
        OutputFrame.Visible = not OutputFrame.Visible
    end
})
AddCommand({
    Name = "admin",
    Alias = {"rank"},
    Help = "admin/rank [Player(s)]",
    Description = "Ranks the player(s)",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Target in pairs(Targets) do
            table.insert(Ranked, Target.UserId)
            Services.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. Target.Name .. " [Prisonware] U have been ranked", "All")
        end
        Output("Info", "Ranked " .. #Targets .. " Players")
    end
})
AddCommand({
    Name = "refresh",
    Alias = {"re"},
    Help = "refresh/re",
    Description = "Refresh ur character",
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then return end
        Refresh()
    end
})
AddCommand({
    Name = "god",
    Alias = {"godmode"},
    Help = "god [off/on]",
    Description = "Toggle godmode",
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then return end
        if Args[1] then
            if Args[1]:lower() == "on" then
                States.Godmode = true
            elseif Args[1]:lower() == "off" then
                States.Godmode = false
            end
        else
            States.Godmode = not States.Godmode
        end
        if States.Godmode then
            Notify("Enabled godmode", 3)
        elseif not States.Godmode then
            Notify("Disabled godmode", 3)
        end
        Refresh(Color3.fromRGB(math.random(1,255), math.random(1,255), math.random(1,255)))
    end
})
AddCommand({
    Name = "autoguns",
    Alias = {"aguns"},
    Help = "autoguns/aguns [off/on]",
    Description = "Toggle autoguns",
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then return end
        if Args[1] then
            if Args[1]:lower() == "on" then
                States.Autoguns = true
            elseif Args[1]:lower() == "off" then
                States.Autoguns = false
            end
        else
            States.Autoguns = not States.Autoguns
        end
        if States.Autoguns then
            Notify("Enabled Autoguns", 3)
        elseif not States.Autoguns then
            Notify("Disabled Autoguns", 3)
        end
        Refresh(Color3.fromRGB(math.random(1,255), math.random(1,255), math.random(1,255)))
    end
})
AddCommand({
    Name = "fastrespawn",
    Alias = {},
    Help = "fastrespawn [off/on]",
    Description = "Toggle fastrespawn",
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then return end
        if Args[1] then
            if Args[1]:lower() == "on" then
                States.Fastrespawn = true
            elseif Args[1]:lower() == "off" then
                States.Fastrespawn = false
            end
        else
            States.Fastrespawn = not States.Fastrespawn
        end
        if States.Fastrespawn then
            Notify("Enabled Fastrespawn", 3)
        elseif not States.Fastrespawn then
            Notify("Disabled Fastrespawn", 3)
        end
    end
})
AddCommand({
    Name = "noclip",
    Alias = {},
    Help = "noclip [off/on]",
    Description = "Toggle noclip",
    Callback = function(Args, Speaker)
        if Speaker ~= LocalPlayer then return end
        if Args[1] then
            if Args[1]:lower() == "on" then
                States.Noclip = true
            elseif Args[1]:lower() == "off" then
                States.Noclip = false
            end
        else
            States.Noclip = not States.Noclip
        end
        if States.Noclip then
            Notify("Enabled Noclip", 3)
        elseif not States.Noclip then
            Notify("Disabled Noclip", 3)
        end
    end
})
AddCommand({
    Name = "kill",
    Alias = {},
    Help = "kill [Player(s)]",
    Description = "Kills the player(s)",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        Kill(Targets)
        Output("Info", "Killed " .. #Targets .. " Players")
    end
})
AddCommand({
    Name = "loopkill",
    Alias = {"lkill", "lk"},
    Help = "loopkill [Player(s)]",
    Description = "Loopkills the player(s)",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Target in pairs(Targets) do
            table.insert(LoopKilled, Target.UserId)
        end
        Output("Info", "Loopkilled " .. #Targets .. " Players")
    end
})
AddCommand({
    Name = "unloopkill",
    Alias = {"unlk", "unlkill"},
    Help = "unloopkill/unlk [player(s)]",
    Description = "Unloopkills the player(s)",
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
    Name = "aura",
    Alias = {"killaura"},
    Help = "aura [Player(s)]",
    Description = "Gives the player(s) aura",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Target in pairs(Targets) do
            table.insert(AuraPlayers, Target.UserId)
        end
    end
})
AddCommand({
    Name = "unaura",
    Alias = {"unkillaura"},
    Help = "unaura [player(s)]",
    Description = "Removes the player(s) aura",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Player in pairs(Targets) do
            if not table.find(AuraPlayers, Player.UserId) then continue end
            for _, Plr in pairs(AuraPlayers) do
                if Plr == Player.UserId then
                    table.remove(AuraPlayers, _)
                end
            end
        end
    end
})
AddCommand({
    Name = "virus",
    Alias = {"infect"},
    Help = "virus [Player(s)]",
    Description = "Gives the player(s) virus",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Target in pairs(Targets) do
            table.insert(InfectedPlayers, Target.UserId)
        end
    end
})
AddCommand({
    Name = "unvirus",
    Alias = {"uninfect"},
    Help = "unvirus [player(s)]",
    Description = "Removes the player(s) virus",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Player in pairs(Targets) do
            if not table.find(InfectedPlayers, Player.UserId) then continue end
            for _, Plr in pairs(InfectedPlayers) do
                if Plr == Player.UserId then
                    table.remove(InfectedPlayers, _)
                end
            end
        end
    end
})
AddCommand({
    Name = "bring",
    Alias = {},
    Help = "bring [Player(s)]",
    Description = "Brings the player(s)",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        local Position = GetRoot(Speaker).CFrame + Vector3.new(0, 3, 0)
        for _, Target in pairs(Targets) do
            Teleport(Target, Position)
        end
        Output("Info", "Brought " .. #Targets .. " Players")
    end
})
AddCommand({
    Name = "to",
    Alias = {},
    Help = "to [Player]",
    Description = "Teleport to the player",
    Callback = function(Args, Speaker)
        local Targets = GetPlayers(Args[1], Speaker)
        for _, Target in pairs(Targets) do
            GetRoot().CFrame = GetRoot(Target).CFrame
        end
    end
})
AddCommand({
    Name = "prison",
    Alias = {},
    Help = "prison [Player]",
    Description = "Bring the players(s) to the prison",
    Callback = function(Args, Speaker)
        local Targets = (Args[1] and GetPlayers(Args[1], Speaker)) or {Speaker}
        local Position = CFrame.new(917, 100, 2379)
        for _, Target in pairs(Targets) do
            Teleport(Target, Position)
        end
    end
})
AddCommand({
    Name = "base",
    Alias = {"crimbase"},
    Help = "base/crimbase [Player]",
    Description = "Bring the players(s) to the base",
    Callback = function(Args, Speaker)
        local Targets = (Args[1] and GetPlayers(Args[1], Speaker)) or {Speaker}
        local Position = CFrame.new(-944, 94, 2067)
        for _, Target in pairs(Targets) do
            Teleport(Target, Position)
        end
    end
})
AddCommand({
    Name = "yard",
    Alias = {},
    Help = "yard [Player]",
    Description = "Bring the players(s) to the yard",
    Callback = function(Args, Speaker)
        local Targets = (Args[1] and GetPlayers(Args[1], Speaker)) or {Speaker}
        local Position = CFrame.new(780, 98, 2470)
        for _, Target in pairs(Targets) do
            Teleport(Target, Position)
        end
    end
})
AddCommand({
    Name = "walmart",
    Alias = {},
    Help = "walmart [Player]",
    Description = "Bring the players(s) to walmart",
    Callback = function(Args, Speaker)
        local Targets = (Args[1] and GetPlayers(Args[1], Speaker)) or {Speaker}
        local Position = CFrame.new(-413, 54, 1754)
        for _, Target in pairs(Targets) do
            Teleport(Target, Position)
        end
    end
})

-- // Connections \\ --
local function onDeath()
    Refresh()
end
local function CharAdded(Character)
    local Hum = Character:WaitForChild("Humanoid")
    local HRP = Character:WaitForChild("HumanoidRootPart")


    task.spawn(function()
        if States.Godmode then
            local newHum = Hum:Clone()
            Hum.Name = 69
            Hum:Destroy()
            newHum.Parent = Character
            Hum = newHum
            local Script = Character:FindFirstChild("Animate")
            if Script then task.spawn(function() Script.Disabled = true task.wait() Script.Disabled = false end) end
            task.defer(LoadPos)
            LocalPlayer.CharacterRemoving:Wait()
            SavePos()
        else
            Hum.Died:Connect(onDeath)
        end
    end)

    if States.Autoguns then
        task.spawn(GetTool, "M9")
        task.spawn(GetTool, "Remington 870")
        task.spawn(GetTool, "AK-47")
    end
end

table.insert(Connections, LocalPlayer.CharacterAdded:Connect(CharAdded))
table.insert(Connections, LocalPlayer.Chatted:Connect(function(Message) 
    ExecuteCommand(Message, LocalPlayer)
end))
table.insert(Connections, CommandBar.Input.FocusLost:Connect(function()
    if CommandBar.Input.Text ~= "" then
        ExecuteCommand(Prefix..CommandBar.Input.Text, LocalPlayer)
    end
    ToggleCmdbar()
end))
table.insert(Connections, CommandList.Search:GetPropertyChangedSignal("Text"):Connect(function()
    CommandList.Commands.CanvasPosition = Vector2.new(0,0)
    for Index, CmdFrame in pairs(CommandList.Commands:GetChildren()) do
        if CmdFrame:IsA("Frame") then
            if CommandList.Search ~= "" then
                if string.find(CmdFrame:FindFirstChild("Name").Text:lower(), CommandList.Search.Text:lower()) then
                    CmdFrame.Visible = true
                else
                    CmdFrame.Visible = false
                end
            else
                CmdFrame.Visible = true
            end
        end
    end
end))
table.insert(Connections, Services.Players.PlayerAdded:Connect(function(Player)
    Player.Chatted:Connect(function(Message)
        if table.find(Ranked, Player.UserId) then
            ExecuteCommand(Message, Player)
        end
    end)
end))
for _, Player in pairs(Services.Players:GetPlayers()) do
    if Player == LocalPlayer then continue end
    Player.Chatted:Connect(function(Message)
        if table.find(Ranked, Player.UserId) then
            ExecuteCommand(Message, Player)
        end
    end)
end
table.insert(Connections, Services.RunService.Stepped:Connect(function()
    if States.Noclip and GetCharacter() then
        for _, Part in pairs(GetCharacter():GetChildren()) do
            if Part:IsA("BasePart") and Part.CanCollide then
                Part.CanCollide = false
            end
        end 
    end
end))

--// Loopkill/Aura/Virus \\ --
task.spawn(function()
    while true do
        pcall(function()
            local KillList = {}

            -- // Loopkill \\ --
            for _, Player in pairs(Services.Players:GetPlayers()) do
                if Player == LocalPlayer or not Player.Character or Player.Character:FindFirstChildOfClass("ForceField") then continue end
                local Humanoid = GetHumanoid(Player)
                if table.find(LoopKilled, Player.UserId) and Humanoid and Humanoid.Health > 0 then
                    table.insert(KillList, Player)
                end
            end

            -- // Killaura/aura \\ --
            for _, Player in pairs(Services.Players:GetPlayers()) do
                if table.find(AuraPlayers, Player.UserId) and GetRoot(Player) then
                    local Kills = GetPlayersInRange(GetRoot(Player).Position, 20)
                    for _, Target in pairs(Kills) do
                        if Target == LocalPlayer or Target == Player then continue end
                        table.insert(KillList, Target)
                    end
                end
            end

            -- // Virus \\ --
            for _, Player in pairs(Services.Players:GetPlayers()) do
                if table.find(InfectedPlayers, Player.UserId) and GetRoot(Player) then
                    local Kills = GetPlayersInRange(GetRoot(Player).Position, 2.5)
                    for _, Target in pairs(Kills) do
                        if Target == LocalPlayer or Target == Player then continue end
                        table.insert(KillList, Target)
                    end
                end
            end

            -- // Execute kill \\ --
            if #KillList > 0 then
                Kill(KillList)
            end
        end)
        task.wait(0.25)
    end
end)

-- // GUI Things \\ --
GUI.Info:Destroy()
GUI.Warn:Destroy()
GUI.Err:Destroy()
GUI.CommandFrame:Destroy()
GUI.Notification:Destroy()

local CmdBaropen = false
function ToggleCmdbar(actionName, inputState, inputObject)
    if inputState and inputState ~= Enum.UserInputState.Begin then return end
    CmdBaropen = not CmdBaropen
    if CmdBaropen then
        Services.TweenService:Create(CommandBar, TweenInfo.new(0.25), {Position = UDim2.new(0.0490694568, 0, 0.879231095, 0)}):Play()
        task.defer(GUI.CommandBar.Input.CaptureFocus, CommandBar.Input, true)
    else
        Services.TweenService:Create(CommandBar, TweenInfo.new(0.25), {Position = UDim2.new(0.0490694568, 0, 1.1, 0)}):Play()
        task.wait()
        CommandBar.Input:ReleaseFocus(true)
        CommandBar.Input.Text = ""
    end
end

Services.ContextActionService:BindCoreAction("Toggle-Cmdbar", ToggleCmdbar, false, Enum.KeyCode.BackSlash)

local dragSpeed = 0.2
function Dragify(Frame)
    local dragToggle
    local dragInput
    local dragStart
    local dragPos
    local startPos
    
    local function updateInput(input)
        local Delta = input.Position - dragStart
        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        if dragSpeed == 0 then
            Frame.Position = Position
        else
            Services.TweenService:Create(Frame, TweenInfo.new(dragSpeed), {Position = Position}):Play()
        end
    end
    
    Frame.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if (input.UserInputState == Enum.UserInputState.End) then
                    dragToggle = false
                end
            end)
        end
    end)
    
    Frame.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            dragInput = input
        end
    end)
    
    Services.UserInputService.InputChanged:Connect(function(input)
        if (input == dragInput and dragToggle) then
            updateInput(input)
        end
    end)
end  

for Index, Command in pairs(Commands) do 
    local CMDFrame = CommandFrame:Clone()
    print(Index)
    CMDFrame:FindFirstChild("Name").Text = Command.Name
    CMDFrame.Usage.Text = "Usage: " .. Command.Help
    CMDFrame.Description.Text = "Description: " .. Command.Description
    CMDFrame.Aliases.Text = "Aliases: " .. table.concat(Command.Alias, ", ")
    CMDFrame.Name = Services.HttpService:GenerateGUID(false)
    CMDFrame.Parent = GUI.CommandList.Commands
    CommandList.Commands.CanvasSize = UDim2.new(0, 0, 0, #CommandList.Commands:GetChildren() * 91)
end

CommandList.Search.PlaceholderText = "Search commands ["..#Commands.."]"

GUI.Name = Services.HttpService:GenerateGUID(false)
Dragify(CommandList)
Dragify(OutputFrame)
OutputFrame.Visible = false
CommandList.Visible = false
GUI.Parent = Services.CoreGui


-- // Finish up \\ --
getgenv().stopAdmin = function()
    for _, Con in pairs(Connections) do
        pcall(Con.Disconnect, Con)
    end
    Refresh()
    table.clear(Connections)
    table.clear(Services)
    table.clear(Commands)
    table.clear(States)

    GUI:Destroy()
end

Refresh()

Output("Info", "Loaded")
Notify("Loaded", 2.1)
