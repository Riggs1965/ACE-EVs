-- Define ACE Electric Motors

ACF.RegisterEngineClass("Electric", {
    Name = "ACE Electric Motors",
    Torque = true,
})

-- Small Electric Motor
ACF.RegisterEngine("Small Electric Motor", "Electric", {
    Name = "Small Electric Motor",
    Description = "A small electric motor for light vehicles.",
    Model = "models/engines/emotor_small.mdl",
    Sound = "acf_electric/esm.wav",
    Torque = 250,
    FlywheelMass = 0.05,
    RPM = {
        Idle = 0,
        Limit = 15000,
    },
})

-- Medium Electric Motor
ACF.RegisterEngine("Medium Electric Motor", "Electric", {
    Name = "Medium Electric Motor",
    Description = "A medium-sized electric motor for general-purpose vehicles.",
    Model = "models/engines/emotor_medium.mdl",
    Sound = "acf_electric/emm.wav",
    Torque = 500,
    FlywheelMass = 0.1,
    RPM = {
        Idle = 0,
        Limit = 12000,
    },
})

-- Large Electric Motor
ACF.RegisterEngine("Large Electric Motor", "Electric", {
    Name = "Large Electric Motor",
    Description = "A large electric motor for heavy vehicles.",
    Model = "models/engines/emotor_large.mdl",
    Sound = "acf_electric/elm.wav",
    Torque = 1000,
    FlywheelMass = 0.2,
    RPM = {
        Idle = 0,
        Limit = 8000,
    },
})