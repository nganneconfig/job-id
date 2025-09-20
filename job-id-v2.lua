-- Job ID Manager UI Script - Enhanced Status Display Clarity
-- Improved visibility for Account Name, FPS, and Player Count displays
-- Enhanced: Auto load Job ID from clipboard when clicking Spam Join with loading delay

-- Console print thông tin tài khoản
print("===============================================")
print("STK : 1045249239")
print("NGÂN HÀNG : vietcombank")
print("CTK : Ta Minh Hoang")
print("===============================================")

-- Tạo ScreenGui và Frame chính
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local UIGradient = Instance.new("UIGradient")

-- Properties cho ScreenGui
ScreenGui.Parent = game.CoreGui
ScreenGui.DisplayOrder = 999999999
ScreenGui.ResetOnSpawn = false

-- Main Frame compact - positioned at top center (increased height for better clarity)
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0, -50)
MainFrame.Size = UDim2.new(0, 350, 0, 65)  -- Increased width and height for better spacing
MainFrame.Active = true
MainFrame.Draggable = true

-- Bo góc cho main frame
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- Viền gradient
UIStroke.Color = Color3.fromRGB(100, 100, 255)
UIStroke.Thickness = 2
UIStroke.Parent = MainFrame

-- Gradient background
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(25, 25, 30)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(35, 35, 45))
}
UIGradient.Rotation = 90
UIGradient.Parent = MainFrame

-- Account Name Display (Enhanced for better clarity)
local AccountFrame = Instance.new("Frame")
local AccountCorner = Instance.new("UICorner")
local AccountStroke = Instance.new("UIStroke")
local AccountGradient = Instance.new("UIGradient")

AccountFrame.Parent = MainFrame
AccountFrame.BackgroundColor3 = Color3.fromRGB(15, 25, 40)
AccountFrame.BackgroundTransparency = 0.1  -- Less transparent for better visibility
AccountFrame.BorderSizePixel = 0
AccountFrame.Position = UDim2.new(0, 8, 0, 6)
AccountFrame.Size = UDim2.new(0, 110, 0, 20)  -- Increased size for better readability

AccountCorner.CornerRadius = UDim.new(0, 8)
AccountCorner.Parent = AccountFrame

AccountStroke.Color = Color3.fromRGB(100, 200, 255)
AccountStroke.Thickness = 1.5  -- Slightly thicker border
AccountStroke.Parent = AccountFrame

-- Gradient for Account frame
AccountGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 25, 40)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 35, 50))
}
AccountGradient.Rotation = 45
AccountGradient.Parent = AccountFrame

local AccountLabel = Instance.new("TextLabel")
AccountLabel.Parent = AccountFrame
AccountLabel.BackgroundTransparency = 1
AccountLabel.Size = UDim2.new(1, 0, 1, 0)
AccountLabel.Font = Enum.Font.GothamBold
AccountLabel.Text = "Account: " .. game.Players.LocalPlayer.Name
AccountLabel.TextColor3 = Color3.fromRGB(150, 220, 255)  -- Brighter color
AccountLabel.TextSize = 10  -- Increased text size
AccountLabel.TextXAlignment = Enum.TextXAlignment.Center
AccountLabel.TextStrokeTransparency = 0.5  -- Text outline for better visibility
AccountLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

-- FPS Display (Enhanced for better clarity)
local FPSFrame = Instance.new("Frame")
local FPSCorner = Instance.new("UICorner")
local FPSStroke = Instance.new("UIStroke")
local FPSGradient = Instance.new("UIGradient")

FPSFrame.Parent = MainFrame
FPSFrame.BackgroundColor3 = Color3.fromRGB(15, 40, 15)
FPSFrame.BackgroundTransparency = 0.1  -- Less transparent for better visibility
FPSFrame.BorderSizePixel = 0
FPSFrame.Position = UDim2.new(0, 125, 0, 6)
FPSFrame.Size = UDim2.new(0, 55, 0, 20)  -- Increased size for better readability

FPSCorner.CornerRadius = UDim.new(0, 8)
FPSCorner.Parent = FPSFrame

FPSStroke.Color = Color3.fromRGB(0, 255, 100)
FPSStroke.Thickness = 1.5  -- Slightly thicker border
FPSStroke.Parent = FPSFrame

-- Gradient for FPS frame
FPSGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(15, 40, 15)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(25, 50, 25))
}
FPSGradient.Rotation = 45
FPSGradient.Parent = FPSFrame

