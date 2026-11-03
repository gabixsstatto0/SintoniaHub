-- language: Lua, file: sintonia_key_unica_final.lua, target: Roblox (Delta Mobile)

-- ============ CARREGANDO FLUENT ============
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- ============ SERVIÇOS ============
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local LP = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

-- ============ BANCO DE DADOS DE KEYS ============
local ValidKeys = {
    -- 1 HORA
    ["KEY-RFT72C79ZTGN"] = 3600, ["KEY-4SI4SYG4ATC0"] = 3600, ["KEY-2MONBPLE8MGS"] = 3600,
    ["KEY-QQGABM42UB7P"] = 3600, ["KEY-JIHMLNONFC01"] = 3600, ["KEY-NBN784Q2OND2"] = 3600,
    ["KEY-AMDDBOWSEGAX"] = 3600, ["KEY-B0Y6IP2TUOS4"] = 3600, ["KEY-V0I90OF185UA"] = 3600,
    ["KEY-GDB3NYJ8ZWD0"] = 3600, ["KEY-GUCKV4LQ63EX"] = 3600, ["KEY-7E4M2WMAJOPA"] = 3600,
    ["KEY-24R21I97H791"] = 3600, ["KEY-FOCW5LHOUALK"] = 3600, ["KEY-2UWBSIQXMYRU"] = 3600,
    ["KEY-OR9IY7YI7B4X"] = 3600, ["KEY-N7YYFDBYJKVE"] = 3600, ["KEY-KLQYKQBRJT16"] = 3600,
    ["KEY-GD35UJIEC5O3"] = 3600, ["KEY-635PK9T1H8JJ"] = 3600, ["KEY-2HPH40ZORH0O"] = 3600,
    ["KEY-QWG5CN771LSC"] = 3600, ["KEY-KVEE47MEXKKF"] = 3600, ["KEY-NRBTD7VPBN6A"] = 3600,
    ["KEY-15Z9TQSZDLQE"] = 3600,
    
    -- 10 HORAS
    ["KEY-X125DP5ZVABD"] = 36000, ["KEY-LO8L4O9MAJKF"] = 36000, ["KEY-W2SRL0FUHAYV"] = 36000,
    ["KEY-40NM3ALSJAWU"] = 36000, ["KEY-DU72T1UMAWV8"] = 36000, ["KEY-U6ZCFWQLRA8V"] = 36000,
    ["KEY-8712IB7QF19L"] = 36000, ["KEY-9F9VVW855LFV"] = 36000, ["KEY-CTF4D74FZLI1"] = 36000,
    ["KEY-PA2K4Z84L52P"] = 36000, ["KEY-TVIEZ64CWCEN"] = 36000, ["KEY-2UV8Y3SRIKZR"] = 36000,
    ["KEY-VTKOS0GUM1CU"] = 36000, ["KEY-I6QUTYBK78V1"] = 36000, ["KEY-MNDYC05O7P42"] = 36000,
    ["KEY-7FH4Q5LFYIAR"] = 36000, ["KEY-HG26VUDPD1OL"] = 36000, ["KEY-OSIK6BFI7IN2"] = 36000,
    ["KEY-8MSFIQFXE45S"] = 36000, ["KEY-FVSM0SJ2NLO2"] = 36000, ["KEY-NA8A8TTDJ0D5"] = 36000,
    ["KEY-5002GYJRDF89"] = 36000, ["KEY-LDAK36L9LX2H"] = 36000, ["KEY-CJZZT4Z6Z52W"] = 36000,
    ["KEY-TUEWAJZV51WY"] = 36000,

    -- 24 HORAS
    ["KEY-8VN2PWTU32CP"] = 86400, ["KEY-6YPEPB8VXF6U"] = 86400, ["KEY-BOBEQR2RY6RY"] = 86400,
    ["KEY-CIYABXMJXG8G"] = 86400, ["KEY-LNZGZ4DDX7ZZ"] = 86400, ["KEY-50IJ27MB2TBZ"] = 86400,
    ["KEY-BYRPCVN1X10L"] = 86400, ["KEY-FW4OXCUEDOP0"] = 86400, ["KEY-5O9IBCRERQZ3"] = 86400,
    ["KEY-X2RHHEZIEFG0"] = 86400, ["KEY-20YDI1E9CV83"] = 86400, ["KEY-2K5TKW6VE21E"] = 86400,
    ["KEY-FN9JJROXAFB6"] = 86400, ["KEY-59L4F1T1YJI5"] = 86400, ["KEY-2P9VQJCKYQAN"] = 86400,
    ["KEY-S16XACSADGUH"] = 86400, ["KEY-BGMX8IKXHAAV"] = 86400, ["KEY-YK0FPL3TFGHJ"] = 86400,
    ["KEY-MP57MHDYQ8UJ"] = 86400, ["KEY-UBRJ4P7VEOXU"] = 86400, ["KEY-BL5LHCKHKVI1"] = 86400,
    ["KEY-4PW061CRF1XW"] = 86400, ["KEY-3ZUOQ6J7MD7D"] = 86400, ["KEY-S0RGAEMP7CRA"] = 86400,
    ["KEY-0H4BR6X4NX02"] = 86400,

    -- 3 DIAS
    ["KEY-9VXR7UO8LIUH"] = 259200, ["KEY-J4OZXVD0YEBB"] = 259200, ["KEY-LJEWVZVAGAW2"] = 259200,
    ["KEY-P0WDF12YIB6G"] = 259200, ["KEY-HNOBCQ5JQF7F"] = 259200, ["KEY-B0V9IXGMYAHI"] = 259200,
    ["KEY-HOSY4Y7JLTY9"] = 259200, ["KEY-KL4FTL7D185I"] = 259200, ["KEY-8R4DHEK9B0V5"] = 259200,
    ["KEY-QA2O16VYDOHL"] = 259200, ["KEY-MVPQ0NV6DRL1"] = 259200, ["KEY-GVSUVNPKCCOR"] = 259200,
    ["KEY-2BJ01MFVCLCL"] = 259200, ["KEY-IKRE172LLKPR"] = 259200, ["KEY-GYA05UFCDCNX"] = 259200,
    ["KEY-UPZAXM7LFBXW"] = 259200, ["KEY-ENIN72ZFDP6D"] = 259200, ["KEY-2L3UI9RN55D7"] = 259200,
    ["KEY-519GV923Z5CM"] = 259200, ["KEY-YHAWHRA81S88"] = 259200, ["KEY-WOIV9HT3J3TO"] = 259200,
    ["KEY-5E0R0460PME8"] = 259200, ["KEY-5TQLH2GIJCNT"] = 259200, ["KEY-4JJZYDUOZOQR"] = 259200,
    ["KEY-XSOSI3T8V3X2"] = 259200
}

