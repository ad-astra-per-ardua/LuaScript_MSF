function Install_BGMPhase()
    Trigger { -- 건물데스값 -1
    players = {P6},
    conditions = {
        Always();
    },
    actions = {
        SetDeaths(P6,Subtract,1,131);
        SetDeaths(P6,Subtract,1,132);
        SetDeaths(P6,Subtract,1,133);
        SetDeaths(P6,Subtract,1,114);
        SetDeaths(P6,Subtract,1,160);
        SetDeaths(P6,Subtract,1,167);
        SetDeaths(P6,Subtract,1,154);
        PreserveTrigger();
    }
}

    
    Trigger { -- 경우 1 
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 215);
            Deaths(CurrentPlayer, Exactly, 0, 164);
            Deaths(CurrentPlayer, Exactly, 1, "Zerg Beacon"); -- 햇 브금 스위치
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 215); -- 순대 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 222); -- inf1 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 164); -- inf2 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 1020, "Zerg Flag Beacon"); -- 햇 브금 타이머
            PlayWAV("staredit\\wav\\hat.ogg");
            PlayWAV("staredit\\wav\\hat.ogg");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, "Zerg Flag Beacon"); -- 햇 브금 타이머
            PreserveTrigger();
        },
    }
    
    Trigger { -- 변수 초기화
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 1, "Zerg Beacon"); -- 햇 브금 스위치
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, "Zerg Beacon"); -- 햇 브금 스위치
            PreserveTrigger();
        },
    }
    
    Trigger { -- 경우 2
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 215);
            Deaths(CurrentPlayer, Exactly, 0, 164);
            Deaths(CurrentPlayer, Exactly, 1, "Unused Zerg Bldg 5"); -- 레어 브금 스위치
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 215); -- 순대 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 222); -- inf1 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 164); -- inf2 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 966, "Unused Zerg Bldg"); -- 레어 브금 타이머
            PlayWAV("staredit\\wav\\Lair.ogg");
            PlayWAV("staredit\\wav\\Lair.ogg");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, "Unused Zerg Bldg"); -- 레어 브금 타이머
            PreserveTrigger();
        },
    }
    
    Trigger { -- 변수 초기화
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 1, "Unused Zerg Bldg 5"); -- 레어 브금 스위치
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, "Unused Zerg Bldg 5");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 경우 3
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 215);
            Deaths(CurrentPlayer, Exactly, 0, 164);
            Deaths(CurrentPlayer, Exactly, 1, "Unused Terran Bldg type   1"); -- 하이브 브금 스위치
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 215); -- 순대 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 222); -- inf1 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 164); -- inf2 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 1054, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            PlayWAV("staredit\\wav\\hive.ogg");
            PlayWAV("staredit\\wav\\hive.ogg");
            PlayWAV("staredit\\wav\\hive.ogg");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            PreserveTrigger();
        },
    }
    
    Trigger { -- 변수 초기화
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 1, "Unused Terran Bldg type   1"); -- 하이브 브금 스위치
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, "Unused Terran Bldg type   1"); -- 하이브 브금 스위치
            PreserveTrigger();
        },
    }
    
    Trigger { -- 경우 4
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 215);
            Deaths(CurrentPlayer, Exactly, 0, 164);
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 1, "Independent Starport"); -- 스타포트 브금 스위치
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 215); -- 순대 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 222); -- inf1 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 164); -- inf2 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 1190, 220); -- 스타포트 브금 타이머
            PlayWAV("staredit\\wav\\terran1.ogg");
            PlayWAV("staredit\\wav\\terran1.ogg");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, 220); -- 스타포트 브금 타이머
            PreserveTrigger();
        },
    }
    
    Trigger { -- 변수 초기화
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 1, "Independent Starport"); -- 스타포트 브금 스위치
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, "Independent Starport"); -- 스타포트 브금 스위치
            PreserveTrigger();
        },
    }
    
    Trigger { -- 경우 5
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 215);
            Deaths(CurrentPlayer, Exactly, 0, 164);
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 1, 218); -- 스타게이트 브금 스위치
            Deaths(CurrentPlayer, Exactly, 0, 215); -- 순대 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 222); -- inf1 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 164); -- inf2 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 2074, 221); -- 스타게이트 브금 타이머
            PlayWAV("staredit\\wav\\stargate.ogg");
            PlayWAV("staredit\\wav\\stargate.ogg");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, 221); -- 스타게이트 브금 타이머
            PreserveTrigger();
        },
    }
    
    Trigger { -- 변수 초기화
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 1, 218); -- 스타게이트 브금 스위치
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, 218); -- 스타게이트 브금 스위치
            PreserveTrigger();
        },
    }


    Trigger { -- 경우 6
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 215);
            Deaths(CurrentPlayer, Exactly, 0, 164);
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 1, 204); -- 순대 브금 스위치
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 222); -- inf1 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 164); -- inf2 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 1904, 215); -- 순대 브금 타이머
            PlayWAV("staredit\\wav\\psychopathy.ogg");
            PlayWAV("staredit\\wav\\psychopathy.ogg");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, 215); -- 순대 브금 타이머
            PreserveTrigger();
        },
    }
    
    Trigger { -- 변수 초기화
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 1, 204); -- 순대 브금 스위치
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, 204); -- 순대 브금 스위치
            PreserveTrigger();
        },
    }

    Trigger { -- 경우 7
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 164);
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 215); -- 순대 브금 타이머
            Deaths(CurrentPlayer, Exactly, 1, 222); -- inf1 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 164); -- inf2 com 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 2550, 215); -- inf1 com 브금 타이머
            PlayWAV("staredit\\wav\\inf1.ogg");
            PlayWAV("staredit\\wav\\inf1.ogg");
            PreserveTrigger();
        },
    }
    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, 215); -- inf1 com 브금 타이머
            PreserveTrigger();
        },
    }
    
    Trigger { -- 변수 초기화
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, AtLeast, 1, 222); -- inf1 com 브금 스위치
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 0, 222); -- inf1 com 브금 스위치
            PreserveTrigger();
        },
    }

    

    Trigger { -- 경우 8
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, "Zerg Flag Beacon"); -- 햇 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Terran Bldg type   2"); -- 하이브 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, "Unused Zerg Bldg"); -- 레어 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 220); -- 스타포트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 221); -- 스타게이트 브금 타이머
            Deaths(CurrentPlayer, Exactly, 0, 215); -- 순대 브금 타이머
            Deaths(CurrentPlayer, Exactly, 1, 223); -- inf2 com 브금 switch
            Deaths(CurrentPlayer, Exactly, 0, 197); -- 중보 11시
            Deaths(CurrentPlayer, Exactly, 0, 158); -- 브금온오프
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 2890, 164); -- inf2 브금 타이머
            PlayWAV("staredit\\wav\\inf2.ogg");
            PlayWAV("staredit\\wav\\inf2.ogg");
            PreserveTrigger();
        },
    }
    TriggerX(Force1,Deaths(CurrentPlayer, AtLeast, 1, 223), SetDeaths(CurrentPlayer, SetTo, 0, 223), preserved)

    Trigger { -- 중보 1
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 198),
            Deaths(CurrentPlayer, Exactly, 0, 199),
            Deaths(CurrentPlayer, Exactly, 1, 224),
            Deaths(CurrentPlayer, Exactly, 0, 158);
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 3774, 197); -- 11시 중보 브금 타이머
            PlayWAV("staredit\\wav\\11MB.ogg");
            PlayWAV("staredit\\wav\\11MB.ogg");
            PreserveTrigger();
        },
    }

    Trigger { -- 중보 2
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 197),
            Deaths(CurrentPlayer, Exactly, 0, 199),
            Deaths(CurrentPlayer, Exactly, 1, 225),
            Deaths(CurrentPlayer, Exactly, 0, 158);
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 3630, 198); -- 1시 중보 브금 타이머
            PlayWAV("staredit\\wav\\FBoss3.ogg");
            PreserveTrigger();
        },
    }

    Trigger { -- 중보 3
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 197),
            Deaths(CurrentPlayer, Exactly, 0, 198),
            Deaths(CurrentPlayer, Exactly, 1, 226),
            Deaths(CurrentPlayer, Exactly, 0, 158);
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 5700, 199); -- 5시 중보 브금 타이머
            PlayWAV("staredit\\wav\\M5Boss.ogg");
            PreserveTrigger();
        },
    }

    Trigger { -- 중보 4
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer, Exactly, 0, 197),
            Deaths(CurrentPlayer, Exactly, 0, 198),
            Deaths(CurrentPlayer, Exactly, 0, 199),
            Deaths(CurrentPlayer, Exactly, 1, 227),
            Deaths(CurrentPlayer, Exactly, 0, 158);
        },
        actions = {
            SetDeaths(CurrentPlayer, SetTo, 2550, 200); -- 7시 중보 브금 타이머
            PlayWAV("staredit\\wav\\M7Boss.ogg");
            PreserveTrigger();
        },
    }

    
    TriggerX(Force1,Deaths(CurrentPlayer, AtLeast, 1, 224), SetDeaths(CurrentPlayer, SetTo, 0, 224), preserved) -- 11시 중보 스위치
    TriggerX(Force1,Deaths(CurrentPlayer, AtLeast, 1, 225), SetDeaths(CurrentPlayer, SetTo, 0, 225), preserved) -- 1시 중보 스위치
    TriggerX(Force1,Deaths(CurrentPlayer, AtLeast, 1, 226), SetDeaths(CurrentPlayer, SetTo, 0, 226), preserved) -- 5시 중보 스위치
    TriggerX(Force1,Deaths(CurrentPlayer, AtLeast, 1, 227), SetDeaths(CurrentPlayer, SetTo, 0, 227), preserved) -- 7시 중보 스위치

    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, 197); -- 11시 중보 브금 타이머
            PreserveTrigger();
        },
    }

    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, 198); -- 1시 중보 브금 타이머
            PreserveTrigger();
        },
    }

    TriggerX(P6, Always(), SetDeaths(Force1, Subtract, 1, 199), preserved) -- 5시 중보 브금 타이머
    TriggerX(P6, Always(), SetDeaths(Force1, Subtract, 1, 200), preserved)
    

    
    Trigger { -- 노래시간 감소
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            SetDeaths(Force1, Subtract, 1, 164); -- inf2 브금 타이머
            PreserveTrigger();
        },
    }
    
    
    Trigger { -- Link with variation with trigger
        players = {Force1},
        conditions = {
            Deaths(P6, AtLeast, 1, 131);
        },
        actions = {
            DisplayText(StrDesignX("Hatchery Destroyed! + 40000 Points"));
            SetScore(CurrentPlayer, Add, 40000, Kills);
            SetDeaths(CurrentPlayer, SetTo, 1, "Zerg Beacon"); -- 햇 브금 스위치
            PreserveTrigger();
        },
    }
    
    Trigger { -- Link with variation with trigger
        players = {Force1},
        conditions = {
            Deaths(P6, AtLeast, 1, 132);
        },
        actions = {
            DisplayText(StrDesignX("Lair Destroyed! + 50000 Points"));
            SetScore(CurrentPlayer, Add, 50000, Kills);
            SetDeaths(CurrentPlayer, SetTo, 1, "Unused Zerg Bldg 5"); -- 레어 브금 스위치
            PreserveTrigger();
        },
    }
    
    Trigger { -- Link with variation with trigger
        players = {Force1},
        conditions = {
            Deaths(P6, AtLeast, 1, 133);
        },
        actions = {
            DisplayText(StrDesignX("Hive Destroyed! + 60000 Points"));
            SetScore(CurrentPlayer, Add, 60000, Kills);
            SetDeaths(CurrentPlayer, SetTo, 1, "Unused Terran Bldg type   1"); -- 하이브 브금 스위치
            PreserveTrigger();
        },
    }
    
    Trigger { -- Link with variation with trigger
        players = {Force1},
        conditions = {
            Deaths(P6, AtLeast, 1, 114);
        },
        actions = {
            DisplayText(StrDesignX("Starport Destroyed! + 80000 Points"));
            SetScore(CurrentPlayer, Add, 80000, Kills);
            SetDeaths(CurrentPlayer, SetTo, 1, "Independent Starport"); -- 스타포트 브금 스위치
            PreserveTrigger();
        },
    }
    
    Trigger{
        players = {Force1},
        conditions = {
            Deaths(P6, AtLeast, 1, 167);
        },
        actions = {
            DisplayText(StrDesignX("Stargate Destroyed! + 100000 Points"));
            SetScore(CurrentPlayer, Add, 100000, Kills);
            SetDeaths(CurrentPlayer, SetTo, 1, 218); -- 스타게이트 브금 스위치
            PreserveTrigger();
        },
    }

