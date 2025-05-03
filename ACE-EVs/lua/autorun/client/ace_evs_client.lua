-- Client-side script for ACE-EVs addon

if CLIENT then
    print("[ACE EVs] Client-side script loaded!")

    -- Add custom motors to the ACE menu
    hook.Add("ACFMenuContent", "ACE_EVs_Menu", function(MenuPanel)
        MenuPanel:AddTitle("ACE Electric Motors")
        MenuPanel:AddHelp("These are custom electric motors for ACE.")

        -- Small Electric Motor
        MenuPanel:AddItem({
            Name = "Small Electric Motor",
            Description = "A small electric motor for light vehicles.",
            Icon = "icon16/cog.png", -- Replace with a valid icon path
        })

        -- Medium Electric Motor
        MenuPanel:AddItem({
            Name = "Medium Electric Motor",
            Description = "A medium-sized electric motor for general-purpose vehicles.",
            Icon = "icon16/cog.png",
        })

        -- Large Electric Motor
        MenuPanel:AddItem({
            Name = "Large Electric Motor",
            Description = "A large electric motor for heavy vehicles.",
            Icon = "icon16/cog.png",
        })
    end)
end