-- ============ SISTEMA DE SALVAMENTO E KEY ÚNICA ============
local TIME_FILE = "SintoniaRP_Time.dat"
local USED_FILE = "SintoniaRP_Cache.dat" -- Histórico de keys gastas

local function isKeyUsed(key)
    if not isfile or not readfile then return false end
    if isfile(USED_FILE) then
        local success, content = pcall(readfile, USED_FILE)
        if success and content then
            for line in string.gmatch(content, "[^\r\n]+") do
                if line == key then return true end
            end
        end
    end
    return false
end

local function markKeyAsUsed(key)
    if not writefile then return end
    local currentContent = ""
    if isfile(USED_FILE) then
        pcall(function() currentContent = readfile(USED_FILE) end)
    end
    local newContent = currentContent .. key .. "\n"
    pcall(writefile, USED_FILE, newContent)
end

local function checkSavedTime()
    if not isfile or not readfile then return false end
    if isfile(TIME_FILE) then
        local success, content = pcall(readfile, TIME_FILE)
        if success and content and content ~= "" then
            local expiration = tonumber(content)
            if expiration and os.time() < expiration then
                return true
            end
        end
    end
    return false
end

local function saveKeyTime(durationSeconds)
    if not writefile then return end
    local expirationTime = os.time() + durationSeconds
    pcall(writefile, TIME_FILE, tostring(expirationTime))
end

-- ============ VARIÁVEIS PVP ============
local aimbotEnabled = false
local hideFov = false
local fovSize = 150
local smoothness = 0.35
local ignoreFriends = true

local espChamsEnabled = false
local espBoxEnabled = false
local espSkeletonEnabled = false
local espTracersEnabled = false

-- ============ VARIÁVEIS FARM ABÓBORA ============
local HOVER_HEIGHT = 2.5    
local FLY_SPEED = 2500   
local MIN_FLY_TIME = 0.20   
local SPAWN_DELAY = 1.0    
local PLAYER_RADIUS = 15     

local running = false
local pinTarget = nil
local pinActive = false
local aboborasProcessadas = {}
local spawnTimes = {}

-- ============ FOV (DRAWING API) ============
local fovCircle = Drawing.new("Circle")
fovCircle.Thickness = 1.5
fovCircle.NumSides = 60
fovCircle.Radius = fovSize
fovCircle.Filled = false
fovCircle.Color = Color3.fromRGB(255, 255, 255)
fovCircle.Transparency = 0.8
fovCircle.Visible = false