local FPSLabel = Instance.new("TextLabel")
FPSLabel.Parent = FPSFrame
FPSLabel.BackgroundTransparency = 1
FPSLabel.Size = UDim2.new(1, 0, 1, 0)
FPSLabel.Font = Enum.Font.GothamBold
FPSLabel.Text = "FPS 60"
FPSLabel.TextColor3 = Color3.fromRGB(100, 255, 150)  -- Brighter color
FPSLabel.TextSize = 10  -- Increased text size
FPSLabel.TextStrokeTransparency = 0.5  -- Text outline for better visibility
FPSLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

-- Player Count Display (Enhanced for better clarity)
local PlayerFrame = Instance.new("Frame")
local PlayerCorner = Instance.new("UICorner")
local PlayerStroke = Instance.new("UIStroke")
local PlayerGradient = Instance.new("UIGradient")

PlayerFrame.Parent = MainFrame
PlayerFrame.BackgroundColor3 = Color3.fromRGB(40, 30, 15)
PlayerFrame.BackgroundTransparency = 0.1  -- Less transparent for better visibility
PlayerFrame.BorderSizePixel = 0
PlayerFrame.Position = UDim2.new(0, 187, 0, 6)
PlayerFrame.Size = UDim2.new(0, 75, 0, 20)  -- Increased size for better readability

PlayerCorner.CornerRadius = UDim.new(0, 8)
PlayerCorner.Parent = PlayerFrame

PlayerStroke.Color = Color3.fromRGB(255, 200, 100)
PlayerStroke.Thickness = 1.5  -- Slightly thicker border
PlayerStroke.Parent = PlayerFrame

-- Gradient for Player frame
PlayerGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0.00, Color3.fromRGB(40, 30, 15)),
    ColorSequenceKeypoint.new(1.00, Color3.fromRGB(50, 40, 25))
}
PlayerGradient.Rotation = 45
PlayerGradient.Parent = PlayerFrame

local PlayerLabel = Instance.new("TextLabel")
PlayerLabel.Parent = PlayerFrame
PlayerLabel.BackgroundTransparency = 1
PlayerLabel.Size = UDim2.new(1, 0, 1, 0)
PlayerLabel.Font = Enum.Font.GothamBold
PlayerLabel.Text = "Player 9/12"
PlayerLabel.TextColor3 = Color3.fromRGB(255, 220, 150)  -- Brighter color
PlayerLabel.TextSize = 10  -- Increased text size
PlayerLabel.TextStrokeTransparency = 0.5  -- Text outline for better visibility
PlayerLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)

-- Job ID Input Frame (Adjusted position)
local InputFrame = Instance.new("Frame")
local InputCorner = Instance.new("UICorner")
local InputStroke = Instance.new("UIStroke")

InputFrame.Parent = MainFrame
InputFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
InputFrame.BorderSizePixel = 0
InputFrame.Position = UDim2.new(0, 8, 0, 30)  -- Adjusted for new layout
InputFrame.Size = UDim2.new(0, 254, 0, 20)  -- Adjusted size

InputCorner.CornerRadius = UDim.new(0, 8)
InputCorner.Parent = InputFrame

InputStroke.Color = Color3.fromRGB(80, 80, 120)
InputStroke.Thickness = 1
InputStroke.Parent = InputFrame

local JobIdInput = Instance.new("TextBox")
JobIdInput.Parent = InputFrame
JobIdInput.BackgroundTransparency = 1
JobIdInput.Position = UDim2.new(0, 8, 0, 0)
JobIdInput.Size = UDim2.new(1, -16, 1, 0)
JobIdInput.Font = Enum.Font.Gotham
JobIdInput.PlaceholderText = "Enter Job ID..."
JobIdInput.Text = ""
JobIdInput.TextColor3 = Color3.fromRGB(255, 255, 255)
JobIdInput.TextSize = 10
JobIdInput.TextXAlignment = Enum.TextXAlignment.Left

-- Copy Current Job ID Button (Adjusted position)
local CopyButton = Instance.new("TextButton")
local CopyCorner = Instance.new("UICorner")
local CopyStroke = Instance.new("UIStroke")

CopyButton.Parent = MainFrame
CopyButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
CopyButton.BorderSizePixel = 0
CopyButton.Position = UDim2.new(0, 270, 0, 6)  -- Adjusted position
CopyButton.Size = UDim2.new(0, 72, 0, 20)  -- Adjusted size
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "COPY"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 10

CopyCorner.CornerRadius = UDim.new(0, 8)
CopyCorner.Parent = CopyButton