TriggerX(Force1, {Deaths(P7, AtLeast, 1, 151)}, {DisplayText(StrDesignX("\x04Cerebrate \x11Destroyed! \x07+ 200,000 \x17Points! "), 4),
SetScore(CurrentPlayer, Add, 200000, Kills),
SetDeaths(CurrentPlayer, Add, 1, 204) -- 순대 브금 스위치
})

TriggerX(Force1, {Deaths(P7, AtLeast, 1, 152)}, {DisplayText(StrDesignX("\x04Daggoth \x11Destroyed! \x07+ 200,000 \x17Points! "), 4),
SetScore(CurrentPlayer, Add, 200000, Kills),
SetDeaths(CurrentPlayer, Add, 1, 204) -- Daggoth BGM Switch
})


TriggerX(Force1, {Deaths(P7, AtLeast, 1, 130)}, {DisplayText(StrDesignX("\x04Infested Command Center \x11Destroyed! \x07+ 400,000 \x17Points! "), 4),
SetScore(CurrentPlayer, Add, 400000, Kills),
SetDeaths(CurrentPlayer, Add, 1, 222) -- Inf1 com BGM Switch
})

TriggerX(Force1, {Deaths(P7, AtLeast, 1, 106)}, {DisplayText(StrDesignX("\x04Infested Command Center \x11Destroyed! \x07+ 400,000 \x17Points! "), 4),
SetScore(CurrentPlayer, Add, 400000, Kills),
SetDeaths(CurrentPlayer, Add, 1, 223) -- Inf2 com BGM Switch
})