-- ============ SISTEMAS DE ESP ============
local ChamsFolder = nil
local activeChams = {}
local getHiddenParent = function() if gethui then local ok, hui = pcall(gethui); if ok and hui then return hui end end; return game:GetService("CoreGui") end

local function setupChams()
    if ChamsFolder then ChamsFolder:Destroy() end
    ChamsFolder = Instance.new("Folder"); ChamsFolder.Name = "RuntimeData"; ChamsFolder.Parent = getHiddenParent()
end

local function applyChams(player)
    if player == LP or not espChamsEnabled then return end
    local char = player.Character
    if not char then return end
    if activeChams[player] then activeChams[player]:Destroy() end
    local hl = Instance.new("Highlight")
    hl.Name = tostring(math.random(100000, 999999))
    hl.Adornee = char; hl.FillTransparency = 1; hl.OutlineColor = Color3.fromRGB(255, 255, 255)
    hl.OutlineTransparency = 0; hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop; hl.Parent = ChamsFolder
    activeChams[player] = hl
end

local function clearChams() for p, hl in pairs(activeChams) do if hl then hl:Destroy() end end; activeChams = {} end

local boxGui = Instance.new("ScreenGui"); boxGui.Name = "BoxESPGui"; boxGui.ResetOnSpawn = false; boxGui.IgnoreGuiInset = true; boxGui.Parent = LP:WaitForChild("PlayerGui")
local espObjects = {}

local function createBoxESP(player)
    if player == LP or espObjects[player] then return end
    local box = Instance.new("Frame"); box.BackgroundTransparency = 1; box.BorderSizePixel = 0; box.Visible = false; box.Parent = boxGui
    local boxStroke = Instance.new("UIStroke", box); boxStroke.Color = Color3.fromRGB(255, 255, 255); boxStroke.Thickness = 1.5
    local healthBg = Instance.new("Frame"); healthBg.BackgroundColor3 = Color3.fromRGB(0, 0, 0); healthBg.BorderSizePixel = 0; healthBg.Visible = false; healthBg.AnchorPoint = Vector2.new(1, 1); healthBg.Parent = boxGui
    local healthFill = Instance.new("Frame"); healthFill.BackgroundColor3 = Color3.fromRGB(0, 255, 0); healthFill.BorderSizePixel = 0; healthFill.AnchorPoint = Vector2.new(0, 1); healthFill.Position = UDim2.new(0, 0, 1, 0); healthFill.Size = UDim2.new(1, 0, 1, 0); healthFill.Parent = healthBg
    local nameLabel = Instance.new("TextLabel"); nameLabel.BackgroundTransparency = 1; nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255); nameLabel.Font = Enum.Font.GothamBold; nameLabel.TextSize = 12; nameLabel.TextStrokeTransparency = 0; nameLabel.Visible = false; nameLabel.Parent = boxGui
    espObjects[player] = { Box = box, HealthBg = healthBg, HealthFill = healthFill, Name = nameLabel }
end

local function clearBoxESP() for p, esp in pairs(espObjects) do esp.Box:Destroy(); esp.HealthBg:Destroy(); esp.Name:Destroy() end; espObjects = {} end

local skelGui = Instance.new("ScreenGui"); skelGui.Name = "SkeletonESP"; skelGui.ResetOnSpawn = false; skelGui.IgnoreGuiInset = true; skelGui.Parent = LP:WaitForChild("PlayerGui")
local skeletons = {}

local function createSkeleton(player)
    if player == LP or skeletons[player] then return end
    local function makeLine() local f = Instance.new("Frame"); f.BackgroundColor3 = Color3.fromRGB(255, 255, 255); f.BorderSizePixel = 0; f.AnchorPoint = Vector2.new(0.5, 0.5); f.Visible = false; f.Parent = skelGui; return f end
    skeletons[player] = { Spine = makeLine(), Shoulders = makeLine(), Hips = makeLine(), LeftArm = makeLine(), RightArm = makeLine(), LeftLeg = makeLine(), RightLeg = makeLine() }
end

local function clearSkeleton() for p, skel in pairs(skeletons) do for _, line in pairs(skel) do line:Destroy() end end; skeletons = {} end

local tracerGui = Instance.new("ScreenGui"); tracerGui.Name = "TracersGui"; tracerGui.ResetOnSpawn = false; tracerGui.IgnoreGuiInset = true; tracerGui.Parent = LP:WaitForChild("PlayerGui")
local tracers = {}

local function createTracer(player)
    if player == LP or tracers[player] then return end
    local frame = Instance.new("Frame"); frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255); frame.BorderSizePixel = 0; frame.AnchorPoint = Vector2.new(0.5, 0.5); frame.Visible = false; frame.Parent = tracerGui
    tracers[player] = frame
