-- Client-side script for ACE-EVs addon (ACE 502 compatible)

if CLIENT then
    print("[ACE EVs] Client-side script loaded for ACE 502!")

    -- Hook into ACF's menu creation
    hook.Add("ACFMenuCreate", "ACE_EVs_AddToMenu", function(acfmenupanel)
        print("[ACE EVs] Adding items to the ACE menu...")

        -- Add a new "Electric Motors" category under the Mobility section
        local MobilityNode = acfmenupanel.WeaponSelect:AddNode("Mobility", "icon16/car.png")
        local ElectricMotorsNode = MobilityNode:AddNode("Electric Motors", "icon16/cog.png")

        -- Add motors to the Electric Motors category
        ElectricMotorsNode:AddNode("Small Electric Motor", "icon16/cog.png"):DoClick(function()
            acfmenupanel:UpdateDisplay({
                Name = "Small Electric Motor",
                Description = "A small electric motor for light vehicles.",
                Torque = 250,
                RPM = { Idle = 0, Limit = 15000 },
                Model = "models/engines/emotor_small.mdl"
            })
            print("[ACE EVs] Small Electric Motor selected!")
        end)

        ElectricMotorsNode:AddNode("Medium Electric Motor", "icon16/cog.png"):DoClick(function()
            acfmenupanel:UpdateDisplay({
                Name = "Medium Electric Motor",
                Description = "A medium electric motor for general-purpose vehicles.",
                Torque = 500,
                RPM = { Idle = 0, Limit = 12000 },
                Model = "models/engines/emotor_medium.mdl"
            })
            print("[ACE EVs] Medium Electric Motor selected!")
        end)

        ElectricMotorsNode:AddNode("Large Electric Motor", "icon16/cog.png"):DoClick(function()
            acfmenupanel:UpdateDisplay({
                Name = "Large Electric Motor",
                Description = "A large electric motor for heavy vehicles.",
                Torque = 1000,
                RPM = { Idle = 0, Limit = 8000 },
                Model = "models/engines/emotor_large.mdl"
            })
            print("[ACE EVs] Large Electric Motor selected!")
        end)

        print("[ACE EVs] Electric motors added to the ACE menu!")
    end)
end