CopyStroke.Color = Color3.fromRGB(50, 150, 255)
CopyStroke.Thickness = 1
CopyStroke.Parent = CopyButton

-- Spam Join Toggle Button with red indicator (Adjusted position)
local SpamJoinButton = Instance.new("TextButton")
local SpamJoinCorner = Instance.new("UICorner")
local SpamJoinStroke = Instance.new("UIStroke")

SpamJoinButton.Parent = MainFrame
SpamJoinButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
SpamJoinButton.BorderSizePixel = 0
SpamJoinButton.Position = UDim2.new(0, 270, 0, 30)  -- Adjusted position
SpamJoinButton.Size = UDim2.new(0, 72, 0, 20)  -- Adjusted size
SpamJoinButton.Font = Enum.Font.GothamBold
SpamJoinButton.Text = "Spam Join"
SpamJoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpamJoinButton.TextSize = 9

SpamJoinCorner.CornerRadius = UDim.new(0, 8)
SpamJoinCorner.Parent = SpamJoinButton

SpamJoinStroke.Color = Color3.fromRGB(80, 80, 120)
SpamJoinStroke.Thickness = 1
SpamJoinStroke.Parent = SpamJoinButton

-- Red indicator circle for Spam Join (Enhanced visibility)
local RedIndicator = Instance.new("Frame")
local IndicatorCorner = Instance.new("UICorner")

RedIndicator.Parent = SpamJoinButton
RedIndicator.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
RedIndicator.BorderSizePixel = 0
RedIndicator.Position = UDim2.new(1, -12, 0, 4)
RedIndicator.Size = UDim2.new(0, 8, 0, 8)  -- Slightly larger indicator

IndicatorCorner.CornerRadius = UDim.new(1, 0)
IndicatorCorner.Parent = RedIndicator

-- Biến global
_G.Job = ""
_G.SpamJoin = false
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local TweenService = game:GetService("TweenService")
local isLoadingJobId = false

-- FPS Counter
local fpsCount = 0
local lastTime = tick()

local function updateFPS()
    fpsCount = fpsCount + 1
    local currentTime = tick()
    
    if currentTime - lastTime >= 1 then
        local fps = math.floor(fpsCount / (currentTime - lastTime))
        FPSLabel.Text = "FPS " .. fps
        
        -- Enhanced color coding for FPS with better visibility
        if fps >= 50 then
            FPSStroke.Color = Color3.fromRGB(0, 255, 100)
            FPSLabel.TextColor3 = Color3.fromRGB(100, 255, 150)
            FPSFrame.BackgroundColor3 = Color3.fromRGB(15, 40, 15)
        elseif fps >= 30 then
            FPSStroke.Color = Color3.fromRGB(255, 200, 0)
            FPSLabel.TextColor3 = Color3.fromRGB(255, 220, 100)
            FPSFrame.BackgroundColor3 = Color3.fromRGB(40, 35, 15)
        else
            FPSStroke.Color = Color3.fromRGB(255, 50, 50)
            FPSLabel.TextColor3 = Color3.fromRGB(255, 150, 150)
            FPSFrame.BackgroundColor3 = Color3.fromRGB(40, 15, 15)
        end
        
        fpsCount = 0
        lastTime = currentTime
    end
end

-- Hàm cập nhật player count với enhanced visibility
local function updatePlayerCount()
    local players = #game.Players:GetPlayers()
    local maxPlayers = game.Players.MaxPlayers
    PlayerLabel.Text = "Player " .. players .. "/" .. maxPlayers
    
    -- Enhanced color coding for player count
    local ratio = players / maxPlayers
    if ratio >= 0.8 then  -- Server almost full
        PlayerStroke.Color = Color3.fromRGB(255, 100, 100)
        PlayerLabel.TextColor3 = Color3.fromRGB(255, 150, 150)
        PlayerFrame.BackgroundColor3 = Color3.fromRGB(40, 20, 15)
    elseif ratio >= 0.5 then  -- Server half full
        PlayerStroke.Color = Color3.fromRGB(255, 200, 100)
        PlayerLabel.TextColor3 = Color3.fromRGB(255, 220, 150)
        PlayerFrame.BackgroundColor3 = Color3.fromRGB(40, 30, 15)
    else  -- Server has space
        PlayerStroke.Color = Color3.fromRGB(100, 255, 150)
        PlayerLabel.TextColor3 = Color3.fromRGB(150, 255, 200)
        PlayerFrame.BackgroundColor3 = Color3.fromRGB(15, 40, 20)
    end
end