end

local function clearTracers() for p, frame in pairs(tracers) do frame:Destroy() end; tracers = {} end

local function managePlayer(player)
    if player == LP then return end
    applyChams(player)
    if espBoxEnabled then createBoxESP(player) end
    if espSkeletonEnabled then createSkeleton(player) end
    if espTracersEnabled then createTracer(player) end
    player.CharacterAdded:Connect(function() task.wait(0.5); applyChams(player) end)
end

for _, p in ipairs(Players:GetPlayers()) do managePlayer(p) end
Players.PlayerAdded:Connect(managePlayer)
Players.PlayerRemoving:Connect(function(player)
    if activeChams[player] then activeChams[player]:Destroy(); activeChams[player] = nil end
    if espObjects[player] then espObjects[player].Box:Destroy(); espObjects[player].HealthBg:Destroy(); espObjects[player].Name:Destroy(); espObjects[player] = nil end
    if skeletons[player] then for _, line in pairs(skeletons[player]) do line:Destroy() end; skeletons[player] = nil end
    if tracers[player] then tracers[player]:Destroy(); tracers[player] = nil end
end)

-- ============ FUNÇÕES DO FARM ABÓBORA ============
local function getChar()
    local c = LP.Character
    if not c then return nil end
    local hrp = c:FindFirstChild("HumanoidRootPart")
    local hum = c:FindFirstChildOfClass("Humanoid")
    if not hrp or not hum or hum.Health <= 0 then return nil end
    return hrp, hum
end

local function getAboboras()
    local list = {}
    if #aboborasProcessadas > 50 then aboborasProcessadas = {}; spawnTimes = {} end
    for _, d in pairs(Workspace:GetDescendants()) do
        if d:IsA("BasePart") or d:IsA("Model") then
            local name = d.Name:lower()
            if name:find("abobora") or name:find("abóbora") then
                local isProcessed = false
                for _, p in ipairs(aboborasProcessadas) do if p == d then isProcessed = true; break end end
                if not isProcessed then
                    local targetPart = d; local prompt = nil
                    if d:IsA("Model") then targetPart = d.PrimaryPart or d:FindFirstChildWhichIsA("BasePart"); prompt = d:FindFirstChildWhichIsA("ProximityPrompt", true)
                    elseif d:IsA("BasePart") then prompt = d:FindFirstChildWhichIsA("ProximityPrompt") end
                    if targetPart then table.insert(list, {obj = d, part = targetPart, prompt = prompt}) end
                end
            end
        end
    end
    return list
end

local function firePrompt(prompt)
    if not prompt then return end
    local fn = (getfenv and getfenv()["fireproximityprompt"]) or rawget(_G, "fireproximityprompt")
    if fn then local ok = pcall(fn, prompt); if ok then return end end
    pcall(function() prompt:InputHoldBegin(); task.wait(math.max(prompt.HoldDuration or 0.1, 0.05)); prompt:InputHoldEnd() end)
end

local function flyToAndLock(targetCF)
    local hrp, hum = getChar()
    if not hrp or not hum then return end
    pinActive = false; hum.Sit = true
    hrp.AssemblyLinearVelocity = Vector3.zero; hrp.AssemblyAngularVelocity = Vector3.zero
    task.wait(0.15) 
    local dist = (hrp.Position - targetCF.Position).Magnitude
    local duration = math.max(dist / FLY_SPEED, MIN_FLY_TIME)
    local tween = TweenService:Create(hrp, TweenInfo.new(duration, Enum.EasingStyle.Linear), {CFrame = targetCF})
    tween:Play(); tween.Completed:Wait()
    hrp.AssemblyLinearVelocity = Vector3.zero; hrp.AssemblyAngularVelocity = Vector3.zero
    hum.Sit = false; task.wait(0.05)
    pinTarget = targetCF; pinActive = true
end

RunService.Heartbeat:Connect(function()
    if not running or not pinActive or not pinTarget then return end
    local hrp = getChar()
    if hrp then hrp.CFrame = pinTarget; hrp.AssemblyLinearVelocity = Vector3.zero; hrp.AssemblyAngularVelocity = Vector3.zero end
end)