TriggerX(Force1, {Deaths(P7, AtLeast, 1, 174)}, {DisplayText(StrDesignX("\x04? ? ? ? ? ? ? \x11Destroyed! \x07+ 1,000,000 \x17Ore! "), 4),
SetResources(CurrentPlayer, Add, 1000000, Ore),
SetDeaths(CurrentPlayer, Add, 1, 224) -- 11시 중보 BGM Switch
})

TriggerX(Force1, {Deaths(P7, AtLeast, 1, 175)}, {DisplayText(StrDesignX("\x04? ? ? ? ? ? ? \x11Destroyed! \x07+ 1,000,000 \x17Ore! "), 4),
SetResources(CurrentPlayer, Add, 1000000, Ore),
SetDeaths(CurrentPlayer, Add, 1, 225) -- 1시 중보 BGM Switch
})

TriggerX(Force1, {Deaths(P7, AtLeast, 1, 148)}, {DisplayText(StrDesignX("\x04? ? ? ? ? ? ? \x11Destroyed! \x07+ 1,000,000 \x17Ore! "), 4),
SetResources(CurrentPlayer, Add, 1000000, Ore),
SetDeaths(CurrentPlayer, Add, 1, 226) -- 5시 중보 BGM Switch
})

TriggerX(Force1, {Deaths(P7, AtLeast, 1, 127)}, {DisplayText(StrDesignX("\x04? ? ? ? ? ? ? \x11Destroyed! \x07+ 1,000,000 \x17Ore! "), 4),
SetResources(CurrentPlayer, Add, 1000000, Ore),
SetDeaths(CurrentPlayer, Add, 1, 227) -- 7시 중보 BGM Switch
})




    
end