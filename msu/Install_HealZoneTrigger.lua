function Install_HealZoneTrigger()
    ----------- Heal Zone -----------
    Trigger {
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 100, "Young Chrysalis");
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, "Young Chrysalis");
            ModifyUnitHitPoints(All, "Men", CurrentPlayer, "HealZone", 100);
            ModifyUnitShields(All, "Men", CurrentPlayer, "HealZone", 100);
            PreserveTrigger();
        },
    }
    
    
    Trigger {
        players = {Force1},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, "Any unit", "HealZone");
        },
        actions = {
            SetDeaths(CurrentPlayer, Add, 1, "Young Chrysalis");
            PreserveTrigger();
        },
    }
    ------------ Bunker Heal Zone ----------
    Trigger{
        players = {Force1},
        conditions = {
            Bring(CurrentPlayer, AtLeast, 1, 125, "HealZone");
            },
        actions = {
            SetDeaths(P8, Add, 1, 176);
            PreserveTrigger();
        },
    }
    
    
    Trigger{
        players = {Force1},
        conditions = {
            Deaths(P8, AtLeast, 1, 176);
        },
        actions = {
            SetDeaths(P8, SetTo, 0, 176);
            ModifyUnitHitPoints("Buildings", 125, CurrentPlayer, "HealZone", 100);
            ModifyUnitHitPoints("Buildings", 125, P12, "HealZone", 100);
            ModifyUnitShields("Buildings", 125, CurrentPlayer, "HealZone", 100);
            PreserveTrigger();
        },
    }


end