local function runFarmLoop()
    running = true
    local hrp, hum = getChar()
    if hrp then pinTarget = hrp.CFrame end
    pinActive = true

    while running do
        local hrp, hum = getChar()
        if not hrp then task.wait(0.5) else
            local list = getAboboras()
            if #list == 0 then
                if #aboborasProcessadas > 0 then aboborasProcessadas = {}; spawnTimes = {}; task.wait(1) else task.wait(0.5) end
            else
                table.sort(list, function(a, b) return (a.part.Position - hrp.Position).Magnitude < (b.part.Position - hrp.Position).Magnitude end)
                local target = list[1]
                if target and target.part.Parent then
                    if not spawnTimes[target.obj] then spawnTimes[target.obj] = tick() end
                    local elapsed = tick() - spawnTimes[target.obj]
                    if elapsed < SPAWN_DELAY then
                        Fluent:Notify({Title = "Farm", Content = "Esperando a abóbora cair (1s)...", Duration = 1})
                        task.wait(SPAWN_DELAY - elapsed)
                    end
                    if not target.part.Parent then table.insert(aboborasProcessadas, target.obj); continue end
                    local jx = (math.random() - 0.5) * 1.0; local jz = (math.random() - 0.5) * 1.0
                    local targetCF = CFrame.new(target.part.Position + Vector3.new(jx, HOVER_HEIGHT, jz))
                    flyToAndLock(targetCF)
                    local playerNear = false
                    for _, p in ipairs(Players:GetPlayers()) do
                        if p ~= LP and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                            if (p.Character.HumanoidRootPart.Position - target.part.Position).Magnitude < PLAYER_RADIUS then playerNear = true; break end
                        end
                    end
                    if playerNear then
                        local disabledTime = 0
                        while running do
                            if not target.obj.Parent or not target.part.Parent then break end
                            if target.prompt and target.prompt.Enabled then firePrompt(target.prompt); disabledTime = 0 else disabledTime = disabledTime + 0.1 end
                            if disabledTime >= 2.0 then break end
                            task.wait(0.1)
                        end
                    else
                        while running do
                            if not target.obj.Parent or not target.part.Parent then break end
                            if target.prompt and target.prompt.Enabled then firePrompt(target.prompt) end
                            task.wait(0.1)
                        end
                    end
                    table.insert(aboborasProcessadas, target.obj)
                end
            end
        end
        task.wait(0.05)
    end
    pinActive = false
    local _, hum = getChar(); if hum then hum.Sit = false end
end

