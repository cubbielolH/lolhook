
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "GroupRequiredUI_Mirror"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Основной фрейм
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 340, 0, 230)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 12)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(40, 40, 45)
mainStroke.Thickness = 1
mainStroke.Parent = mainFrame

-- Верхняя панель
local topBar = Instance.new("Frame")
topBar.Name = "TopBar"
topBar.Size = UDim2.new(1, 0, 0, 40)
topBar.BackgroundTransparency = 1
topBar.Parent = mainFrame

-- Кнопка закрытия (крестик) — СЛЕВА
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 28, 0, 28)
closeButton.Position = UDim2.new(0, 10, 0, 6)
closeButton.BackgroundColor3 = Color3.fromRGB(35, 35, 38)
closeButton.BorderSizePixel = 0
closeButton.Text = "✕"
closeButton.TextColor3 = Color3.fromRGB(160, 160, 165)
closeButton.TextSize = 16
closeButton.Font = Enum.Font.Gotham
closeButton.AutoButtonColor = true
closeButton.Parent = topBar

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Текст "Group Required" — слева после крестика
local groupReqText = Instance.new("TextLabel")
groupReqText.Name = "GroupReqText"
groupReqText.Size = UDim2.new(0, 150, 1, 0)
groupReqText.Position = UDim2.new(0, 48, 0, 0)
groupReqText.BackgroundTransparency = 1
groupReqText.Text = "Group Required"
groupReqText.TextColor3 = Color3.fromRGB(140, 140, 145)
groupReqText.TextSize = 15
groupReqText.Font = Enum.Font.Gotham
groupReqText.TextXAlignment = Enum.TextXAlignment.Left
groupReqText.Parent = topBar

-- Текст "lolhook" — правее
local titleText = Instance.new("TextLabel")
titleText.Name = "TitleText"
titleText.Size = UDim2.new(0, 100, 1, 0)
titleText.Position = UDim2.new(0, 160, 0, 0)
titleText.BackgroundTransparency = 1
titleText.Text = "lolhook"
titleText.TextColor3 = Color3.fromRGB(255, 255, 255)
titleText.TextSize = 18
titleText.Font = Enum.Font.GothamBold
titleText.TextXAlignment = Enum.TextXAlignment.Left
titleText.Parent = topBar

-- Иконка ключа — СПРАВА
local keyIcon = Instance.new("ImageLabel")
keyIcon.Name = "KeyIcon"
keyIcon.Size = UDim2.new(0, 22, 0, 22)
keyIcon.Position = UDim2.new(1, -34, 0, 9)
keyIcon.BackgroundTransparency = 1
keyIcon.Image = "rbxassetid://10709791767"
keyIcon.ImageColor3 = Color3.fromRGB(138, 43, 226)
keyIcon.Parent = topBar

-- Карточка
local card = Instance.new("Frame")
card.Name = "Card"
card.Size = UDim2.new(1, -24, 0, 100)
card.Position = UDim2.new(0, 12, 0, 50)
card.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
card.BorderSizePixel = 0
card.Parent = mainFrame

local cardCorner = Instance.new("UICorner")
cardCorner.CornerRadius = UDim.new(0, 10)
cardCorner.Parent = card

local cardStroke = Instance.new("UIStroke")
cardStroke.Color = Color3.fromRGB(45, 45, 50)
cardStroke.Thickness = 1
cardStroke.Parent = card

-- Иконка ключа в карточке — СПРАВА
local cardKeyIcon = Instance.new("ImageLabel")
cardKeyIcon.Name = "CardKeyIcon"
cardKeyIcon.Size = UDim2.new(0, 26, 0, 26)
cardKeyIcon.Position = UDim2.new(1, -40, 0, 14)
cardKeyIcon.BackgroundTransparency = 1
cardKeyIcon.Image = "rbxassetid://10709791767"
cardKeyIcon.ImageColor3 = Color3.fromRGB(138, 43, 226)
cardKeyIcon.Parent = card

-- Заголовок карточки — выравнивание вправо
local cardTitle = Instance.new("TextLabel")
cardTitle.Name = "CardTitle"
cardTitle.Size = UDim2.new(1, -60, 0, 30)
cardTitle.Position = UDim2.new(0, 14, 0, 14)
cardTitle.BackgroundTransparency = 1
cardTitle.Text = "Join our Roblox group"
cardTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
cardTitle.TextSize = 18
cardTitle.Font = Enum.Font.GothamBold
cardTitle.TextXAlignment = Enum.TextXAlignment.Right
cardTitle.Parent = card

-- Подзаголовок карточки — выравнивание вправо
local cardSubtitle = Instance.new("TextLabel")
cardSubtitle.Name = "CardSubtitle"
cardSubtitle.Size = UDim2.new(1, -30, 0, 40)
cardSubtitle.Position = UDim2.new(0, 14, 0, 48)
cardSubtitle.BackgroundTransparency = 1
cardSubtitle.Text = "To use this script, you must join"
cardSubtitle.TextColor3 = Color3.fromRGB(140, 140, 145)
cardSubtitle.TextSize = 14
cardSubtitle.Font = Enum.Font.Gotham
cardSubtitle.TextXAlignment = Enum.TextXAlignment.Right
cardSubtitle.TextWrapped = true
cardSubtitle.Parent = card

-- Кнопка "Copy Group Link"
local copyButton = Instance.new("TextButton")
copyButton.Name = "CopyButton"
copyButton.Size = UDim2.new(1, -24, 0, 44)
copyButton.Position = UDim2.new(0, 12, 0, 162)
copyButton.BackgroundColor3 = Color3.fromRGB(25, 25, 28)
copyButton.BorderSizePixel = 0
copyButton.Text = ""
copyButton.AutoButtonColor = true
copyButton.Parent = mainFrame

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 10)
copyCorner.Parent = copyButton

local copyStroke = Instance.new("UIStroke")
copyStroke.Color = Color3.fromRGB(45, 45, 50)
copyStroke.Thickness = 1
copyStroke.Parent = copyButton

-- Текст кнопки — слева
local copyText = Instance.new("TextLabel")
copyText.Name = "CopyText"
copyText.Size = UDim2.new(0, 200, 1, 0)
copyText.Position = UDim2.new(0, 45, 0, 0)
copyText.BackgroundTransparency = 1
copyText.Text = "Copy Group Link"
copyText.TextColor3 = Color3.fromRGB(255, 255, 255)
copyText.TextSize = 15
copyText.Font = Enum.Font.GothamBold
copyText.TextXAlignment = Enum.TextXAlignment.Left
copyText.Parent = copyButton

-- Иконка копирования — СПРАВА
local copyIcon = Instance.new("ImageLabel")
copyIcon.Name = "CopyIcon"
copyIcon.Size = UDim2.new(0, 20, 0, 20)
copyIcon.Position = UDim2.new(1, -32, 0.5, -10)
copyIcon.BackgroundTransparency = 1
copyIcon.Image = "rbxassetid://10709792276"
copyIcon.ImageColor3 = Color3.fromRGB(138, 43, 226)
copyIcon.Parent = copyButton

-- Логика копирования
local GROUP_LINK = "https://roblox.com.bz/communities/2010104495/"

copyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(GROUP_LINK)
        copyText.Text = "Copied!"
        task.wait(1.5)
        copyText.Text = "Copy Group Link"
    else
        copyText.Text = "Link: " .. GROUP_LINK
        task.wait(3)
        copyText.Text = "Copy Group Link"
    end
end)
