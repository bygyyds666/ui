local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))() 
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))() 
-- 增强的白名单系统
local WhitelistEnabled = true -- 是否启用白名单系统
local Whitelist = {            
    "91789478",
    "hsjsjszbnsjwjz",
    "dchdhhfhxb",
    "gouchaoxi2",     --添加白名单的账号
    "Chinese1522",
    "samcZSZ"
}

-- 检查当前用户是否在白名单中
local function IsUserWhitelisted()
    if not WhitelistEnabled then
        return true -- 如果未启用白名单，则允许所有用户
    end
    
    local playerName = game.Players.LocalPlayer.Name
    for _, name in ipairs(Whitelist) do
        if name == playerName then
            return true
        end
    end
    return false
end

-- 如果用户不在白名单中，显示通知并停止脚本
if not IsUserWhitelisted() then
    Notification:Notify( 
        {Title = "您没有添加白名单", Description = "请添加此qq购买白名单，白名单10块钱3967418825"}, 
        {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 999, Type = "image"}, 
        {Image = "http://www.roblox.com/asset/?id=4483345998", ImageColor = Color3.fromRGB(255, 84, 84)} 
    )
    return -- 停止脚本执行
end

-- 用户在白名单中，继续加载脚本
local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")

local bai = {
    waterwalk = false,
    awaysday = false,
    awaysdnight = false,
    nofog = false
}

-- 发送通知的函数
function SendNotification(Title, Text, Duration)
    game.StarterGui:SetCore("SendNotification", {
        Title = Title;
        Text = Text;
        Icon = nil;
        Duration = Duration
    })
end
local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "搬运脚本",
    Text = "正在加载（反挂机已开启）",
    Duration = 6, 
})



print("反挂机开启")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)

local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
  LastIteration = tick()
  for Index = #FrameUpdateTable, 1, -1 do
FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
  end
  FrameUpdateTable[1] = LastIteration
  local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
CurrentFPS = CurrentFPS - CurrentFPS % 1
  FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)

local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bygyyds666/ui/refs/heads/main/%E7%99%BD%E5%90%8D%E5%8D%95%E6%BA%90%E7%A0%81.lua"))()
local Window = OrionLib:MakeWindow({Name = "搬运脚本", HidePremium = false, SaveConfig = true,IntroText = "感谢您的购买", ConfigFolder = "欢迎使用搬运脚本"})
local player = Window:MakeTab({
	Name = "脚本",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})

player:AddButton({ 
	Name = "伐木大亨",
	Callback = function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/bygyyds666/ui/refs/heads/main/%E4%BC%90%E6%9C%A8.lua"))() 
  	end
})

player:AddButton({ 
	Name = "木材大亨",
	Callback = function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/bygyyds666/ui/refs/heads/main/%E6%9C%A8%E6%9D%90%E8%84%9A%E6%9C%AC%EF%BC%88%E5%8A%A0%E5%AF%86%E8%BF%87%E7%9A%84%EF%BC%89.lua"))() 
  	end
})
