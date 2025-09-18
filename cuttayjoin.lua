-- Job ID Manager UI Script - Compact Vertical Layout Design
-- UI gọn gàng với copy button trên và spam join dưới thẳng hàng
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

-- Main Frame compact - positioned at top center
MainFrame.Parent = ScreenGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0, -50)
MainFrame.Size = UDim2.new(0, 313, 0, 60)  -- Sát với button
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

-- Account Name Display
local AccountFrame = Instance.new("Frame")
local AccountCorner = Instance.new("UICorner")
local AccountStroke = Instance.new("UIStroke")

AccountFrame.Parent = MainFrame
AccountFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AccountFrame.BackgroundTransparency = 0.3
AccountFrame.BorderSizePixel = 0
AccountFrame.Position = UDim2.new(0, 8, 0, 6)
AccountFrame.Size = UDim2.new(0, 100, 0, 16)  -- Thu nhỏ

AccountCorner.CornerRadius = UDim.new(0, 6)
AccountCorner.Parent = AccountFrame

AccountStroke.Color = Color3.fromRGB(100, 200, 255)
AccountStroke.Thickness = 1
AccountStroke.Parent = AccountFrame

local AccountLabel = Instance.new("TextLabel")
AccountLabel.Parent = AccountFrame
AccountLabel.BackgroundTransparency = 1
AccountLabel.Size = UDim2.new(1, 0, 1, 0)
AccountLabel.Font = Enum.Font.GothamBold
AccountLabel.Text = "Account: " .. game.Players.LocalPlayer.Name
AccountLabel.TextColor3 = Color3.fromRGB(100, 200, 255)
AccountLabel.TextSize = 8
AccountLabel.TextXAlignment = Enum.TextXAlignment.Center

-- FPS Display
local FPSFrame = Instance.new("Frame")
local FPSCorner = Instance.new("UICorner")
local FPSStroke = Instance.new("UIStroke")

FPSFrame.Parent = MainFrame
FPSFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FPSFrame.BackgroundTransparency = 0.3
FPSFrame.BorderSizePixel = 0
FPSFrame.Position = UDim2.new(0, 115, 0, 6)
FPSFrame.Size = UDim2.new(0, 45, 0, 16)  -- Thu nhỏ

FPSCorner.CornerRadius = UDim.new(0, 6)
FPSCorner.Parent = FPSFrame

FPSStroke.Color = Color3.fromRGB(0, 255, 0)
FPSStroke.Thickness = 1
FPSStroke.Parent = FPSFrame

local FPSLabel = Instance.new("TextLabel")
FPSLabel.Parent = FPSFrame
FPSLabel.BackgroundTransparency = 1
FPSLabel.Size = UDim2.new(1, 0, 1, 0)
FPSLabel.Font = Enum.Font.GothamBold
FPSLabel.Text = "FPS 60"
FPSLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
FPSLabel.TextSize = 8

-- Player Count Display
local PlayerFrame = Instance.new("Frame")
local PlayerCorner = Instance.new("UICorner")
local PlayerStroke = Instance.new("UIStroke")

PlayerFrame.Parent = MainFrame
PlayerFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlayerFrame.BackgroundTransparency = 0.3
PlayerFrame.BorderSizePixel = 0
PlayerFrame.Position = UDim2.new(0, 167, 0, 6)
PlayerFrame.Size = UDim2.new(0, 60, 0, 16)  -- Thu nhỏ

PlayerCorner.CornerRadius = UDim.new(0, 6)
PlayerCorner.Parent = PlayerFrame

PlayerStroke.Color = Color3.fromRGB(255, 255, 0)
PlayerStroke.Thickness = 1
PlayerStroke.Parent = PlayerFrame

local PlayerLabel = Instance.new("TextLabel")
PlayerLabel.Parent = PlayerFrame
PlayerLabel.BackgroundTransparency = 1
PlayerLabel.Size = UDim2.new(1, 0, 1, 0)
PlayerLabel.Font = Enum.Font.GothamBold
PlayerLabel.Text = "Player 9/12"
PlayerLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
PlayerLabel.TextSize = 8

-- Job ID Input Frame
local InputFrame = Instance.new("Frame")
local InputCorner = Instance.new("UICorner")
local InputStroke = Instance.new("UIStroke")

InputFrame.Parent = MainFrame
InputFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
InputFrame.BorderSizePixel = 0
InputFrame.Position = UDim2.new(0, 8, 0, 26)
InputFrame.Size = UDim2.new(0, 219, 0, 18)  -- Thu nhỏ

