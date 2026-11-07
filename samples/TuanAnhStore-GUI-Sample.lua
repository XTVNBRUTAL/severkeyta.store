-- TUAN ANH STORE · LUA STUDIO V36
-- Generated as a normal Roblox Studio LocalScript.
-- Place in StarterPlayerScripts or StarterGui. UI controls are visual-only by default.
-- This file does not include executor APIs, anti-cheat bypasses, or gameplay exploits.

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local GUI_NAME = "TuanAnhStore-GUI"
local ACCENT = Color3.fromRGB(255, 150, 200)
local SURFACE = Color3.fromRGB(15, 17, 23)
local LOGO_IMAGE = "rbxassetid://95196119848155"

local previous = playerGui:FindFirstChild(GUI_NAME)
if previous then previous:Destroy() end

local function make(className, props, parent)
    local object = Instance.new(className)
    for key, value in pairs(props or {}) do object[key] = value end
    object.Parent = parent
    return object
end

local function corner(parent, radius)
    make("UICorner", { CornerRadius = UDim.new(0, radius or 8) }, parent)
end

local gui = make("ScreenGui", { Name = GUI_NAME, ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling }, playerGui)
local miniRestore = make("ImageButton", { Name = "MiniRestore", Size = UDim2.fromOffset(55, 55), Position = UDim2.new(0, 30, 0.5, -27), BackgroundColor3 = SURFACE, BackgroundTransparency = 0.08, Image = LOGO_IMAGE, ScaleType = Enum.ScaleType.Crop, Visible = false, AutoButtonColor = true }, gui)
corner(miniRestore, 28)
make("UIStroke", { Color = ACCENT, Thickness = 2 }, miniRestore)
make("TextLabel", { Name = "MiniFallback", Size = UDim2.fromScale(1, 1), BackgroundTransparency = 1, Text = "TA", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.GothamBold, TextSize = 16, Visible = LOGO_IMAGE == "" }, miniRestore)
local window = make("Frame", { Name = "MainWindow", AnchorPoint = Vector2.new(0.5, 0.5), Position = UDim2.fromScale(0.5, 0.5), Size = UDim2.fromOffset(620, 420), BackgroundColor3 = SURFACE, BorderSizePixel = 0 }, gui)
miniRestore.MouseButton1Click:Connect(function() window.Visible = true; miniRestore.Visible = false end)
corner(window, 12)
make("UIStroke", { Color = ACCENT, Thickness = 1.5, Transparency = 0.12 }, window)
make("UISizeConstraint", { MinSize = Vector2.new(520, 320), MaxSize = Vector2.new(1100, 900) }, window)

local sidebar = make("Frame", { Name = "Sidebar", Size = UDim2.new(0, 175, 1, 0), BackgroundColor3 = Color3.fromRGB(math.max(0, 12), 17, 28), BorderSizePixel = 0 }, window)
corner(sidebar, 12)
local header = make("Frame", { Name = "Header", Size = UDim2.new(1, -185, 0, 48), Position = UDim2.new(0, 180, 0, 0), BackgroundTransparency = 1 }, window)
local logo
if LOGO_IMAGE ~= "" then
    logo = make("ImageLabel", { Name = "Logo", Size = UDim2.fromOffset(34, 34), Position = UDim2.fromOffset(12, 7), BackgroundTransparency = 1, Image = LOGO_IMAGE, ScaleType = Enum.ScaleType.Crop }, sidebar)
    corner(logo, 17)
else
    logo = make("TextLabel", { Name = "LogoFallback", Size = UDim2.fromOffset(34, 34), Position = UDim2.fromOffset(12, 7), BackgroundColor3 = ACCENT, Text = "TA", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.GothamBold, TextSize = 12 }, sidebar)
    corner(logo, 17)