-- ============ LOOP PRINCIPAL ============
RunService.RenderStepped:Connect(function()
    local viewport = Camera.ViewportSize
    local centerScreen = Vector2.new(viewport.X / 2, viewport.Y / 2)
    
    if aimbotEnabled and not hideFov then
        fovCircle.Visible = true
        fovCircle.Position = centerScreen
        fovCircle.Radius = fovSize
    else
        fovCircle.Visible = false
    end

    if aimbotEnabled then
        local closestTarget = nil
        local shortestDist = fovSize
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= LP and player.Character then
                local isFriend = false
                if ignoreFriends then pcall(function() isFriend = LP:IsFriendsWith(player.UserId) end) end
                if not isFriend then
                    local head = player.Character:FindFirstChild("Head")
                    local hum = player.Character:FindFirstChildOfClass("Humanoid")
                    if head and hum and hum.Health > 0 then
                        local screenPos, onScreen = Camera:WorldToViewportPoint(head.Position)
                        if onScreen and screenPos.Z > 0 then
                            local dist = (Vector2.new(screenPos.X, screenPos.Y) - centerScreen).Magnitude
                            if dist < shortestDist then shortestDist = dist; closestTarget = head end
                        end
                    end
                end
            end
        end
        if closestTarget then
            local targetCFrame = CFrame.new(Camera.CFrame.Position, closestTarget.Position)
            Camera.CFrame = Camera.CFrame:Lerp(targetCFrame, tonumber(smoothness) or 0.35)
        end
    end

    if espBoxEnabled then
        for player, esp in pairs(espObjects) do
            local char = player.Character
            if char then
                local head = char:FindFirstChild("Head"); local hrp = char:FindFirstChild("HumanoidRootPart")
                local hum = char:FindFirstChildOfClass("Humanoid"); local leftLeg = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftFoot") or char:FindFirstChild("LeftUpperLeg")
                if head and hrp and hum and leftLeg and hum.Health > 0 then
                    local headPos, onScreen = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
                    local legPos = Camera:WorldToViewportPoint(leftLeg.Position - Vector3.new(0, 0.5, 0))
                    if onScreen and headPos.Z > 0 then
                        local height = math.abs(legPos.Y - headPos.Y) + 20; local width = (height * 0.6) + 30 
                        local boxX = headPos.X - (width / 2); local boxY = headPos.Y - 10
                        esp.Box.Position = UDim2.new(0, boxX, 0, boxY); esp.Box.Size = UDim2.new(0, width, 0, height); esp.Box.Visible = true
                        local healthPercent = hum.Health / hum.MaxHealth
                        esp.HealthBg.Position = UDim2.new(0, boxX - 5, 0, boxY + height); esp.HealthBg.Size = UDim2.new(0, 3, 0, height); esp.HealthBg.Visible = true
                        esp.HealthFill.Size = UDim2.new(1, 0, healthPercent, 0)
                        if healthPercent > 0.75 then esp.HealthFill.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                        elseif healthPercent > 0.5 then esp.HealthFill.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
                        elseif healthPercent > 0.25 then esp.HealthFill.BackgroundColor3 = Color3.fromRGB(255, 128, 0)
                        else esp.HealthFill.BackgroundColor3 = Color3.fromRGB(255, 0, 0) end
                        esp.Name.Position = UDim2.new(0, boxX + (width/2) - 50, 0, boxY - 20); esp.Name.Size = UDim2.new(0, 100, 0, 15); esp.Name.Text = player.Name; esp.Name.Visible = true
                    else esp.Box.Visible = false; esp.HealthBg.Visible = false; esp.Name.Visible = false end
                else esp.Box.Visible = false; esp.HealthBg.Visible = false; esp.Name.Visible = false end
            end
        end
    end

    if espSkeletonEnabled then
        local function updateLine(line, p1_3D, p2_3D)
            local s1, on1 = Camera:WorldToViewportPoint(p1_3D); local s2, on2 = Camera:WorldToViewportPoint(p2_3D)
            if on1 and on2 and s1.Z > 0 and s2.Z > 0 then
                local v1, v2 = Vector2.new(s1.X, s1.Y), Vector2.new(s2.X, s2.Y)
                local center = (v1 + v2) / 2; local distance = (v2 - v1).Magnitude
                local angle = math.deg(math.atan2(v2.Y - v1.Y, v2.X - v1.X))
                line.Position = UDim2.new(0, center.X, 0, center.Y); line.Size = UDim2.new(0, distance + 2, 0, math.clamp(distance * 0.015, 1, 2.5)); line.Rotation = angle; line.Visible = true
            else line.Visible = false end
        end
        for player, skel in pairs(skeletons) do
            local char = player.Character
            if char then
                local head, torso = char:FindFirstChild("Head"), char:FindFirstChild("Torso")
                local lArm, rArm = char:FindFirstChild("Left Arm"), char:FindFirstChild("Right Arm")
                local lLeg, rLeg = char:FindFirstChild("Left Leg"), char:FindFirstChild("Right Leg")
                local hum = char:FindFirstChildOfClass("Humanoid")
                if head and torso and lArm and rArm and lLeg and rLeg and hum and hum.Health > 0 then
                    local tS = head.Position + Vector3.new(0, -0.5, 0); local bS = torso.Position + Vector3.new(0, -1.2, 0)
                    local lSh = (torso.CFrame * CFrame.new(-1, 0.5, 0)).Position; local rSh = (torso.CFrame * CFrame.new(1, 0.5, 0)).Position
                    local lH = (torso.CFrame * CFrame.new(-0.5, -1, 0)).Position; local rH = (torso.CFrame * CFrame.new(0.5, -1, 0)).Position
                    local lHa = (lArm.CFrame * CFrame.new(0, -1, 0)).Position; local rHa = (rArm.CFrame * CFrame.new(0, -1, 0)).Position
                    local lF = (lLeg.CFrame * CFrame.new(0, -1.0, 0)).Position; local rF = (rLeg.CFrame * CFrame.new(0, -1.0, 0)).Position
                    updateLine(skel.Spine, tS, bS); updateLine(skel.Shoulders, lSh, rSh); updateLine(skel.Hips, lH, rH)
                    updateLine(skel.LeftArm, lSh, lHa); updateLine(skel.RightArm, rSh, rHa)
                    updateLine(skel.LeftLeg, lH, lF); updateLine(skel.RightLeg, rH, rF)
                else for _, line in pairs(skel) do line.Visible = false end end
            end
        end
    end

    if espTracersEnabled then
        local origin = Vector2.new(viewport.X / 2, viewport.Y)
        for player, frame in pairs(tracers) do
            local char = player.Character
            if char then
                local torso = char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso")
                local hum = char:FindFirstChildOfClass("Humanoid")
                if torso and hum and hum.Health > 0 then
                    local screenPos, onScreen = Camera:WorldToViewportPoint(torso.Position)
                    if onScreen and screenPos.Z > 0 then
                        local targetPos = Vector2.new(screenPos.X, screenPos.Y); local center = (origin + targetPos) / 2
                        local distance = (targetPos - origin).Magnitude; local angle = math.deg(math.atan2(targetPos.Y - origin.Y, targetPos.X - origin.X))
                        frame.Position = UDim2.new(0, center.X, 0, center.Y); frame.Size = UDim2.new(0, distance, 0, 1.5); frame.Rotation = angle; frame.Visible = true
                    else frame.Visible = false end
                else frame.Visible = false end
            end
        end
    end
end)