InputCorner.CornerRadius = UDim.new(0, 8)
InputCorner.Parent = InputFrame

InputStroke.Color = Color3.fromRGB(80, 80, 120)
InputStroke.Thickness = 1
InputStroke.Parent = InputFrame

local JobIdInput = Instance.new("TextBox")
JobIdInput.Parent = InputFrame
JobIdInput.BackgroundTransparency = 1
JobIdInput.Position = UDim2.new(0, 6, 0, 0)
JobIdInput.Size = UDim2.new(1, -12, 1, 0)
JobIdInput.Font = Enum.Font.Gotham
JobIdInput.PlaceholderText = "Enter Job ID..."
JobIdInput.Text = ""
JobIdInput.TextColor3 = Color3.fromRGB(255, 255, 255)
JobIdInput.TextSize = 9
JobIdInput.TextXAlignment = Enum.TextXAlignment.Left

-- Copy Current Job ID Button (trên)
local CopyButton = Instance.new("TextButton")
local CopyCorner = Instance.new("UICorner")
local CopyStroke = Instance.new("UIStroke")

CopyButton.Parent = MainFrame
CopyButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
CopyButton.BorderSizePixel = 0
CopyButton.Position = UDim2.new(0, 235, 0, 6)  -- Vị trí trên
CopyButton.Size = UDim2.new(0, 70, 0, 16)  -- Thu nhỏ
CopyButton.Font = Enum.Font.GothamBold
CopyButton.Text = "COPY"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 9

CopyCorner.CornerRadius = UDim.new(0, 8)
CopyCorner.Parent = CopyButton

CopyStroke.Color = Color3.fromRGB(50, 150, 255)
CopyStroke.Thickness = 1
CopyStroke.Parent = CopyButton

-- Spam Join Toggle Button with red indicator (dưới)
local SpamJoinButton = Instance.new("TextButton")
local SpamJoinCorner = Instance.new("UICorner")
local SpamJoinStroke = Instance.new("UIStroke")

SpamJoinButton.Parent = MainFrame
SpamJoinButton.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
SpamJoinButton.BorderSizePixel = 0
SpamJoinButton.Position = UDim2.new(0, 235, 0, 26)  -- Vị trí dưới, thẳng hàng với copy
SpamJoinButton.Size = UDim2.new(0, 70, 0, 18)  -- Thu nhỏ
SpamJoinButton.Font = Enum.Font.GothamBold
SpamJoinButton.Text = "Spam Join"
SpamJoinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SpamJoinButton.TextSize = 8

SpamJoinCorner.CornerRadius = UDim.new(0, 8)
SpamJoinCorner.Parent = SpamJoinButton

SpamJoinStroke.Color = Color3.fromRGB(80, 80, 120)
SpamJoinStroke.Thickness = 1
SpamJoinStroke.Parent = SpamJoinButton

-- Red indicator circle for Spam Join
local RedIndicator = Instance.new("Frame")
local IndicatorCorner = Instance.new("UICorner")

RedIndicator.Parent = SpamJoinButton
RedIndicator.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
RedIndicator.BorderSizePixel = 0
RedIndicator.Position = UDim2.new(1, -10, 0, 3)
RedIndicator.Size = UDim2.new(0, 6, 0, 6)  -- Thu nhỏ

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
        
        -- Đổi màu FPS dựa trên performance
        if fps >= 50 then
            FPSStroke.Color = Color3.fromRGB(0, 255, 0)
            FPSLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        elseif fps >= 30 then
            FPSStroke.Color = Color3.fromRGB(255, 255, 0)
            FPSLabel.TextColor3 = Color3.fromRGB(255, 255, 0)
        else
            FPSStroke.Color = Color3.fromRGB(255, 0, 0)
            FPSLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
        
        fpsCount = 0
        lastTime = currentTime
    end
end

-- Hàm cập nhật player count
local function updatePlayerCount()
    local players = #game.Players:GetPlayers()
    local maxPlayers = game.Players.MaxPlayers
    PlayerLabel.Text = "Player " .. players .. "/" .. maxPlayers
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
    wait(0.5)
    
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
        wait(1)
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
        wait(2)
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
        UDim2.new(0, 313, 0, 60),
        Enum.EasingDirection.Out,
        Enum.EasingStyle.Back,
        0.5,
        true
    )
end)

print("Đã load xong script với auto load Job ID cải tiến!")