end
local brandTitle = make("TextLabel", { Name = "BrandTitle", Size = UDim2.new(1, -70, 0, 20), Position = UDim2.fromOffset(52, 9), BackgroundTransparency = 1, Text = "TuanAnh", TextColor3 = Color3.fromRGB(255,255,255), Font = Enum.Font.GothamBold, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd }, sidebar)
local brandSubtitle = make("TextLabel", { Name = "BrandSubtitle", Size = UDim2.new(1, -70, 0, 14), Position = UDim2.fromOffset(52, 28), BackgroundTransparency = 1, Text = "VIP Hub", TextColor3 = Color3.fromRGB(145,150,168), Font = Enum.Font.GothamMedium, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd }, sidebar)
local version = make("TextLabel", { Name = "Version", Size = UDim2.fromOffset(34, 18), Position = UDim2.new(1, -42, 0, 14), BackgroundColor3 = ACCENT, Text = "V9", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.GothamBold, TextSize = 9 }, sidebar)
corner(version, 6)
local nav = make("Frame", { Name = "TabList", Size = UDim2.new(1, -16, 1, -125), Position = UDim2.fromOffset(8, 58), BackgroundTransparency = 1 }, sidebar)
make("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }, nav)
local profile = make("Frame", { Name = "ProfileCard", Size = UDim2.new(1, -16, 0, 48), Position = UDim2.new(0, 8, 1, -56), BackgroundColor3 = Color3.fromRGB(13, 19, 31), BorderSizePixel = 0 }, sidebar)
corner(profile, 8)
make("UIStroke", { Color = Color3.fromRGB(55, 48, 60), Transparency = 0.45 }, profile)
local avatarImage = make("ImageLabel", { Name = "ProfileAvatar", Size = UDim2.fromOffset(32, 32), Position = UDim2.fromOffset(8, 8), BackgroundColor3 = ACCENT, BackgroundTransparency = 0.08, Image = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(player.UserId) .. "&w=150&h=150", ScaleType = Enum.ScaleType.Crop }, profile)
corner(avatarImage, 16)
make("TextLabel", { Size = UDim2.new(1, -55, 0, 16), Position = UDim2.fromOffset(46, 8), BackgroundTransparency = 1, Text = "TuanAnh_hotwar", TextColor3 = Color3.fromRGB(240,240,250), Font = Enum.Font.GothamBold, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd }, profile)
make("TextLabel", { Size = UDim2.new(1, -55, 0, 14), Position = UDim2.fromOffset(46, 24), BackgroundTransparency = 1, Text = "Premium User", TextColor3 = ACCENT, Font = Enum.Font.GothamMedium, TextSize = 9, TextXAlignment = Enum.TextXAlignment.Left }, profile)

make("Frame", { Name = "WindowBar", Size = UDim2.new(1, 0, 0, 28), BackgroundColor3 = Color3.fromRGB(9, 10, 15), BackgroundTransparency = 0.18, BorderSizePixel = 0 }, header)
make("TextLabel", { Size = UDim2.new(1, -120, 1, 0), Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = "TUAN ANH STORE  /  GUI", TextColor3 = ACCENT, Font = Enum.Font.GothamBold, TextSize = 9, TextXAlignment = Enum.TextXAlignment.Left }, header)
local closeButton = make("TextButton", { Name = "Close", Size = UDim2.fromOffset(26, 22), Position = UDim2.new(1, -32, 0, 3), BackgroundColor3 = Color3.fromRGB(75, 35, 53), Text = "×", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.GothamBold, TextSize = 14, AutoButtonColor = true }, header)
corner(closeButton, 6)
local minimizeButton = make("TextButton", { Name = "Minimize", Size = UDim2.fromOffset(26, 22), Position = UDim2.new(1, -62, 0, 3), BackgroundColor3 = Color3.fromRGB(42, 43, 55), Text = "−", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.GothamBold, TextSize = 14, AutoButtonColor = true }, header)
corner(minimizeButton, 6)
minimizeButton.MouseButton1Click:Connect(function() window.Visible = false; miniRestore.Visible = true end)
closeButton.MouseButton1Click:Connect(function() gui:Destroy() end)
local content = make("Frame", { Name = "Content", Size = UDim2.new(1, -190, 1, -58), Position = UDim2.fromOffset(180, 52), BackgroundTransparency = 1 }, window)
local pageTitle = make("TextLabel", { Name = "PageTitle", Size = UDim2.new(1, -16, 0, 24), Position = UDim2.fromOffset(8, 5), BackgroundTransparency = 1, Text = "TỔNG QUAN", TextColor3 = Color3.fromRGB(250,245,250), Font = Enum.Font.GothamBold, TextSize = 14, TextXAlignment = Enum.TextXAlignment.Left }, content)
local pageSubtitle = make("TextLabel", { Name = "PageSubtitle", Size = UDim2.new(1, -16, 0, 18), Position = UDim2.fromOffset(8, 29), BackgroundTransparency = 1, Text = "Roblox Studio · Local GUI", TextColor3 = Color3.fromRGB(135,130,148), Font = Enum.Font.Gotham, TextSize = 9, TextXAlignment = Enum.TextXAlignment.Left }, content)
local controlArea = make("Frame", { Name = "Controls", Size = UDim2.new(1, -12, 1, -82), Position = UDim2.fromOffset(6, 53), BackgroundTransparency = 1, BorderSizePixel = 0, ClipsDescendants = true }, content)
local status = make("TextLabel", { Name = "Status", Size = UDim2.new(1, -12, 0, 18), Position = UDim2.new(0, 6, 1, -22), BackgroundTransparency = 1, Text = "Sẵn sàng · UI only", TextColor3 = Color3.fromRGB(140,145,158), Font = Enum.Font.Gotham, TextSize = 9, TextXAlignment = Enum.TextXAlignment.Left }, content)

local pages = {}
local activeSliderState = nil
local function updateSliderFromX(state, x)
    if not state or not state.track.Parent then return end
    local width = math.max(state.track.AbsoluteSize.X, 1)
    local fraction = math.clamp((x - state.track.AbsolutePosition.X) / width, 0, 1)
    local rawValue = state.min + fraction * (state.max - state.min)
    local value = state.min + math.floor(((rawValue - state.min) / state.step) + 0.5) * state.step
    value = math.clamp(value, state.min, state.max)
    local alpha = (value - state.min) / (state.max - state.min)
    state.fill.Size = UDim2.new(alpha, 0, 1, 0)
    state.knob.Position = UDim2.new(alpha, -6, 0.5, -6)
    state.valueLabel.Text = tostring(value)
    state.status.Text = state.label .. " · " .. tostring(value)
end
local function addControl(parent, item, index)
    local row = make("Frame", { Name = "Control_" .. tostring(index), Size = UDim2.new(1, -8, 0, 42), BackgroundColor3 = Color3.fromRGB(22, 23, 31), BorderSizePixel = 0, LayoutOrder = index }, parent)
    corner(row, 8)
    make("UIStroke", { Color = Color3.fromRGB(48, 42, 55), Transparency = 0.35 }, row)
    local labelWidth = item.kind == "slider" and -180 or -115
    make("TextLabel", { Size = UDim2.new(1, labelWidth, 1, 0), Position = UDim2.fromOffset(12, 0), BackgroundTransparency = 1, Text = item.label, TextColor3 = Color3.fromRGB(230,225,238), Font = Enum.Font.GothamMedium, TextSize = 10, TextXAlignment = Enum.TextXAlignment.Left, TextTruncate = Enum.TextTruncate.AtEnd }, row)
    if item.kind == "toggle" then
        local on = item.defaultEnabled == true
        local toggle = make("TextButton", { Size = UDim2.fromOffset(38, 20), Position = UDim2.new(1, -50, 0.5, -10), BackgroundColor3 = on and ACCENT or Color3.fromRGB(53, 54, 64), Text = on and "ON" or "OFF", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.GothamBold, TextSize = 8 }, row)
        corner(toggle, 10)
        toggle.MouseButton1Click:Connect(function() on = not on; toggle.BackgroundColor3 = on and ACCENT or Color3.fromRGB(53,54,64); toggle.Text = on and "ON" or "OFF"; status.Text = item.label .. (on and " · ON" or " · OFF") end)
    elseif item.kind == "slider" then
        local minValue = tonumber(item.min) or 0
        local maxValue = tonumber(item.max) or 100
        local stepValue = math.max(tonumber(item.step) or 1, 0.000001)
        local initialValue = math.clamp(tonumber(item.defaultValue) or minValue, minValue, maxValue)
        local initialAlpha = (initialValue - minValue) / (maxValue - minValue)
        local track = make("Frame", { Name = "SliderTrack", Active = true, Size = UDim2.fromOffset(104, 6), Position = UDim2.new(1, -151, 0.5, -3), BackgroundColor3 = Color3.fromRGB(58, 56, 69), BorderSizePixel = 0 }, row)
        corner(track, 4)
        local fill = make("Frame", { Name = "SliderFill", Size = UDim2.new(initialAlpha, 0, 1, 0), BackgroundColor3 = ACCENT, BorderSizePixel = 0 }, track)
        corner(fill, 4)
        local knob = make("Frame", { Name = "SliderKnob", Size = UDim2.fromOffset(12, 12), Position = UDim2.new(initialAlpha, -6, 0.5, -6), BackgroundColor3 = Color3.new(1,1,1), BorderSizePixel = 0 }, track)
        corner(knob, 6)
        make("UIStroke", { Color = ACCENT, Thickness = 1.2 }, knob)
        local valueLabel = make("TextLabel", { Size = UDim2.fromOffset(38, 24), Position = UDim2.new(1, -42, 0.5, -12), BackgroundTransparency = 1, Text = tostring(initialValue), TextColor3 = ACCENT, Font = Enum.Font.GothamBold, TextSize = 9, TextXAlignment = Enum.TextXAlignment.Right }, row)
        local state = { track = track, fill = fill, knob = knob, valueLabel = valueLabel, min = minValue, max = maxValue, step = stepValue, label = item.label, status = status }
        track.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then activeSliderState = state; updateSliderFromX(state, input.Position.X) end end)
    else
        local action = make("TextButton", { Size = UDim2.fromOffset(70, 24), Position = UDim2.new(1, -82, 0.5, -12), BackgroundColor3 = ACCENT, Text = "OPEN", TextColor3 = Color3.new(1,1,1), Font = Enum.Font.GothamBold, TextSize = 8 }, row)
        corner(action, 6)
        action.MouseButton1Click:Connect(function() status.Text = item.label .. " · UI action"; action.Text = "DONE"; task.delay(0.7, function() if action.Parent then action.Text = "OPEN" end end) end)
    end
