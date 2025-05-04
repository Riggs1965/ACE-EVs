ACF = ACF or {}

---------------------------------- Battery Efficiency ----------------------------------

-- Li-ion energy density: kW hours per liter
ACF.LiIonED = 0.4 -- Modify this value to adjust battery efficiency , ACF-EV > 0.4 from 0.27

-- Multiplier for electric consumption
ACF.ElecRate = 1.75 -- Modify this value to adjust electricity consumption rate , ACF-EV < 1.75 from 4


print("[ACF-EV | INFO] - ACF EV Loaded!")