-- ============ FUNÇÃO DA FLUENT UI ============
local function LoadMainUI(isPremium)
    local Window = Fluent:CreateWindow({
        Title = "Sintonia RP", SubTitle = "Cinder Hub", TabWidth = 160,
        Size = UDim2.fromOffset(500, 350), Acrylic = false, Theme = "Dark", MinimizeKey = Enum.KeyCode.LeftControl
    })

    local Tabs = {
        PvP = Window:AddTab({ Title = "Área PvP", Icon = "crosshair" }),
        Evento = Window:AddTab({ Title = "Farm Evento", Icon = "gift" }),
        Config = Window:AddTab({ Title = "Configurações", Icon = "settings" })
    }

    Tabs.PvP:AddParagraph({ Title = "Aimbot", Content = "Configurações de mira e FOV" })
    Tabs.PvP:AddToggle("ToggleAimbot", { Title = "Ativar Aimbot", Default = false, Callback = function(Value)
        aimbotEnabled = Value
        if not aimbotEnabled then hideFov = false end
    end })
    Tabs.PvP:AddToggle("ToggleHideFov", { Title = "Esconder FOV", Default = false, Callback = function(Value) hideFov = Value end })
    Tabs.PvP:AddSlider("SliderFov", { Title = "Tamanho do FOV", Default = 150, Min = 50, Max = 500, Rounding = 1, Callback = function(Value) fovSize = tonumber(Value) or 150 end })
    Tabs.PvP:AddSlider("SliderSmooth", { Title = "Velocidade do Grude", Default = 0.35, Min = 0.05, Max = 1, Rounding = 2, Callback = function(Value) smoothness = tonumber(Value) or 0.35 end })
    Tabs.PvP:AddToggle("ToggleAmigos", { Title = "Não grudar em amizades", Default = true, Callback = function(Value) ignoreFriends = Value end })

    Tabs.PvP:AddParagraph({ Title = "ESP (Visual)", Content = "Liga e desliga os módulos visuais" })
    Tabs.PvP:AddToggle("ToggleChams", { Title = "ESP Chams", Default = false, Callback = function(Value)
        espChamsEnabled = Value
        if espChamsEnabled then setupChams(); for _, p in ipairs(Players:GetPlayers()) do applyChams(p) end else clearChams() end
    end })
    Tabs.PvP:AddToggle("ToggleBox", { Title = "ESP Boxes / Vida / Nome", Default = false, Callback = function(Value)
        espBoxEnabled = Value
        if espBoxEnabled then for _, p in ipairs(Players:GetPlayers()) do createBoxESP(p) end else clearBoxESP() end
    end })
    Tabs.PvP:AddToggle("ToggleSkeleton", { Title = "ESP Skeleton", Default = false, Callback = function(Value)
        espSkeletonEnabled = Value
        if espSkeletonEnabled then for _, p in ipairs(Players:GetPlayers()) do createSkeleton(p) end else clearSkeleton() end
    end })
    Tabs.PvP:AddToggle("ToggleTracers", { Title = "ESP Linhas", Default = false, Callback = function(Value)
        espTracersEnabled = Value
        if espTracersEnabled then for _, p in ipairs(Players:GetPlayers()) do createTracer(p) end else clearTracers() end
    end })

    if isPremium then
        Tabs.Evento:AddParagraph({ Title = "Farm de Abóboras", Content = "Use para coletar as abóboras do evento." })
        Tabs.Evento:AddButton({ Title = "Iniciar Farm", Callback = function()
            if running then Fluent:Notify({Title = "Aviso", Content = "O farm já está rodando!", Duration = 3}); return end
            Fluent:Notify({Title = "Farm", Content = "Farm iniciado!", Duration = 3}); task.spawn(runFarmLoop)
        end })
        Tabs.Evento:AddButton({ Title = "Parar Farm", Callback = function()
            if not running then Fluent:Notify({Title = "Aviso", Content = "O farm já está parado.", Duration = 3}); return end
            running = false; pinActive = false; local _, hum = getChar(); if hum then hum.Sit = false end
            Fluent:Notify({Title = "Farm", Content = "Farm parado.", Duration = 3})
        end })
    else
        Tabs.Evento:AddParagraph({ Title = "Módulo Bloqueado", Content = "Você entrou com a Entrada Grátis. Insira a Key correta para liberar o Farm de Abóboras." })
    end

    Window:SelectTab(1)
