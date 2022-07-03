local BobAutofarm = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
local Start = Instance.new("TextButton")
local End = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Title = Instance.new("TextLabel")

--Properties:

BobAutofarm.Name = "BobAutofarm"
BobAutofarm.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BobAutofarm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
BobAutofarm.ResetOnSpawn = false

UI.Name = "UI"
UI.Parent = BobAutofarm
UI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
UI.Position = UDim2.new(0.00918032788, 0, 0.701847732, 0)
UI.Size = UDim2.new(0, 370, 0, 213)
UI.Style = Enum.FrameStyle.RobloxRound

Credits.Name = "Credits"
Credits.Parent = UI
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Position = UDim2.new(0.216216207, 0, 0.243833378, 0)
Credits.Size = UDim2.new(0, 200, 0, 33)
Credits.Font = Enum.Font.RobotoMono
Credits.Text = "By WendCosifu#0213"
Credits.TextColor3 = Color3.fromRGB(70, 211, 211)
Credits.TextSize = 20.000

Start.Name = "Start"
Start.Parent = UI
Start.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Start.Position = UDim2.new(0.00824568421, 0, 0.525318861, 0)
Start.Size = UDim2.new(0, 137, 0, 70)
Start.Style = Enum.ButtonStyle.RobloxRoundButton
Start.Font = Enum.Font.Sarpanch
Start.Text = "Start"
Start.TextColor3 = Color3.fromRGB(0, 0, 0)
Start.TextSize = 60.000
Start.TextWrapped = true

End.Name = "End"
End.Parent = UI
End.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
End.Position = UDim2.new(0.602840245, 0, 0.523061097, 0)
End.Size = UDim2.new(0, 137, 0, 70)
End.Style = Enum.ButtonStyle.RobloxRoundButton
End.Font = Enum.Font.Sarpanch
End.Text = "End"
End.TextColor3 = Color3.fromRGB(0, 0, 0)
End.TextSize = 60.000
End.TextWrapped = true

Exit.Name = "Exit"
Exit.Parent = UI
Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Exit.BackgroundTransparency = 1.000
Exit.Position = UDim2.new(0.916466951, 0, -0.00163928978, 0)
Exit.Size = UDim2.new(0, 34, 0, 32)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.fromRGB(170, 0, 0)
Exit.TextScaled = true
Exit.TextSize = 14.000
Exit.TextWrapped = true

Title.Name = "Title"
Title.Parent = UI
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.00540540554, 0, -0.0011600107, 0)
Title.Size = UDim2.new(0, 350, 0, 50)
Title.Font = Enum.Font.RobotoMono
Title.Text = "Bob autofarm"
Title.TextColor3 = Color3.fromRGB(170, 0, 0)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

-- Scripts:
--Credits: WendCosifu#0213 and my friend

local function KEFTA_fake_script() -- Start.StartScript 
	local script = Instance.new('LocalScript', Start)

	local a = 0
	local function Start()
		_G.farm = true
		while _G.farm == true do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-368, 328, 4, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			wait (0.3)
			game:GetService("ReplicatedStorage").Duplicate:FireServer()
			wait (0.3)
			a += 1
			print('Attempt '..a)
			local args = {
				[1] = game:GetService("Players").LocalPlayer.Character,
				[2] = false
			}
	
			game:GetService("ReplicatedStorage").HumanoidDied:FireServer(unpack(args))
			wait (4)
		end
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		Start()
	end)
end
coroutine.wrap(KEFTA_fake_script)()
local function XGTWZ_fake_script() -- End.EndScript 
	local script = Instance.new('LocalScript', End)

	local function End()
		_G.farm = false
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		End()
	end)
	
end
coroutine.wrap(XGTWZ_fake_script)()
local function JOMPQH_fake_script() -- Exit.ExitScript 
	local script = Instance.new('LocalScript', Exit)

	local ui = script.Parent.Parent
	
	script.Parent.MouseButton1Click:Connect(function()
		ui:Destroy()
	end)
end
coroutine.wrap(JOMPQH_fake_script)()
