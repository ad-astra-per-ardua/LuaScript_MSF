function Install_initial_system_setting()
    -- TriggerX(P7,{Always()},{{Order("Men", P7, "Anywhere", Move, "HealZone")}}) -- For debugging
    DoActions(FP, SetInvincibility(Enable, "Buildings", P12, "Anywhere"),preserved)
    TriggerX(Force1, {Always()}, {PlayWAV("staredit\\wav\\op.ogg")});
    DoActions(FP, {KillUnit(94, Force2),KillUnit(84, Force2),KillUnit(42, Force2),KillUnit(72, Force2),KillUnit(35, Force2)}, preserved)
    
    ------ Color Setting ----- 
    DoActions(FP, SetDeaths(P11, Add, 1, 1), preserved)
    TriggerX(FP, Deaths(P11, AtLeast, 17, 1), {SetDeaths(P11, SetTo, 1, 1)}, preserved)
    local P5_Color = {40, 41, 42, 121}
    local P6_Color = {57, 58, 59, 60}
    local P7_Color = {65, 66, 67, 68}
    local P8_Color = {86, 87, 89, 88}

    local ts = {
        {Deaths(P11, Exactly, 0, 1), 1},
        {Deaths(P11, Exactly, 3, 1), 2},
        {Deaths(P11, Exactly, 6, 1), 3},
        {Deaths(P11, Exactly, 9, 1), 4},
        {Deaths(P11, Exactly, 12, 1), 3},
        {Deaths(P11, Exactly, 15, 1), 2}
    }

    for i, t in ipairs(ts) do
        local c, cin = table.unpack(t)
        TriggerX(FP, {c}, {
            SetPlayerColor(4, SetTo, P5_Color[cin]),
            SetPlayerColor(5, SetTo, P6_Color[cin]),
            SetPlayerColor(6, SetTo, P7_Color[cin]),
            SetPlayerColor(7, SetTo, P8_Color[cin]),
            SetMinimapColor(4, SetTo, P5_Color[cin]),
            SetMinimapColor(5, SetTo, P6_Color[cin]),
            SetMinimapColor(6, SetTo, P7_Color[cin]),
            SetMinimapColor(7, SetTo, P8_Color[cin])
        }, preserved)
    end






    for i=1, 4 do
        Trigger { -- 미션 오브젝트
            players = {Force1},
            conditions = {
                Command(AllPlayers,Exactly,i,111);
            },
            actions = {
                SetMissionObjectives(StrDesignX("\x04MSF Universe Ver. \x07Test \x04플레이 중입니다.").."\n"..StrDesignX("\x04현재\x17 "..i.."명 \x04플레이 중").."\n"..StrDesignX("\x04환전률 : \x1F"..ExRate[i].."% \x04 적용 중 입니다").."\n"..StrDesignX("\x19【 해금 조건 】").."\n"..StrDesignX("\x111.\x04 RGVzdHJveSBEYWdnb3Ro").."\n"..StrDesignX("\x112.\x04 RGVzdHJveSBDZXJlYnJhdGU=").."\n\n"..StrDesignX("\x19테스트에 협력해주셔서 감사합니다.(_ _)"));
            },
        }
        end
    Trigger { -- 싱글 플레이 지원금
	players = {Force1},
	conditions = {
		Command(AllPlayers,AtMost,1,111);
		Command(CurrentPlayer,AtLeast,1,111);
	},
	actions = {
		CreateUnit(2,20,"HealZone",CurrentPlayer);
		SetResources(CurrentPlayer,Add,30000,Ore);
        DisplayText(StrDesignX("\x04싱글 플레이 인식"), 4);
        DisplayText(StrDesignX("\x07+ 30,000 Ore, \x04영마 \x072마리 \x04추가 지급"), 4);
		},
	}
    Trigger {
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer,Exactly,0,158);
            Bring(CurrentPlayer,AtLeast,1,12,"mainLocation")
        },
        actions = {
            RemoveUnitAt(1,12,"mainLocation",CurrentPlayer);
            DisplayText(StrDesignX("BGM을 듣지 않습니다 (ㅠ_ㅠ)"));
            SetDeaths(CurrentPlayer,SetTo,1,158);
            PreserveTrigger()
        },
    }
    
    Trigger { -- off
        players = {Force1},
        conditions = {
            Deaths(CurrentPlayer,Exactly,1,158);
            Bring(CurrentPlayer,AtLeast,1,12,"mainLocation")
        },
        actions = {
            RemoveUnitAt(1,12,"mainLocation",CurrentPlayer);
            DisplayText(StrDesignX("BGM을 다시 듣습니다 (^_^)"));
            SetDeaths(CurrentPlayer,SetTo,0,158);
            PreserveTrigger()
        },
    }
    --- LeaderBoardControl
    TriggerX(FP, {Memory(0x58F44C, Exactly, 1)},{LeaderBoardScore(Kills, "\x1fP\x04oints -- 【Ver。Test】")},preserved);
    TriggerX(FP, {Memory(0x58F44C, Exactly, 131)},{LeaderBoardScore(Custom, "\x08D\x04eaths -- 【Ver。Test】")},preserved);
    TriggerX(FP, {Memory(0x58F44C, Exactly, 261)},{LeaderBoardKills("Any unit", "\x04K\x04ills -- 【Ver。Test】")},preserved);
    TriggerX(FP, {Memory(0x58F44C, AtLeast, 390)},{SetMemory(0x58F44C, SetTo, 0x00000000)},preserved);
    TriggerX(FP, {Always()},{SetMemory(0x58F44C, Add, 0x00000001)},preserved);
    TriggerX(FP, {Always()}, {LeaderBoardComputerPlayers(Disable)})

    ColorArray = {"\x08","\x0E","\x0F","\x10"};
    for i = 0 , 3 do
        TriggerX(Force1, {Deaths(i, AtLeast, 1, 0)}, {
            SetScore(i, Add, 1, Custom),
            DisplayText("\x12\x1F【"..ColorArray[i+1].." ["..(i+1).." Player]\x04의 \x19｡˙+ﾟ \x1DPrivate \x1FGuardians of \x19Galaxy ﾟ.+｡\x04가 \x06사망\x04하였습니다.\x1F】", 4);
            PlayWAV("staredit\\wav\\DEAD.wav")
        },preserved); -- 일마

        TriggerX(Force1, {Deaths(i, AtLeast, 1, 20)}, {
            SetScore(i, Add, 2, Custom),
            DisplayText("\x12\x1F【"..ColorArray[i+1].." ["..(i+1).." Player]\x04의 \x19｡˙+ﾟ \x07Hero \x1FGuardians of \x19Galaxy ﾟ.+｡\x04가 \x06사망\x04하였습니다.\x1F】", 4);
            PlayWAV("staredit\\wav\\DEAD.wav")
        }, preserved); -- 영마

        TriggerX(Force1, {Deaths(i, AtLeast, 1, 1)}, {
            SetScore(i, Add, 3, Custom),
            DisplayText("\x12\x1F【"..ColorArray[i+1].." ["..(i+1).." Player]\x04의 \x19｡˙+ﾟ \x11Special \x1FGuardians of \x19Galaxy ﾟ.+｡\x04가  \x06사망\x04하였습니다.\x1F】", 4);
            PlayWAV("staredit\\wav\\DEAD.wav")
        }, preserved); -- 스마
    end

    for i = 0 , 3 do -- initial start setup
        TriggerX(FP, Always(), SetDeaths(i, Subtract, 1, 0), preserved);
        TriggerX(FP, Always(), SetDeaths(i, Subtract, 1, 1), preserved);
        TriggerX(FP, Always(), SetDeaths(i, Subtract, 1, 20), preserved);

        TriggerX(i, Always(), {
            Wait(100),
            CreateUnit(3, 20, "neutralbunker"..i+1, i),
            CreateUnit(5, 0, "neutralbunker"..i+1, i),
            SetResources(i, Add, 100000, Ore),
            RunAIScriptAt("Enter Transport", "neutralbunker"..i+1)});
    end
    
    
    for i=0, 3 do -- 예약메딕
    
        Trigger { -- 
            players = {i},
            conditions = {
                Always()
            },
            actions = {
                SetMemoryBA(0x57F27C+(228*i)+2,SetTo,0);
                SetMemoryBA(0x57F27C+(228*i)+34,SetTo,1);
            },
        }
        
        Trigger { -- 
            players = {i},
            conditions = {
                Deaths(i,Exactly,0,"Map Revealer");
                Bring(i,AtLeast,1,17,"Anywhere");
            },
            actions = {
                RemoveUnit(17,i);
                DisplayText(StrDesignX("2Tic 예약메딕을 사용합니다. 메딕 가격이 350 Ore로 조정됩니다."));
                SetMemoryBA(0x57F27C+(228*i)+2,SetTo,1);
                SetMemoryBA(0x57F27C+(228*i)+34,SetTo,0);
                SetDeaths(i,SetTo,1,"Map Revealer");
                PreserveTrigger();
            },
        }
        
        Trigger { -- 
            players = {i},
            conditions = {
                Deaths(i,Exactly,1,"Map Revealer");
                Bring(i,AtLeast,1,17,"Anywhere");
            },
            actions = {
                RemoveUnit(17,i);
                DisplayText(StrDesignX("2Tic 예약메딕을 사용하지 않습니다. 메딕 가격이 300 Ore로 조정됩니다."));
                SetMemoryBA(0x57F27C+(228*i)+2,SetTo,0);
                SetMemoryBA(0x57F27C+(228*i)+34,SetTo,1);
                SetDeaths(i,SetTo,0,"Map Revealer");
                PreserveTrigger();
            },
        }
        
        end
        Trigger { -- 1틱메딕
            players = {Force1},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, "Terran Medic");
            },
            actions = {
                ModifyUnitHitPoints(All, "Men", CurrentPlayer, "Anywhere", 100);
                ModifyUnitShields(All, "Men", CurrentPlayer, "Anywhere", 100);
                RemoveUnit("Terran Medic", CurrentPlayer);
                PreserveTrigger();
            },
        }
        
        Trigger { -- 2틱메딕
            players = {Force1},
            conditions = {
                Command(CurrentPlayer, AtLeast, 1, 2);
            },
            actions = {
                ModifyUnitHitPoints(All, "Men", CurrentPlayer, "Anywhere", 100);
                ModifyUnitShields(All, "Men", CurrentPlayer, "Anywhere", 100);
                RemoveUnit(2, CurrentPlayer);
                PreserveTrigger();
            },
        }
        
        
        Trigger { -- 일마 생산
            players = {AllPlayers},
            conditions = {
                Bring(CurrentPlayer, AtLeast, 1, 0, "mainLocation");
            },
            actions = {
                PlayWAV("staredit\\wav\\ghost_dead.ogg");
                CreateUnit(1, 0, "HealZone", CurrentPlayer);
                RemoveUnitAt(1, 0, "mainLocation", CurrentPlayer);
                PreserveTrigger();
            },
        }
        
        Trigger { -- 영마 생산
            players = {AllPlayers},
            conditions = {
                Bring(CurrentPlayer, AtLeast, 1, 20, "mainLocation");
            },
            actions = {
                PlayWAV("staredit\\wav\\ghost_living.ogg");
                RemoveUnitAt(1, 20, "mainLocation", CurrentPlayer);
                CreateUnit(1, 20, "HealZone", CurrentPlayer);
                PreserveTrigger();
            },
        }
        
        Trigger { -- 스마 생산
            players = {AllPlayers},
            conditions = {
                Bring(CurrentPlayer, AtLeast, 1, 1, "mainLocation");
            },
            actions = {
                PlayWAV("staredit\\wav\\ghost_nevergiveup.ogg");
                RemoveUnitAt(1, 1, "mainLocation", CurrentPlayer);
                CreateUnit(1, 1, "HealZone", CurrentPlayer);
                PreserveTrigger();
            },
        }
        -------------- CPU AI Script
    Trigger { -- No comment (866B4FC4)
        players = {P6},
        conditions = {
            Always();
        },
        actions = {
            RunAIScriptAt("Expansion Zerg Campaign Insane", "hive10");
            RunAIScriptAt("Value This Area Higher", "HealZone");
        },
    }

        
    Trigger { -- 나간플레이어 유닛삭제
    players = {P8},
    conditions = {
            Always();
        },
    actions = {
            RemoveUnit("Men",P12);
            RemoveUnit(111,P12);
            RemoveUnit(107,P12);
            PreserveTrigger();
        },
    }

    Trigger { -- 컴퓨터동맹설정
    players = {Force2},
    conditions = {
        Always();
    },
    actions = {
        SetResources(P5, SetTo, 9999999, OreAndGas);
        SetResources(P6, SetTo, 9999999, OreAndGas);
        SetResources(P7, SetTo, 9999999, OreAndGas);
        SetAllianceStatus(Force2,AlliedVictory);
        SetAllianceStatus(Force1, Enemy);
        },
    }
    Trigger { 
    players = {Force2},
    conditions = {
        Always();
    },
    actions = {
        RunAIScript('Turn ON Shared Vision for Player 1');
        RunAIScript('Turn ON Shared Vision for Player 2');
        RunAIScript('Turn ON Shared Vision for Player 3');
        RunAIScript('Turn ON Shared Vision for Player 4');
    },
    }
    Trigger {
    players = {Force1},
    conditions = {
        Always();
    },
    actions = {
        RunAIScript("Turn ON Shared Vision for Player 8");
        PreserveTrigger();
    },
    }
    Trigger {
    players = {Force1},
    conditions = {
        Always();
    },
    actions = {
        RunAIScript('Turn ON Shared Vision for Player 1');
        RunAIScript('Turn ON Shared Vision for Player 2');
        RunAIScript('Turn ON Shared Vision for Player 3');
        RunAIScript('Turn ON Shared Vision for Player 4');
        PreserveTrigger();
    },
    }
    Trigger2(P8, {Always()}, SetAllianceStatus(Force1, Ally))
end