end

-- ============ FUNÇÃO DO KEY SYSTEM UI ============
local function OpenKeySystem()
    local keyGui = Instance.new("ScreenGui")
    keyGui.Name = "CinderKeySystem"
    keyGui.ResetOnSpawn = false
    keyGui.IgnoreGuiInset = true
    keyGui.Parent = LP:WaitForChild("PlayerGui")

    local mainFrame = Instance.new("Frame")
    mainFrame.Size = UDim2.new(0, 320, 0, 240)
    mainFrame.Position = UDim2.new(0.5, -160, 0.5, -120)
    mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 20)
    mainFrame.BorderSizePixel = 0
    mainFrame.Parent = keyGui
    Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 10)
    local stroke = Instance.new("UIStroke", mainFrame)
    stroke.Color = Color3.fromRGB(200, 60, 40)
    stroke.Thickness = 2

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 50)
    title.BackgroundTransparency = 1
    title.Text = "Sintonia RP - Key System"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.Font = Enum.Font.GothamBold
    title.TextSize = 18
    title.Parent = mainFrame

    local textBox = Instance.new("TextBox")
    textBox.Size = UDim2.new(1, -40, 0, 35)
    textBox.Position = UDim2.new(0, 20, 0, 60)
    textBox.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
    textBox.Text = ""
    textBox.PlaceholderText = "Digite sua key..."
    textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textBox.Font = Enum.Font.Gotham
    textBox.TextSize = 14
    textBox.Parent = mainFrame
    Instance.new("UICorner", textBox).CornerRadius = UDim.new(0, 6)
    local pad = Instance.new("UIPadding", textBox)
    pad.PaddingLeft = UDim.new(0, 10)

    local enterBtn = Instance.new("TextButton")
    enterBtn.Size = UDim2.new(1, -40, 0, 35)
    enterBtn.Position = UDim2.new(0, 20, 0, 110)
    enterBtn.BackgroundColor3 = Color3.fromRGB(50, 120, 200)
    enterBtn.Text = "Entrar com Key"
    enterBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    enterBtn.Font = Enum.Font.GothamBold
    enterBtn.TextSize = 14
    enterBtn.Parent = mainFrame
    Instance.new("UICorner", enterBtn).CornerRadius = UDim.new(0, 6)

    local freeBtn = Instance.new("TextButton")
    freeBtn.Size = UDim2.new(1, -40, 0, 35)
    freeBtn.Position = UDim2.new(0, 20, 0, 160)
    freeBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 70)
    freeBtn.Text = "Entrada Grátis (Limitada)"
    freeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    freeBtn.Font = Enum.Font.GothamBold
    freeBtn.TextSize = 14
    freeBtn.Parent = mainFrame
    Instance.new("UICorner", freeBtn).CornerRadius = UDim.new(0, 6)

    local statusText = Instance.new("TextLabel")
    statusText.Size = UDim2.new(1, -40, 0, 20)
    statusText.Position = UDim2.new(0, 20, 0, 205)
    statusText.BackgroundTransparency = 1
    statusText.Text = ""
    statusText.TextColor3 = Color3.fromRGB(255, 50, 50)
    statusText.Font = Enum.Font.Gotham
    statusText.TextSize = 12
    statusText.Parent = mainFrame

    enterBtn.MouseButton1Click:Connect(function()
        local key = string.upper(textBox.Text)
        
        if ValidKeys[key] then
            if isKeyUsed(key) then
                statusText.Text = "Esta key já foi utilizada!"
                statusText.TextColor3 = Color3.fromRGB(255, 50, 50)
            else
                statusText.Text = "Key válida! Carregando..."
                statusText.TextColor3 = Color3.fromRGB(50, 255, 50)
                
                markKeyAsUsed(key) -- Bloqueia a key no histórico
                saveKeyTime(ValidKeys[key]) -- Salva o tempo de expiração
                
                task.wait(1)
                keyGui:Destroy()
                LoadMainUI(true)
            end
        else
            statusText.Text = "Key incorreta."
            statusText.TextColor3 = Color3.fromRGB(255, 50, 50)
        end
    end)

    freeBtn.MouseButton1Click:Connect(function()
        statusText.Text = "Entrando Grátis..."
        statusText.TextColor3 = Color3.fromRGB(255, 255, 50)
        task.wait(1)
        keyGui:Destroy()
        LoadMainUI(false)
    end)
end

-- ============ INICIALIZAÇÃO ============
if checkSavedTime() then
    LoadMainUI(true)
else
    OpenKeySystem()
end
