function Install_verifingPhase()
    TriggerX(FP,{Memory(0x57F0B4, Exactly, 0);},{
        RotatePlayer({
        DisplayTextX(StrDesignX("\x04싱글 플레이 감지 멀티플레이 환경에서 플레이 해주세요.").."\n"..StrDesignX("\x04EUD ERROR \x080x69746977 \x04Activated."),4);
        Defeat();
        },HumanPlayers,FP);
        PlayWAV("sound\\misc\\Buzz\\wav");
        SetMemory(0x968B968B,SetTo,1);},preserved)
    
    
        for i = 4, 7 do
            Trigger {
                players = {FP},
                conditions = {
                    MemoryX(0x57EEE8 + 36*i,Exactly,0,0xFF);
                },
                actions = {
                    RotatePlayer({
                    DisplayTextX(StrDesignX("\x04컴퓨터 슬롯 변경 감지. \x08헛짓거리 그만하쇼.").."\n"..StrDesignX("\x04EUD ERROR \x080x69746977 \x04Activated."),4);
                    Defeat();
                    },HumanPlayers,FP);
                    PlayWAV("sound\\misc\\Buzz\\wav");
                    SetMemory(0x968B968B,SetTo,1);
                }
            }
            Trigger {
                players = {FP},
                conditions = {
                    MemoryX(0x57EEE8 + 36*i,Exactly,2,0xFF);
                },
                actions = {
                    RotatePlayer({
                        DisplayTextX(StrDesignX("\x04컴퓨터 슬롯 변경 감지. \x08헛짓거리 그만하쇼.").."\n"..StrDesignX("\x04EUD ERROR \x080x69746977 \x04Activated."),4);
                    Defeat();
                    },HumanPlayers,FP);
                    PlayWAV("sound\\misc\\Buzz\\wav");
                    SetMemory(0x968B968B,SetTo,1);
                }
            }
        end
    -------- End of verifing start phase


    
    TriggerX(FP, Always(), ModifyUnitShields(All, "Any unit", AllPlayers, "Anywhere", 100));
    TriggerX(FP, Always(), ModifyUnitHitPoints(All, "Any unit", AllPlayers, "Anywhere", 100));
    TriggerX(FP,Always(),{CreateUnit(1, 15, "admin1",P1)})
    Trigger {
        players = {Force1},
        conditions = {
            Always();
        },
        actions = {
            SetAllianceStatus(Force1, Ally),
            PreserveTrigger();
        },
        }
end