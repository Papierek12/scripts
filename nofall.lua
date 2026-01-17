local rs = game:GetService("RunService")
local hb = rs.Heartbeat
local rsd = rs.RenderStepped
local lp = game.Players.LocalPlayer
local z = Vector3.zero
local function f(c)
    local r = c:WaitForChild("HumanoidRootPart")
    if r then
        local con
        con = hb:Connect(function()
            if not r.Parent then
                con:Disconnect()
            end
            local v = r.AssemblyLinearVelocity
            r.AssemblyLinearVelocity = z
            rsd:Wait()
            r.AssemblyLinearVelocity = v
        end)
    end
end
f(lp.Character)
lp.CharacterAdded:Connect(f)
