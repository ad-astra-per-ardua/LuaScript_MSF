function Install_DonateNbanTrigger()
    ------<  기부 트리거  >--------------------------------------------- [ GiveRateUnit = 8  ]
    GText1 = StrDesignX("\x04기부금액 단위가 \x1F5,000 Ore \x04로 \x11변경\x04되었습니다.")
    GText2 = StrDesignX("\x04기부금액 단위가 \x1F10,000 Ore \x04로 \x11변경\x04되었습니다.")
    GText3 = StrDesignX("\x04기부금액 단위가 \x1F50,000 Ore \x04로 \x11변경\x04되었습니다.")
    GText4 = StrDesignX("\x04기부금액 단위가 \x1F100,000 Ore \x04로 \x11변경\x04되었습니다.")
    GText5 = StrDesignX("\x04기부금액 단위가 \x1F500,000 Ore \x04로 \x11변경\x04되었습니다.")
    GText6 = StrDesignX("\x04기부금액 단위가 \x1F1,000 Ore \x04로 \x11변경\x04되었습니다.")
    -- 1000 = 0 // 5000 = 1 // 10000 = 2 // 50000 = 3 // 100000 = 4 // 500000 = 5
    GTable = {{0,1,GText1},{1,2,GText2},{2,3,GText3},{3,4,GText4},{4,5,GText5},{5,0,GText6}}
    --Give Trig -- [ GiveUnit (58,60,69,71,72) ]
    --GiveRate 0~5 [ 5000, 10000, 50000, 100000, 500000, 1000 ]
    
    GiveRate = CreateNcode()
    
    GiveRate2 = {1000,5000,10000,50000,100000,500000}
    GiveUnitID = {58,60,69,71,72}
    PlayerArr = {"\x08P1","\x0EP2","\x0FP3","\x10P4","\x11P5"}
    
    CIf(Force1,{Bring(CurrentPlayer,AtLeast,1,11,"Anywhere")})
    
    for i = 0, 3 do
    for j = 1, 6 do
    Trigger {
        players = {i},
        conditions = {
                Label(0);
                NDeaths(i,Exactly,GTable[j][1],GiveRate);
                Bring(CurrentPlayer,AtLeast,1,11,"Anywhere")
            },
        actions = {
                GiveUnits(all,11,i,"Anywhere",P12);
                ModifyUnitEnergy(all, 11, P12, "Anywhere", 0);
                RemoveUnit(11,P12);
                DisplayText(GTable[j][3],4);
                SetNDeaths(i,SetTo,GTable[j][2],GiveRate);
                PreserveTrigger();
            }
    }
    
    end end
    
    CIfEnd()
    
    for k = 0, 3 do
    for j = 0, 3 do
    if k~=j then
    CIf(k,Bring(k,AtLeast,1,GiveUnitID[j+1],"Anywhere"))
        for i = 0, 5 do
        Trigger {
                players = {k},
                conditions = {
                        Label(0);
                        Bring(k,AtLeast,1,GiveUnitID[j+1],"Anywhere");
                        PlayerCheck(j,1);
                        NDeaths(k,Exactly,i,GiveRate);
                        Accumulate(k,AtMost,GiveRate2[i+1],Ore);
                    },
                actions = {
                        ModifyUnitEnergy(all, GiveUnitID[j+1], k, "Anywhere", 0);
                        RemoveUnitAt(1,GiveUnitID[j+1],"Anywhere",k);
                        DisplayText(StrDesignX("\x1F잔액\x04이 부족합니다."),4);
                        PreserveTrigger()
                    },
            }
        Trigger {
                players = {k},
                conditions = {
                        Label(0);
                        Bring(k,AtLeast,1,GiveUnitID[j+1],"Anywhere");
                        PlayerCheck(j,1);
                        NDeaths(k,Exactly,i,GiveRate);
                        Accumulate(k,AtLeast,GiveRate2[i+1],Ore);
                        Accumulate(k,AtMost,0x7FFFFFFF,Ore);
                    },
                actions = {
                        SetResources(k,Subtract,GiveRate2[i+1],Ore);
                        SetResources(j,Add,GiveRate2[i+1],Ore);
                        ModifyUnitEnergy(all, GiveUnitID[j+1], k, "Anywhere", 0);
                        RemoveUnitAt(1,GiveUnitID[j+1],"Anywhere",k);
                        DisplayText(StrDesignX(PlayerArr[j+1].."\x04에게 \x1F"..GiveRate2[i+1].." Ore\x04를 기부하였습니다."),4);
                        SetMemory(0x6509B0,SetTo,j);
                        DisplayText(StrDesignX(PlayerArr[k+1].."\x04에게 \x1F"..GiveRate2[i+1].." Ore\x04를 기부받았습니다."),4);
                        SetMemory(0x6509B0,SetTo,k);
                        PreserveTrigger();
                    },
            }
        end
    Trigger {
        players = {k},
        conditions = {
                Label(0);
                Bring(k,AtLeast,1,GiveUnitID[j+1],"Anywhere");
                PlayerCheck(j,0);
            },
        actions = {
                DisplayText(StrDesignX(PlayerArr[j+1].."\x04이(가) 존재하지 않습니다."),4);
                ModifyUnitEnergy(all, GiveUnitID[j+1], k, "Anywhere", 0);
                RemoveUnitAt(1,GiveUnitID[j+1],"Anywhere",k);
                PreserveTrigger();
                    },
            }
        
    CIfEnd()
    elseif k==j then
        TriggerX(k,{Bring(k,AtLeast,1,GiveUnitID[j+1],"Anywhere")},{
            ModifyUnitEnergy(all, GiveUnitID[j+1], k, "Anywhere", 0);
            RemoveUnitAt(1,GiveUnitID[j+1],"Anywhere",k);
        },{Preserved})
    end end end
    
--------------------- Ban Trigger ------------------------

BanText = "\x04당신은 \x11방장에 의해 \x08강제퇴장 \x04당하였습니다."
BanLocArr = {"banP1","banP2","banP3","banP4"}
for i = 0, 3 do
Trigger {
    players = {FP},
    conditions = {
            Label(0);
            Bring(Force1,AtLeast,1,15,BanLocArr[i+1]);
        },
    actions = {
            RotatePlayer({DisplayTextX(StrDesignX(BanText))},{i},FP);
            RotatePlayer({Defeat()},{i},FP);
        }
}
end
end