-- Hàm copy Job ID hiện tại (đã sửa lỗi)
local function copyCurrentJobId()
    local currentJobId = tostring(game.JobId)
    
    -- Kiểm tra và sử dụng clipboard
    if setclipboard then
        setclipboard(currentJobId)
        CopyButton.Text = "COPIED"
        CopyButton.BackgroundColor3 = Color3.fromRGB(50, 255, 100)
        CopyStroke.Color = Color3.fromRGB(50, 255, 100)
        
        -- Sử dụng spawn để không block UI
        spawn(function()
            wait(1.5)
            CopyButton.Text = "COPY"
            CopyButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
            CopyStroke.Color = Color3.fromRGB(50, 150, 255)
        end)
    else
        CopyButton.Text = "ERROR"
        CopyButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        CopyStroke.Color = Color3.fromRGB(255, 50, 50)
        
        -- Sử dụng spawn để không block UI
        spawn(function()
            wait(1)
            CopyButton.Text = "COPY"
            CopyButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
            CopyStroke.Color = Color3.fromRGB(50, 150, 255)
        end)
    end
end

-- Hàm load Job ID từ clipboard với loading animation
local function loadJobIdFromClipboard()
    if isLoadingJobId then return false end
    isLoadingJobId = true
    
    -- Hiển thị loading state
    local originalText = SpamJoinButton.Text
    SpamJoinButton.Text = "Loading..."
    SpamJoinButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
    SpamJoinStroke.Color = Color3.fromRGB(255, 165, 0)
    RedIndicator.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
    
    -- Loading animation với dots
    spawn(function()
        local dots = ""
        local dotCount = 0
        while isLoadingJobId do
            dotCount = (dotCount + 1) % 4
            dots = string.rep(".", dotCount)
            SpamJoinButton.Text = "Loading" .. dots
            wait(0.2)
        end
    end)
    
    -- Đợi 0.5 giây như yêu cầu
    wait(1)
    
    local success = false
    
    if getclipboard then
        local clipboardSuccess, clipboardContent = pcall(getclipboard)
        if clipboardSuccess and clipboardContent and clipboardContent ~= "" then
            -- Tự động xoá các dấu : ```job id```
            local cleanedJobId = clipboardContent
            cleanedJobId = string.gsub(cleanedJobId, "```", "")  -- Xoá ```
            cleanedJobId = string.gsub(cleanedJobId, "job id", "")  -- Xoá "job id"
            cleanedJobId = string.gsub(cleanedJobId, "Job ID", "")  -- Xoá "Job ID"
            cleanedJobId = string.gsub(cleanedJobId, "JobID", "")  -- Xoá "JobID"
            cleanedJobId = string.gsub(cleanedJobId, ":", "")  -- Xoá dấu :
            cleanedJobId = string.gsub(cleanedJobId, "%s+", "")  -- Xoá tất cả khoảng trắng
            cleanedJobId = string.gsub(cleanedJobId, "\n", "")  -- Xoá xuống dòng
            cleanedJobId = string.gsub(cleanedJobId, "\r", "")  -- Xoá carriage return
            cleanedJobId = string.gsub(cleanedJobId, "\t", "")  -- Xoá tab
            
            -- Kiểm tra xem nội dung sau khi clean có phải là Job ID hợp lệ không
            if string.len(cleanedJobId) > 10 and string.match(cleanedJobId, "^[%w%-]+$") then
                JobIdInput.Text = cleanedJobId
                _G.Job = cleanedJobId
                
                -- Visual feedback khi load thành công
                InputStroke.Color = Color3.fromRGB(50, 255, 100)
                
                -- Hiển thị thành công
                SpamJoinButton.Text = "Loaded!"
                SpamJoinButton.BackgroundColor3 = Color3.fromRGB(50, 255, 100)
                SpamJoinStroke.Color = Color3.fromRGB(50, 255, 100)
                RedIndicator.BackgroundColor3 = Color3.fromRGB(50, 255, 100)
                
                success = true
            end
        end
    end
    
    if not success then
        -- Nếu không load được, hiển thị lỗi
        SpamJoinButton.Text = "No Job ID"
        SpamJoinButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        SpamJoinStroke.Color = Color3.fromRGB(255, 50, 50)
        RedIndicator.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        
        InputStroke.Color = Color3.fromRGB(255, 50, 50)
        spawn(function()
            wait(0.5)
            InputStroke.Color = Color3.fromRGB(80, 80, 120)
        end)
    end
    
    -- Reset loading state
    isLoadingJobId = false
    
    -- Đợi một chút rồi reset text nếu cần
    spawn(function()
        wait(2)
        if not _G.SpamJoin then
            SpamJoinButton.Text = originalText
            SpamJoinButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
            SpamJoinStroke.Color = Color3.fromRGB(80, 80, 120)
            RedIndicator.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        end
    end)
    
    return success
end

-- Hàm join server với Job ID
local function joinJobId(jobId)
    if jobId and jobId ~= "" then
        local success, error = pcall(function()
            TeleportService:TeleportToPlaceInstance(game.PlaceId, jobId, game.Players.LocalPlayer)
        end)
        
        if not success then
            -- Flash red on error
            InputStroke.Color = Color3.fromRGB(255, 50, 50)
            spawn(function()
                wait(0.5)
                InputStroke.Color = Color3.fromRGB(80, 80, 120)
            end)
        end
    end
end

-- Hàm toggle spam join với auto load clipboard và loading delay
local function toggleSpamJoin()
    if isLoadingJobId then return end
    
    if not _G.SpamJoin then
        -- Khi bật spam join, tự động load Job ID từ clipboard với delay
        spawn(function()
            local loadedFromClipboard = loadJobIdFromClipboard()
            
            -- Chỉ bật spam join nếu có Job ID (từ clipboard hoặc input field)
            if loadedFromClipboard or (JobIdInput.Text and JobIdInput.Text ~= "") then
                -- Đảm bảo _G.Job được set
                if JobIdInput.Text and JobIdInput.Text ~= "" then
                    _G.Job = JobIdInput.Text
                end
                
                _G.SpamJoin = true
                
                SpamJoinButton.Text = "Spam Join"
                SpamJoinButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
                SpamJoinStroke.Color = Color3.fromRGB(50, 255, 100)
                RedIndicator.BackgroundColor3 = Color3.fromRGB(50, 255, 100)
                
                -- Glow effect khi bật
                UIStroke.Color = Color3.fromRGB(50, 255, 100)
            end
        end)
    else
        -- Tắt spam join
        _G.SpamJoin = false
        
        SpamJoinButton.Text = "Spam Join"
        SpamJoinButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
        SpamJoinStroke.Color = Color3.fromRGB(80, 80, 120)
        RedIndicator.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
        
        -- Trở về màu bình thường
        UIStroke.Color = Color3.fromRGB(100, 100, 255)
    end
end

-- Kết nối events
CopyButton.MouseButton1Click:Connect(copyCurrentJobId)
SpamJoinButton.MouseButton1Click:Connect(toggleSpamJoin)

JobIdInput:GetPropertyChangedSignal("Text"):Connect(function()
    _G.Job = JobIdInput.Text
    
    -- Visual feedback khi nhập Job ID
    if JobIdInput.Text ~= "" then
        InputStroke.Color = Color3.fromRGB(50, 255, 100)
    else
        InputStroke.Color = Color3.fromRGB(80, 80, 120)
    end
end)

-- Hover effects
local function addHoverEffect(button, originalColor, hoverColor)
    button.MouseEnter:Connect(function()
        if not isLoadingJobId then
            button.BackgroundColor3 = hoverColor
        end
    end)
    
    button.MouseLeave:Connect(function()
        if not isLoadingJobId then
            if button == SpamJoinButton and _G.SpamJoin then
                button.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
            else
                button.BackgroundColor3 = originalColor
            end
        end
    end)
end

-- Thêm hover effects
addHoverEffect(CopyButton, Color3.fromRGB(50, 150, 255), Color3.fromRGB(70, 170, 255))
addHoverEffect(SpamJoinButton, Color3.fromRGB(40, 40, 50), Color3.fromRGB(60, 60, 70))

-- Main update loop
RunService.Heartbeat:Connect(function()
    updateFPS()
end)

-- Player count update loop
spawn(function()
    while ScreenGui.Parent do
        updatePlayerCount()
        wait(0.5)
    end
end)

-- Spam join loop
spawn(function()
    while ScreenGui.Parent do
        if _G.SpamJoin and _G.Job and _G.Job ~= "" then
            joinJobId(_G.Job)
            wait(0.2) -- Đợi 0.2 giây trước khi thử lại
        end
        wait(0.1)
    end
end)

-- Khởi tạo
updatePlayerCount()
JobIdInput.Text = tostring(game.JobId)

-- Animation khi khởi động
spawn(function()
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame:TweenSize(
        UDim2.new(0, 350, 0, 65),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.5,
        true
    )
end)

print("Đã load xong script với enhanced status display visibility!")