end
local sliderMoveConnection = UserInputService.InputChanged:Connect(function(input)
    if activeSliderState and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then updateSliderFromX(activeSliderState, input.Position.X) end
end)
local sliderEndConnection = UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then activeSliderState = nil end
end)
gui.Destroying:Connect(function() activeSliderState = nil; sliderMoveConnection:Disconnect(); sliderEndConnection:Disconnect() end)

local tabDefinitions = {
    { id = "tab-overview", label = "TỔNG QUAN" },
    { id = "tab-visual", label = "HIỂN THỊ" },
    { id = "tab-tools", label = "TIỆN ÍCH" },
    { id = "tab-settings", label = "CÀI ĐẶT" },
}
local function showTab(tabId)
    for id, page in pairs(pages) do page.Visible = (id == tabId) end
    for _, button in ipairs(nav:GetChildren()) do
        if button:IsA("TextButton") then
            local selected = button:GetAttribute("TabId") == tabId
            button.BackgroundColor3 = selected and Color3.fromRGB(64, 39, 57) or Color3.fromRGB(22, 23, 31)
            button.TextColor3 = selected and Color3.new(1,1,1) or Color3.fromRGB(160,155,172)
        end
    end
    for _, tab in ipairs(tabDefinitions) do if tab.id == tabId then pageTitle.Text = tab.label end end
