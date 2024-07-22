function Install_CCMU()
    CanText1 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08! ! ! ＤＡＮＧＥＲ ! ! ! \x04 ● ● ●\n\x14\n\x14\n"
    CanText2 = StrDesignX("\x04맵상의 유닛이 \x08１６００\x04기 이상 있습니다.").."\n"..StrDesignX("\x08캔낫\x04이 \x073회 이상\x04 걸릴 경우 \x10게임\x04에서 \x06패배\x04합니다.\x04").."\n"
    CanText3 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08! ! ! ＤＡＮＧＥＲ ! ! ! \x04 ● ● ●\n\x14\n\x14\n"
    
    CanText11 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08! ! ! ＡＬＥＲＴ ! ! !\x04 ● ● ●\n\x14\n\x14\n"
    CanText22 = StrDesignX("\x08ＣＣＭＵ\x04가 \x081회 \x04감지되었습니다.").."\n"..StrDesignX("\x08ＣＣＭＵ\x04가 \x082회 \x04이상\x08 더 \x04감지 될 경우 \x10게임\x04에서 \x06패배\x04합니다.\x04").."\n"
    CanText33 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08ＡＬＥＲＴ\x04 ● ● ●\n\x14\n\x14\n"
    
    CanText111 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08! ! ! ＡＬＥＲＴ ! ! ! \x04 ● ● ●\n\x14\n\x14\n"
    CanText222 = StrDesignX("\x08ＣＣＭＵ\x04가 \x082회 \x04감지되었습니다.").."\n"..StrDesignX("\x08ＣＣＭＵ\x04가 \x081회 \x04이상\x08 더 \x04감지 될 경우 \x10게임\x04에서 \x06패배\x04합니다.\x04").."\n"
    CanText333 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08! ! ! ＡＬＥＲＴ ! ! ! \x04 ● ● ●\n\x14\n\x14\n"
    
    CanText1111 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08! ! ! ＤＥＦＥＡＴ ! ! ! \x04 ● ● ●\n\x14\n\x14\n"
    CanText2222 = StrDesignX("\x08ＣＣＭＵ\x04가 \x073회 이상 \x04감지되었습니다.").."\n"..StrDesignX("\x10게임\x04에서 \x06패배\x04합니다. T^T\x04").."\n"
    CanText3333 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08! ! ! ＤＥＦＥＡＴ ! ! ! \x04 ● ● ●\n\x14\n\x14\n"
    
    Trigger{ -- 적당히 하십시오 휴먼
        players = {Force1},
        conditions = {
            Memory(0x6283F0, AtLeast, 1600),
            Deaths(P11, AtLeast, 170, 157)
        },
        actions = {
            DisplayText(CanText1, 4),
            DisplayText(CanText2, 4),
            DisplayText(CanText3, 4),
            PlayWAV("sound\\Terran\\RAYNORM\\URaPss02.WAV"),
            PlayWAV("sound\\Terran\\RAYNORM\\URaPss02.WAV"),
            -- SetDeaths(P11, Add, 1, 157),
            Wait(5000),
            PreserveTrigger();
        },
    }
    TriggerX(FP, Deaths(P11, AtLeast, 170, 157), SetDeaths(P11, SetTo, 1, 157),preserved)
    for i = 1 , 2 do
        TriggerX(Force2, {FMemory(0x58F450, Exactly, i)},{RunAIScriptAt(JYD, "Anywhere")})
    end
    TriggerX(Force1, {FMemory(0x58F450, Exactly, 1)}, { -- 1캔
    KillUnit(16, Force2),
    KillUnit(44, Force2),
    KillUnit(56, Force2),
    KillUnit(16, Force2),
    KillUnit(51, Force2),
    KillUnit(88, Force2),
    KillUnit(89, Force2),
    KillUnit(66, Force2),
    KillUnit(65, Force2),
    KillUnit(95, Force2),
    KillUnit(55, Force2),
    KillUnit(69, Force2),
    DisplayText(CanText11, 4),
    DisplayText(CanText22, 4),
    DisplayText(CanText33, 4),
    PlayWAV("sound\\Terran\\GOLIATH\\TGoPss01.WAV"),
    PlayWAV("sound\\Terran\\GOLIATH\\TGoPss01.WAV"),
    PlayWAV("sound\\Terran\\GOLIATH\\TGoPss01.WAV")}
    )
    
    TriggerX(Force1, {FMemory(0x58F450, Exactly, 2)}, { -- 2캔
    KillUnit(16, Force2),
    KillUnit(44, Force2),
    KillUnit(56, Force2),
    KillUnit(16, Force2),
    KillUnit(51, Force2),
    KillUnit(88, Force2),
    KillUnit(89, Force2),
    KillUnit(66, Force2),
    KillUnit(65, Force2),
    KillUnit(95, Force2),
    KillUnit(55, Force2),
    KillUnit(69, Force2),
    DisplayText(CanText111, 4),
    DisplayText(CanText222, 4),
    DisplayText(CanText333, 4),
    PlayWAV("sound\\Terran\\GOLIATH\\TGoPss01.WAV"),
    PlayWAV("sound\\Terran\\GOLIATH\\TGoPss01.WAV"),
    PlayWAV("sound\\Terran\\GOLIATH\\TGoPss01.WAV")}
    )
    
    
    TriggerX(Force1, {FMemory(0x58F450, Exactly, 3)},{ -- 그만하라고ㅅ발
    DisplayText(CanText1111, 4),
    DisplayText(CanText2222, 4),
    DisplayText(CanText3333, 4),
    Defeat();
    })
    end