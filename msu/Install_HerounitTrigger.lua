function Install_HerounitTrigger()
    for i = 1, 4 do
        TriggerX(P7, Always(), CreateUnit(1, 23, "tank"..i, P7))
    end
    for i = 1, 3 do
        TriggerX(P7, Always(), CreateUnit(1, 29, "emp"..i, P7))
        TriggerX(P7, Always(), CreateUnit(1, 27, "nuke"..i, P7))
    end
    for i = 1, 6 do
        TriggerX(P7, Always(), CreateUnit(1, 76, "purity"..i, P7))
    end
    for i = 1, 2 do
        TriggerX(P7, Always(), CreateUnit(1, 74, "unrevealer"..i, P7))
        TriggerX(P7, Always(), CreateUnit(1, 28, "yama"..i, P7))
    end
    for i = 1 , 5 do
        CSPlot(HeroShape1, P7, 93, "mutant"..i, nil, 1, 32, P7, Always())
    end
    for i = 1, 2 do
        CSPlot(HeroShape1, P7, 64, "hcomet"..i, nil, 1, 32, P7, Always())
    end
    for i = 1, 2 do
        CSPlot(HeroShape1, P7, 58, "intercepter"..i, nil, 1, 32, P7, Always())
    end
    for i = 1, 2 do
        CSPlot(HeroShape1, P7, 7, "pluto"..i, nil, 1, 32, P7, Always())
    end
    CSPlot(HeroShape1, P7, 21, "wraith1", nil, 1, 32, P7, Always())
    CSPlot(HeroShape1, P7, 69, "vesta1", nil, 1, 32, P7, Always())
    CSPlot(HeroShape1, P7, 60, "corsair1", nil, 1, 32, P7, Always())
    
    
    Trigger { -- 영작유닛 데스값 -1
    players = {P7},
    conditions = {
        Always();
    },
    actions = {
        SetDeaths(CurrentPlayer, Subtract, 1, 77);
        SetDeaths(CurrentPlayer, Subtract, 1, 78);
        SetDeaths(CurrentPlayer, Subtract, 1, 52);
        SetDeaths(CurrentPlayer, Subtract, 1, 104);
        SetDeaths(CurrentPlayer, Subtract, 1, 70);
        SetDeaths(CurrentPlayer, Subtract, 1, 21);
        SetDeaths(CurrentPlayer, Subtract, 1, 23);
        SetDeaths(CurrentPlayer, Subtract, 1, 93);
        SetDeaths(CurrentPlayer, Subtract, 1, 69);
        SetDeaths(CurrentPlayer, Subtract, 1, 28);
        SetDeaths(CurrentPlayer, Subtract, 1, 62);
        SetDeaths(CurrentPlayer, Subtract, 1, 86);
        SetDeaths(CurrentPlayer, Subtract, 1, 27);
        SetDeaths(CurrentPlayer, Subtract, 1, 64);
        SetDeaths(CurrentPlayer, Subtract, 1, 7);
        SetDeaths(CurrentPlayer, Subtract, 1, 3);
        SetDeaths(CurrentPlayer, Subtract, 1, 60);
        SetDeaths(CurrentPlayer, Subtract, 1, 58);
        SetDeaths(CurrentPlayer, Subtract, 1, 76);
        SetDeaths(CurrentPlayer, Subtract, 1, 75);
        SetDeaths(CurrentPlayer, Subtract, 1, 74);
        SetDeaths(CurrentPlayer, Subtract, 1, 29);
        SetDeaths(CurrentPlayer, Subtract, 1, 25);
    
        PreserveTrigger();
    },
    }
    
    
    Trigger{
    players = {force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 150);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Gift \x03Box \x11ﾟ.+｡ \x04를 열어 \x1970000 \x1FPoint\x04를 획득했습니다 !", 4);
        SetScore(CurrentPlayer, Add, 70000, Kills);
        PlayWAV("staredit\\wav\\hey.ogg");
        PlayWAV("staredit\\wav\\hey.ogg");
        PlayWAV("staredit\\wav\\hey.ogg");
        PlayWAV("staredit\\wav\\hey.ogg");
        PlayWAV("staredit\\wav\\hey.ogg");
        PlayWAV("staredit\\wav\\hey.ogg");
        PreserveTrigger();
    }
    }
    
    Trigger{
    players = {P6},
    conditions = {
        Always();
    },
    actions = {
        SetDeaths(P7, Subtract, 1, 150);
        PreserveTrigger();
    }
    }
    
    Trigger { -- fenix z
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 77);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Didymos \x11ﾟ.+｡ \x01을 \x06처치 \x04하였습니다 + 35000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 35000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- fenix d
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 78);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Dimorphos \x11ﾟ.+｡ \x01을 \x06처치 \x04하였습니다 + 40000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 40000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- unclean
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 52);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Biela’s Comet \x11ﾟ.+｡ \x01을 \x06처치 \x04하였습니다 + 45000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 45000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- inf duran
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 104);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Psyche \x11.+ﾟ｡ \x01을 \x06처치 \x04하였습니다 + 45000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 45000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- scout
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 70);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Restriction \x11.+ﾟ｡ \x01을 \x06처치 \x04하였습니다 + 50000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 50000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- No comment (ABB625F6)
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 21);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Aphophis \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 55000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 55000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- tank
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 23);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Comet Hyakutake \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 100000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 100000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- scantid
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 93);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03'Oumuamua \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 45000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 45000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- matriach
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 69);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Vesta \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 50000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 50000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- yamabattle
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 28);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Cassini \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 130000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 130000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- devour H
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 62);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Bennu \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 65000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 65000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- Danimoth
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 86);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Borisov \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 85000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 85000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- Goliath
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 3);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Perseid meteor \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 75000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 75000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- Nuke battle
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 27);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Tempel 1 \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 200000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 200000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- Prove
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 64);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Halley’s Comet \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 70000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 70000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- SCV
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 7);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Pluto \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 75000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 75000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger{ -- Corsair
    players = {force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 60);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Ikeya-Seki \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 90000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 90000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    }
    }
    
    Trigger{ -- Intercepter
    players = {force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 58);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Intercepter \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 80000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 80000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    }
    }
    
    Trigger{ -- DA
    players = {force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 76);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Purity \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 85000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 85000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    }
    }
    
    Trigger{ -- ZE
    players = {force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 75);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Veil \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 100000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 100000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    }
    }
    
    Trigger{ -- HD
    players = {force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 74);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Unrevealer \x11.+ﾟ｡ \x01를 \x06처치 \x04하였습니다 + 150000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 150000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    }
    }
    
    Trigger { -- DM
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 29);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Dark Matter \x11ﾟ.+｡ \x01를 \x06처치 \x04하였습니다 + 100000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 100000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    Trigger { -- DS
    players = {Force1},
    conditions = {
        Deaths(P7, AtLeast, 1, 25);
        Deaths(P9,Exactly,0,200)
    },
    actions = {
        DisplayText("\x13\x11｡˙+ﾟ\x08Parallel's \x03Duke S Mode \x11ﾟ.+｡ \x01를 \x06처치 \x04하였습니다 + 75000 \x1FPoints!\x04", 4);
        SetScore(CurrentPlayer, Add, 75000, Kills);
        PlayWAV("staredit\\wav\\killsound.wav");
        PreserveTrigger();
    },
    }
    
    end