end

for index, tab in ipairs(tabDefinitions) do
    local button = make("TextButton", { Name = "Tab_" .. tostring(index), Size = UDim2.new(1, 0, 0, 34), BackgroundColor3 = Color3.fromRGB(22, 23, 31), Text = tab.label, TextColor3 = Color3.fromRGB(160,155,172), Font = Enum.Font.GothamBold, TextSize = 9, TextXAlignment = Enum.TextXAlignment.Left, AutoButtonColor = false, LayoutOrder = index }, nav)
    button:SetAttribute("TabId", tab.id)
    corner(button, 7)
    make("UIPadding", { PaddingLeft = UDim.new(0, 10) }, button)
    local page = make("ScrollingFrame", { Name = "Page_" .. tostring(index), Size = UDim2.new(1, 0, 1, 0), BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3, ScrollBarImageColor3 = ACCENT, CanvasSize = UDim2.new(), Visible = false }, controlArea)
    local pageLayout = make("UIListLayout", { Padding = UDim.new(0, 7), SortOrder = Enum.SortOrder.LayoutOrder }, page)
    pageLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() page.CanvasSize = UDim2.fromOffset(0, pageLayout.AbsoluteContentSize.Y + 12) end)
    pages[tab.id] = page
    button.MouseButton1Click:Connect(function() showTab(tab.id) end)
end

local actions = {
    { tabId = "tab-overview", label = "Hiển thị trạng thái", kind = "toggle", defaultEnabled = true, defaultValue = 50, min = 0, max = 100, step = 1 },
    { tabId = "tab-overview", label = "Làm mới giao diện", kind = "button", defaultEnabled = false, defaultValue = 50, min = 0, max = 100, step = 1 },
    { tabId = "tab-visual", label = "Độ sáng giao diện", kind = "slider", defaultEnabled = false, defaultValue = 75, min = 0, max = 100, step = 5 },
}
for index, item in ipairs(actions) do
    local page = pages[item.tabId]
    if page then addControl(page, item, index) end
end
if tabDefinitions[1] then showTab(tabDefinitions[1].id) end

-- Drag the window using its top bar.
local dragging = false
local dragStart, startPosition
header.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true; dragStart = input.Position; startPosition = window.Position
        input.Changed:Connect(function() if input.UserInputState == Enum.UserInputState.End then dragging = false end end)
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        window.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
    end
end)

print("[Tuấn Anh Store] GUI loaded:", GUI_NAME)
