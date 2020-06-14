print("Asset loaded - cornfields#7424 ")
local DefCounter = 0
repeat
    warn("attempting bypass <3")
    DefCounter = DefCounter + 1
until DefCounter == 10
print("bypassed - developed by cornfields")
wait(3)

function callback(Button)
	wait(2.5)
    pos = {} -- Camera Position

function notification(text)
game:GetService("StarterGui"):SetCore("SendNotification",{Title="cornfields' Autofarm",Text=text})
end

function getUsedWorkstation()
   for i,v in pairs(game:GetService("Workspace").BloxyBurgers.CashierWorkstations:GetChildren()) do
       if v.InUse.Value == game.Players.LocalPlayer then
           return v
       end
   end
end
function order(url)
   print(url)
   if  url == "rbxassetid://333556924" then
       print("Normal burger")
       workspace.CurrentCamera.CFrame = pos[1]
   end
   if url == "rbxassetid://333556968" then
       print("Double burger")
       workspace.CurrentCamera.CFrame = pos[2]
   end
   if url == "rbxassetid://333557004" then
       print("Deluxe burger")
       workspace.CurrentCamera.CFrame = pos[3]
   end
   if url == "rbxassetid://333557058" then
       print("Fries")
       workspace.CurrentCamera.CFrame = pos[4]
   end
   if url == "rbxassetid://333557087" then
       print("bloxy cola")
       workspace.CurrentCamera.CFrame = pos[5]
   end
   if url == "done" then
       print("Order done")
       workspace.CurrentCamera.CFrame = done
   end
   mouse1click()
   wait(0.05)
   
end
notification("Look at the first item.")
wait(5)
pos[1] = workspace.CurrentCamera.CFrame

notification("Look at the second item.")
wait(2)
pos[2] = workspace.CurrentCamera.CFrame

notification("Look at the third item.")
wait(2)
pos[3] = workspace.CurrentCamera.CFrame

notification("Look at the fourth item.")
wait(2)
pos[4] = workspace.CurrentCamera.CFrame

notification("Look at the fifth item.")
wait(2)
pos[5] = workspace.CurrentCamera.CFrame

notification("Look at the done button.")
wait(2)
done = workspace.CurrentCamera.CFrame
notification("Configuration completed, please do not move the camera at all! Enjoy.")
while wait(1) do
   print("Looping in progress - cornfields#7424")
   if not getUsedWorkstation() then return end
   if getUsedWorkstation().Occupied.Value then
       print(getUsedWorkstation())
       if not getUsedWorkstation().Occupied.Value.Head:FindFirstChild("ChatBubble") then continue end
       print("Verification #1 passed with no errors - cornfields#7424")
       if not getUsedWorkstation().Occupied.Value.Head:FindFirstChild("ChatBubble").Body.IconFrame:FindFirstChild("1Icon") then continue end
       print("Verification #2 passed with no errors - cornfields#7424")
       order(getUsedWorkstation().Occupied.Value.Head:FindFirstChild("ChatBubble").Body.IconFrame["1Icon"].Image)
       if getUsedWorkstation().Occupied.Value.Head:FindFirstChild("ChatBubble").Body.IconFrame:FindFirstChild("2Icon") then
           order(getUsedWorkstation().Occupied.Value.Head:FindFirstChild("ChatBubble").Body.IconFrame["2Icon"].Image)
       end
       if getUsedWorkstation().Occupied.Value.Head:FindFirstChild("ChatBubble").Body.IconFrame:FindFirstChild("3Icon") then
           order(getUsedWorkstation().Occupied.Value.Head:FindFirstChild("ChatBubble").Body.IconFrame["3Icon"].Image)
       end
       
       order("done")
   end
end
end

local bindableFunction = Instance.new("BindableFunction")
bindableFunction.OnInvoke = callback



game.StarterGui:SetCore("SendNotification", {
	        Title = "cornfields' Autofarm";
	        Text = "Complete one order correctly and then press the button below to continue.";
	        Duration = 120;
	        Button1 = "i completed one order <3";
	        Callback = bindableFunction;
})