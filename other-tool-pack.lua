local items = {
    "pickaxe",
    "axe",
    "sword",
    "shear",
    "wool",
    "iron",
    "emerald",
    "diamond"
}

workspace.CurrentCamera.Viewmodel.ChildAdded:Connect(function(x)
    if x and x:FindFirstChild("Handle") then
        local name = x.Name:lower()
        for _, keyword in ipairs(items) do
            if string.find(name, keyword) then
    
                x.Handle.Material = Enum.Material.ForceField

                coroutine.wrap(function()
                    local hue = 0
                    while task.wait(0.05) do
                        if not (x and x.Parent) then break end 
                        hue = (hue + 0.01) % 1
                        local color = Color3.fromHSV(hue, 1, 1)
                        x.Handle.BrickColor = BrickColor.new(color)
                    end
                end)()

                break
            end
        end
    end
end)
