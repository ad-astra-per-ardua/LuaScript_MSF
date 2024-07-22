function Install_NormalGunPlotShape()
    ScanInitSetting(P6,0)
    ScanInitSetting(P5,0)
    ------ Gunplot deathvar uses P10 starts with 0
    ------ Hat 1 tier

    function HatcheryGunplot1( Hatname, Deathvar)
        Trigger{
            players = {P6},
            conditions = {
                CommandLeastAt(131, Hatname);
            },
            actions = {
                SetDeaths(P10,Add,1,Deathvar);
                PreserveTrigger();
            }
        }
        -- Hat1 hatchery phase 1
        CSPlotOrder(square1, P6, 54, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 50,Deathvar)})
        CSPlotOrder(square1, P7, 53, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 85, Deathvar)})
        CSPlotOrder(square1, P6, 40, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 115, Deathvar)})
        CSPlotOrder(spiral1, P6, 43, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 180, Deathvar)})
        CSPlotOrder(square1, P7, 39, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 145, Deathvar)})
        
        CSPlotOrder(spiral1, P7, 55, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 275, Deathvar)})
        CSPlotOrder(spiral2, P6, 56, Hatname, nil, 1, 32, spiral2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 345, Deathvar)})
        CSPlotOrder(spiral1, P7, 55, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 415, Deathvar)})
        CSPlotOrder(spiral2, P6, 56, Hatname, nil, 1, 32, spiral2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 485, Deathvar)})
        
        -- -- Hat1 hatchery phase 2
        CSPlotOrder(square2, P7, 54, Hatname, nil, 1, 32, square2, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 578, Deathvar)})
        CSPlotOrder(square2, P6, 53, Hatname, nil, 1, 32, square2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 613, Deathvar)})
        CSPlotOrder(spiral1, P7, 56, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 640, Deathvar)})
        CSPlotOrder(spiral2, P6, 55, Hatname, nil, 1, 32, spiral2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 691, Deathvar)})
        CSPlotOrder(square2, P6, 39, Hatname, nil, 1, 32, square2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 691, Deathvar)})
        end
    ------ Hat 1 tier
    
    ------ Hat 2 tier
    function HatcheryGunplot2( Hatname, Deathvar)
        Trigger{
            players = {P6},
            conditions = {
                CommandLeastAt(131, Hatname);
            },
            actions = {
                SetDeaths(P10,Add,1,Deathvar);
                PreserveTrigger();
            }
        }
        -- Hat1 hatchery phase 1
        CSPlotOrder(square1, P6, 65, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 50,Deathvar)})
        CSPlotOrder(square1, P7, 66, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 85, Deathvar)})
        CSPlotOrder(square1, P6, 65, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 115, Deathvar)})
        CSPlotOrder(spiral1, P6, 16, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 180, Deathvar)})
        CSPlotOrder(square1, P7, 39, Hatname, nil, 1, 32, square1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 145, Deathvar)})
        
        CSPlotOrder(spiral1, P7, 88, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 275, Deathvar)})
        CSPlotOrder(spiral2, P6, 89, Hatname, nil, 1, 32, spiral2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 345, Deathvar)})
        CSPlotOrder(spiral1, P7, 43, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 415, Deathvar)})
        CSPlotOrder(spiral2, P6, 44, Hatname, nil, 1, 32, spiral2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 485, Deathvar)})
        
        -- -- Hat1 hatchery phase 2
        CSPlotOrder(square2, P7, 51, Hatname, nil, 1, 32, square2, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 578, Deathvar)})
        CSPlotOrder(square2, P6, 52, Hatname, nil, 1, 32, square2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 613, Deathvar)})
        CSPlotOrder(spiral1, P7, 43, Hatname, nil, 1, 32, spiral1, 0, Attack, "HealZone", nil, 0, nil, P7,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 640, Deathvar)})
        CSPlotOrder(spiral2, P6, 56, Hatname, nil, 1, 32, spiral2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 691, Deathvar)})
        CSPlotOrder(square2, P6, 65, Hatname, nil, 1, 32, square2, 0, Attack, "HealZone", nil, 0, nil, P6,{CommandLeastAt(131, Hatname), Deaths(P10, AtLeast, 691, Deathvar)})
        end
        ------ End of hatchery shape plot function 

        --- Lair Plot
        function LairGunplot( Lairname, Deathvar)
            Trigger{
                players = {P6},
                conditions = {
                    CommandLeastAt(132, Lairname);
                },
                actions = {
                    SetDeaths(P10,Add,1,Deathvar);
                    PreserveTrigger();
                }
            }
            ---- 1젠 ----
            CSPlotOrder(LGU1, P6, 39, Lairname, nil, 1, 32, LGU1a, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[1] * SDspeed,Deathvar)})
            CSPlotOrder(LGU2, P6, 51, Lairname, nil, 1, 32, LGU2a, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[1] * SDspeed,Deathvar)})
            CSPlotOrder(LGU3, P6, 46, Lairname, nil, 1, 32, LGU3a, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[1] * SDspeed,Deathvar)})
            CSPlotOrder(LSU, P6, 55, Lairname, nil, 1, 32, LSU, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[1] * SDspeed,Deathvar)})
            CSPlotOrder(LSU2, P6, 44, Lairname, nil, 1, 32, LSU2, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[1] * SDspeed,Deathvar)})
            
            ---2젠
            CSPlotOrder(LGU1, P6, 39, Lairname, nil, 1, 32, LGU1, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[2] * SDspeed,Deathvar)})
            CSPlotOrder(LGU2, P7, 51, Lairname, nil, 1, 32, LGU2, 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[2] * SDspeed,Deathvar)})
            CSPlotOrder(LGU3, P6, 46, Lairname, nil, 1, 32, LGU3, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[2] * SDspeed,Deathvar)})
            CSPlotOrder(LSU, P7, 55, Lairname, nil, 1, 32, LSU, 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[2] * SDspeed,Deathvar)})
            CSPlotOrder(LSU2, P6, 56, Lairname, nil, 1, 32, LSU2, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[2] * SDspeed,Deathvar)})
            --- 3젠
            CSPlotOrder(LGU1, P7, 16, Lairname, nil, 1, 32, LGU1, 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[3] * SDspeed,Deathvar)})
            CSPlotOrder(LGU2, P6, 51, Lairname, nil, 1, 32, LGU2, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[3] * SDspeed,Deathvar)})
            CSPlotOrder(LGU3, P7, 46, Lairname, nil, 1, 32, LGU3, 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[3] * SDspeed,Deathvar)})
            CSPlotOrder(LSU, P6, 55, Lairname, nil, 1, 32, LSU, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[3] * SDspeed,Deathvar)})
            CSPlotOrder(LSU2, P7, 16, Lairname, nil, 1, 32, LSU2, 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[3] * SDspeed,Deathvar)})
            
            ---이펙트
            CSPlot(LSU, P6, 94, Lairname, nil, 1, 20, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[4] * SDspeed,Deathvar)})
            CSPlot(LSU2, P6, 94, Lairname, nil,1, 20, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[5] * SDspeed,Deathvar)})
            CSPlot(LSU3, P6, 94, Lairname, nil, 1, 20, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[6] * SDspeed,Deathvar)})
            CSPlot(LSU4, P6, 94, Lairname, nil, 1, 20, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[7] * SDspeed,Deathvar)})
            CSPlot(LSU5, P6, 94, Lairname, nil, 1, 20, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[8] * SDspeed,Deathvar)})
            ---- 4gen ---
            
            CSPlotOrder(LGU1, P7, 51, Lairname, nil, 1, 32, LGU1, 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[9] * SDspeed,Deathvar)})
            CSPlotOrder(LGU2, P6, 16, Lairname, nil, 1, 32, LGU2, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[9] * SDspeed,Deathvar)})
            CSPlotOrder(LGU3, P7, 46, Lairname, nil, 1, 32, LGU3, 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[9] * SDspeed,Deathvar)})
            CSPlotOrder(LSU, P6, 56, Lairname, nil, 1, 32, LSU, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[9] * SDspeed,Deathvar)})
            CSPlotOrderWithProperties(LSU3, P6, 62, Lairname, nil, 1, 20, LSU3, 0, Attack , Lairname, nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[9] * SDspeed,Deathvar)},nil,0,TempProperties)
            
            ----- effect with unit ------
            CSPlot(sixline, P6, 94, Lairname, nil, 1, 32, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[13] * SDspeed,Deathvar)})
            CSPlotOrderWithProperties(sixline, P6, 44, Lairname, nil, 1, 20, sixline, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[10] * SDspeed,Deathvar)},nil,0,TempProperties)
            
            CSPlot(LGU1, P6, 94, Lairname, nil, 1, 32, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[10] * SDspeed,Deathvar)})
            CSPlotOrderWithProperties(LGU1, P6, 43, Lairname, nil, 1, 20, LGU1, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[11] * SDspeed,Deathvar)},nil,0,TempProperties)
            
            CSPlot(LGU2, P6, 94, Lairname, nil, 1, 32, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[11] * SDspeed,Deathvar)})
            CSPlotOrderWithProperties(LGU2, P6, 44, Lairname, nil, 1, 20, LGU2, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[12] * SDspeed,Deathvar)},nil,0,TempProperties)
            
            CSPlot(LGU3, P6, 94, Lairname, nil, 1, 32, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[12] * SDspeed,Deathvar)})
            CSPlotOrderWithProperties(LGU3, P6, 62, Lairname, nil, 1, 20, LGU3, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[13] * SDspeed,Deathvar)},nil,0,TempProperties)
            
            CSPlot(Eftstar, P6, 94, Lairname, nil, 1, 32, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[14] * SDspeed,Deathvar)})
            CSPlotOrderWithProperties(Eftstar, P6, 43, Lairname, nil, 1, 20, Eftstar, 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(132, Lairname), Deaths(P10, AtLeast, LairTimeline[14] * SDspeed,Deathvar)},nil,0,TempProperties)
            
            end
            ------ End of lair shape plot function 


        ----- Hive Shape Plot
        function HiveGunPlot1lv(Hivename, DeathVar)
            Trigger {
                players = {P6},
                conditions = {
                    CommandLeastAt(133, Hivename);
                },
                actions = {
                    SetDeaths(P10, Add, 1, DeathVar);
                    PreserveTrigger()
                },
            }
            Trigger2(P6, {Deaths(P10, AtLeast, 1, 10)})
            CAPlot(CS_SortR(HiveEtf1,1),P6,84,Hivename,nil,1,32,{1,0,0,0,HiveEtf1[1]/36,0},nil,P6,{CommandLeastAt(133,Hivename)})

            for i = 1 ,16 do
            Line1 = CSMakeLineX(2,64,90+11*i,17,1)
            CSPlotOrder(Line1,P6,56,Hivename,nil,1,32,Line1,0,Attack, "HealZone",nil,0,nil,P6,{CommandLeastAt(133, Hivename), Deaths(P10, Exactly, HiveGenTime[i] * SDspeed, DeathVar)} )
            end

            for i = 1 ,15 do
            Line2 = CSMakeLineX(2,64,101+11*i,17,1)
            CSPlotWithProperties(Line2, P6, 84, Hivename, nil, 1, 32, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveEftTime[i] * SDspeed, DeathVar)},nil,0,EftProperties)
            end

            CSPlotOrder(Triangle2, P6, 38, Hivename, nil, 1, 20, Triangle2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[1] * SDspeed, DeathVar)})
            CSPlotOrder(Triangle1, P6, 51, Hivename, nil, 1, 20, Triangle1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[1] * SDspeed, DeathVar)})

            CSPlotOrder(LGU3, P6, 16, Hivename, nil, 1, 20, LGU3, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)})
            CSPlotOrder(LGU2, P6, 38, Hivename, nil, 1, 20, LGU2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)})
            CSPlotOrder(LGU1, P6, 48, Hivename, nil, 1, 20, LGU1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)})
            CSPlotOrderWithProperties(Trdline, P6, 69, Hivename, nil, 1, 20, Trdline, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)},nil,0,HiveProperties)

            CSPlotOrder(LGU3, P6, 16, Hivename, nil, 1, 20, LGU3, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)})
            CSPlotOrder(LGU2, P6, 38, Hivename, nil, 1, 20, LGU2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)})
            CSPlotOrder(LGU1, P6, 51, Hivename, nil, 1, 20, LGU1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)})

            CSPlotOrderWithProperties(Trdline2, P6, 62, Hivename, nil, 1, 20, Trdline2, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)},nil,0,HiveProperties)
            CSPlotOrderWithProperties(Trdline, P6, 62, Hivename, nil, 1, 20, Trdline2, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)},nil,0,HiveProperties)

            CSPlotOrder(LGU3, P6, 16, Hivename, nil, 1, 20, LGU3, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)})
            CSPlotOrder(LGU2, P6, 38, Hivename, nil, 1, 20, LGU2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)})
            CSPlotOrder(LGU1, P6, 51, Hivename, nil, 1, 20, LGU1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)})

            CSPlotOrder(Triangle2, P6, 38, Hivename, nil, 1, 20, Triangle2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[16] * SDspeed, DeathVar)})
            CSPlotOrder(Triangle1, P6, 51, Hivename, nil, 1, 20, Triangle1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[16] * SDspeed, DeathVar)})

            for e = 2,8 do
            CSPlotOrder(CS_Rotate(LGU1,10*(e-1)), P7, 84, Hivename, nil, 1, 20, CS_Rotate(LGU1,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU2,10*(e-1)), P6, 84, Hivename, nil, 1, 20, CS_Rotate(LGU2,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU3,10*(e-1)), P7, 84, Hivename, nil, 1, 20, CS_Rotate(LGU3,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})

            CSPlotOrder(CS_Rotate(LGU1,10*(e-1)), P7, 51, Hivename, nil, 1, 20, CS_Rotate(LGU1,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU2,10*(e-1)), P6, 38, Hivename, nil, 1, 20, CS_Rotate(LGU2,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU3,10*(e-1)), P7, 46, Hivename, nil, 1, 20, CS_Rotate(LGU3,10*(e-1)), 0, Patrol , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            end
            Trigger2(P6, {Deaths(P10, AtLeast, (HiveGenTime2[8] * SDspeed) + 5, DeathVar)})
        end
        


        function HiveGunPlot2lv(Hivename, DeathVar)
            Trigger {
                players = {P6},
                conditions = {
                    CommandLeastAt(133, Hivename);
                },
                actions = {
                    SetDeaths(P10, Add, 1, DeathVar);
                    PreserveTrigger()
                },
            }
            Trigger2(P6, {Deaths(P10, AtLeast, 1, 10)})
            CAPlot(CS_SortR(HiveEtf1,1),P6,84,Hivename,nil,1,32,{1,0,0,0,HiveEtf1[1]/36,0},nil,P6,{CommandLeastAt(133,Hivename)})

            for i = 1 ,16 do
            Line1 = CSMakeLineX(2,64,90+11*i,17,1)
            CSPlotOrder(Line1,P6,56,Hivename,nil,1,32,Line1,0,Attack, "HealZone",nil,0,nil,P6,{CommandLeastAt(133, Hivename), Deaths(P10, Exactly, HiveGenTime[i] * SDspeed, DeathVar)} )
            end

            for i = 1 ,15 do
            Line2 = CSMakeLineX(2,64,101+11*i,17,1)
            CSPlotWithProperties(Line2, P6, 84, Hivename, nil, 1, 32, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveEftTime[i] * SDspeed, DeathVar)},nil,0,EftProperties)
            end

            CSPlotOrder(Triangle2, P6, 38, Hivename, nil, 1, 20, Triangle2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[1] * SDspeed, DeathVar)})
            CSPlotOrder(Triangle1, P6, 51, Hivename, nil, 1, 20, Triangle1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[1] * SDspeed, DeathVar)})

            CSPlotOrder(LGU3, P6, 16, Hivename, nil, 1, 20, LGU3, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)})
            CSPlotOrder(LGU2, P6, 38, Hivename, nil, 1, 20, LGU2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)})
            CSPlotOrder(LGU1, P6, 48, Hivename, nil, 1, 20, LGU1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)})
            CSPlotOrderWithProperties(Trdline, P6, 69, Hivename, nil, 1, 20, Trdline, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[5] * SDspeed, DeathVar)},nil,0,HiveProperties)

            CSPlotOrder(LGU3, P6, 16, Hivename, nil, 1, 20, LGU3, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)})
            CSPlotOrder(LGU2, P6, 38, Hivename, nil, 1, 20, LGU2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)})
            CSPlotOrder(LGU1, P6, 51, Hivename, nil, 1, 20, LGU1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)})

            CSPlotOrderWithProperties(Trdline2, P6, 62, Hivename, nil, 1, 20, Trdline2, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[9] * SDspeed, DeathVar)},nil,0,HiveProperties)
            CSPlotOrderWithProperties(Trdline, P6, 62, Hivename, nil, 1, 20, Trdline2, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)},nil,0,HiveProperties)

            CSPlotOrder(LGU3, P6, 16, Hivename, nil, 1, 20, LGU3, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)})
            CSPlotOrder(LGU2, P6, 38, Hivename, nil, 1, 20, LGU2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)})
            CSPlotOrder(LGU1, P6, 51, Hivename, nil, 1, 20, LGU1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[13] * SDspeed, DeathVar)})

            CSPlotOrder(Triangle2, P6, 38, Hivename, nil, 1, 20, Triangle2, 0, Patrol, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[16] * SDspeed, DeathVar)})
            CSPlotOrder(Triangle1, P6, 51, Hivename, nil, 1, 20, Triangle1, 0, Attack, "HealZone", nil,0 , nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime[16] * SDspeed, DeathVar)})

            for e = 2,8 do
            CSPlotOrder(CS_Rotate(LGU1,10*(e-1)), P7, 84, Hivename, nil, 1, 20, CS_Rotate(LGU1,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU2,10*(e-1)), P6, 84, Hivename, nil, 1, 20, CS_Rotate(LGU2,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU3,10*(e-1)), P7, 84, Hivename, nil, 1, 20, CS_Rotate(LGU3,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})

            CSPlotOrder(CS_Rotate(LGU1,10*(e-1)), P7, 51, Hivename, nil, 1, 20, CS_Rotate(LGU1,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU2,10*(e-1)), P6, 17, Hivename, nil, 1, 20, CS_Rotate(LGU2,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P6, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(LGU3,10*(e-1)), P7, 95, Hivename, nil, 1, 20, CS_Rotate(LGU3,10*(e-1)), 0, Patrol , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            CSPlotOrder(CS_Rotate(spiral1,10*(e-1)), P7, 88, Hivename, nil, 1, 20, CS_Rotate(spiral1,10*(e-1)), 0, Attack , "HealZone", nil, 0, nil, P7, {CommandLeastAt(133, Hivename), Deaths(P10, AtLeast, HiveGenTime2[e] * SDspeed,DeathVar)})
            end
            Trigger2(P6, {Deaths(P10, AtLeast, (HiveGenTime2[8] * SDspeed) + 5, DeathVar)})
        end
        ------ End of hive shape plot function 

        ------ Starport plot shape function
        function Starport_GunPlot(Starportname, Deathvar)
            Trigger {
                players = {P6},
                conditions = {
                    CommandLeastAt(114, Starportname);
                },
                actions = {
                    SetDeaths(P10, Add, 1, Deathvar);
                    PreserveTrigger();
                }
            }
            
            for i = 1 , 31 do
            Trigger2(P6, {CommandLeastAt(114, Starportname), Deaths(P10, AtLeast, i, Deathvar)} , {SetMemoryBA(0x657A9C, SetTo, i)})
            end
            
            Trigger2(P6, {CommandLeastAt(114, Starportname),Deaths(P10, Exactly, 2, Deathvar)}, {SetScanImage(972)})
            
            for i = 1, 12, 2 do
            Trigger2(P6, {CommandLeastAt(114, Starportname),Deaths(P10, Exactly, Starport_gen[i] * SDspeed, Deathvar)})
            CSPlot(PA, P6, 33, Starportname, nil, 1, 64, P5, {CommandLeastAt(114, Starportname),Deaths(P10, AtLeast, Starport_gen[i] * SDspeed, Deathvar)})
            CSPlotOrder(PA, P6, 3, Starportname, nil, 1, 64, PAA, 0, Attack, "HealZone",nil , 0, nil, P6, {CommandLeastAt(114, Starportname),Deaths(P10, AtLeast, Starport_gen[i] * SDspeed, Deathvar)})
            CSPlotOrder(PB, P6, 66, Starportname, nil, 1, 64, PBA, 0, Patrol, "HealZone",nil , 0, nil, P6, {CommandLeastAt(114, Starportname),Deaths(P10, AtLeast, Starport_gen[i] * SDspeed, Deathvar)})
            CSPlotOrder(PC, P6, 65, Starportname, nil, 1, 64, PCA, 0, Patrol, "HealZone",nil , 0, nil, P6, {CommandLeastAt(114, Starportname),Deaths(P10, AtLeast, Starport_gen[i] * SDspeed, Deathvar)})
            end
            for e = 2, 12, 4 do
            Trigger2(P6, {CommandLeastAt(114, Starportname),Deaths(P10, Exactly, Starport_gen[e] * SDspeed, Deathvar)})
            CSPlot(PE, P6, 33, Starportname, nil, 1, 64, P5, {CommandLeastAt(114, Starportname), Deaths(P10, Exactly, Starport_gen[e] * SDspeed, Deathvar)})
            CSPlotOrder(PE, P6, 96, Starportname, nil, 1, 32, CSMakePolygon(6,1,0,91,1), 0, Attack, "HealZone",nil , 0, nil, P6, {CommandLeastAt(114, Starportname),Deaths(P10, AtLeast, Starport_gen[e] * SDspeed, Deathvar)})
            end
            
            for r = 4, 12, 4 do
            CSPlot(PE, P6, 33, Starportname, nil, 1, 32, P6, Deaths(P10, AtLeast, Starport_gen[r] * SDspeed,Deathvar))
            CSPlotOrder(PE, P6, 70, Starportname, nil, 1, 32, CSMakePolygon(6,1,0,91,1), 0, Attack, "HealZone",nil , 0, nil, P6, {CommandLeastAt(114, Starportname),Deaths(P10, AtLeast, Starport_gen[r] * SDspeed, Deathvar)})
            end
            Trigger2(P6,{CommandLeastAt(114, Starportname), Deaths(P10, Exactly, Starport_gen[12]* SDspeed + 1, Deathvar)},{SetScanImage(546)} )
        end
        ---------- end of starport shape functions

        function StargateGunplot(stargatename , Deathvar)
            Trigger2(P6, {CommandLeastAt(167, stargatename)}, {SetDeaths(P10, Add, 1, Deathvar)},preserved)
            for i = 0, 3 do
                TriggerX(FP, {CommandLeastAt(167, stargatename)}, {SetAllianceStatus(i, Ally)})
            end
        Trigger2(P6, {Deaths(P10, AtLeast, (StargateGenTime[1] * SDspeed) - 2, Deathvar)})
        for i = 1,8,8 do
        CSPlotWithProperties(LGU1, P8, 65, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU2, P8, 93, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+1] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU3, P8, 66, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+2] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU4, P8, 3, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+3] * SDspeed, Deathvar)},nil,nil,StargateProperties)

        CSPlotWithProperties(SShape1, P8, 89, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+4] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(SShape2, P8, 88, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+5] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(SShape3, P8, 60, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+6] * SDspeed, Deathvar)},nil,nil,StargatePropertiesHero)
        CSPlotOrder(PA, P5, 89, stargatename, nil, 1, 32, CSMakePolygon(6,1,0,61,1), 0, Patrol, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[i+7] * SDspeed, Deathvar)}, {SetScanImage(972)})	
        CSPlotWithProperties(PA, P8, 33, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+7] * SDspeed, Deathvar)},nil,nil,StargateProperties)

        Trigger2(P6,{CommandLeastAt(167, stargatename),Deaths(P10, Exactly, StargateGenTime[i+7] * SDspeed + 1, Deathvar) }, {GiveUnits(All,"Men" , P8, "Anywhere", P5),SetInvincibility(Disable, "Men", P5, "Anywhere"),Order("Men", P5, "Anywhere", Attack, stargatename)})
        end

        for i = 9, 16 ,8 do
        CSPlotWithProperties(EllipseArr[1], P8, 65, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(EllipseArr[2], P8, 66, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+1] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(EllipseArr[3], P8, 69, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+2] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(EllipseArr[4], P8, 95, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+3] * SDspeed, Deathvar)},nil,nil,StargateProperties)

        CSPlotWithProperties(EllipseArr[5], P8, 96, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+4] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(EllipseArr[6], P8, 12, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+5] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(EllipseArr[7], P8, 64, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+6] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(EllipseArr[8], P8, 81, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+7] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlot(SH_Flower, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+7] * SDspeed, Deathvar)})

        Trigger2(P6,{CommandLeastAt(167, stargatename),Deaths(P10, Exactly, StargateGenTime[i+7] * SDspeed + 1, Deathvar) }, {GiveUnits(All,"Men" , P8, "Anywhere", P5),SetInvincibility(Disable, "Men", P5, "Anywhere"),Order("Men", P5, "Anywhere", Attack, stargatename)})
        end
        Trigger2(P6, {Deaths(P10, AtLeast, (StargateGenTime[16] * SDspeed) + 5, Deathvar)}, {SetScanImage(546)})

        Trigger2(P6, {Deaths(P10, AtLeast, (StargateGenTime[17] * SDspeed) - 2, Deathvar)}, {SetScanImage(972)})
        for i = 17, 22, 8 do
        CSPlotWithProperties(LGU4, P8, 65, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU3, P8, 93, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+1] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU2, P8, 66, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+2] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU1, P8, 81, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+3] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        CSPlotOrder(PA, P5, 89, stargatename, nil, 1, 32, CSMakePolygon(6,1,0,61,1), 0, Patrol, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[i+4] * SDspeed, Deathvar)})
        CSPlot(Overlapped, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i+4] * SDspeed, Deathvar)})

        Trigger2(P6,{CommandLeastAt(167, stargatename),Deaths(P10, Exactly, StargateGenTime[i+4] * SDspeed + 1, Deathvar) }, {GiveUnits(All,"Men" , P8, "Anywhere", P5),SetInvincibility(Disable, "Men", P5, "Anywhere"),Order("Men", P5, "Anywhere", Attack, stargatename)})
        end
        Trigger2(P6, {Deaths(P10, AtLeast, (StargateGenTime[21] * SDspeed) + 5, Deathvar)})

        CSPlotOrder(PA, P5, 96, stargatename, nil, 1, 32, CSMakePolygon(6,1,0,61,1), 0, Patrol, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[22] * SDspeed, Deathvar)})
        Trigger2(P6, {Deaths(P10, AtLeast, (StargateEftTime[1] * SDspeed)-5, Deathvar)},{SetScanImage(977)})
        Trigger2(P6, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateEftTime[1] * SDspeed, Deathvar)},
        {SetMemoryBA(0x657A9C, SetTo, 8)})
        Trigger2(P6, {Deaths(P10, AtLeast, (StargateEftTime[1] * SDspeed) + 5, Deathvar)},{SetScanImage(978)})
        Trigger2(P6, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateEftTime[2] * SDspeed, Deathvar)},
        {SetMemoryBA(0x657A9C, SetTo, 31)})



        CSPlot(StargateEft, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, Exactly, StargateEftTime[1] * SDspeed , Deathvar)})
        CSPlot(StargateEft, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, Exactly, StargateEftTime[2] * SDspeed , Deathvar)})

        CSPlot(StargateEft, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[23] * SDspeed, Deathvar)})

        CSPlotOrder(Cross1, P5, 66, stargatename, nil, 1, 32, CSMakePolygon(6,1,0,46,0), 0, Patrol, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[23] * SDspeed, Deathvar)},{SetScanImage(546)})	
        CSPlotOrder(Cross, P5, 65, stargatename, nil, 1, 32, CSMakePolygon(6,1,0,46,0), 0, Patrol, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[23] * SDspeed, Deathvar)})	
        CSPlotOrder(Shape3, P5, 88, stargatename, nil, 1, 32, CSMakePolygon(6,1,0,54,24), 0, Patrol, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[23] * SDspeed, Deathvar)})	
        CSPlotOrder(PA, P5, 89, stargatename, nil, 1, 32, PAA, 0, Attack, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[23] * SDspeed, Deathvar)})	
        Trigger2(P6, {Deaths(P10, AtLeast, (StargateGenTime[23] * SDspeed) + 5, Deathvar)})

        CSPlotOrder(PA, P6, 88, stargatename, nil, 1, 64, PAA, 0, Patrol, "HealZone",nil , 0, nil, P6, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[24] * SDspeed, Deathvar)})

        ---- after effects ---

        CSPlotWithProperties(LGU1, P8, 65, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed-1, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU2, P8, 93, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed-1, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU3, P8, 66, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed-1, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(LGU4, P8, 81, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed-1, Deathvar)},nil,nil,StargateProperties)

        CSPlotWithProperties(SShape1, P8, 89, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed-1, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(SShape2, P8, 88, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed-1, Deathvar)},nil,nil,StargateProperties)
        CSPlotWithProperties(SShape3, P8, 60, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed-1, Deathvar)},nil,nil,StargatePropertiesHero)
        CSPlotOrder(PB, P5, 89, stargatename, nil, 1, 32, CSMakePolygon(6,1,0,37,1), 0, Patrol, "HealZone",nil , 0, nil, P5, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed, Deathvar)})	
        CSPlotWithProperties(PB, P8, 33, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[25] * SDspeed, Deathvar)},nil,nil,StargateProperties)
        Trigger2(P6,{CommandLeastAt(167, stargatename),Deaths(P10, Exactly, StargateGenTime[25] * SDspeed,Deathvar) }, {GiveUnits(All,"Men" , P8, "Anywhere", P5),SetInvincibility(Disable, "Men", P5, "Anywhere"),Order("Men", P5, "Anywhere", Attack, stargatename)})
        Trigger2(P6, {Deaths(P10, AtLeast, (StargateGenTime[25] * SDspeed) + 1, Deathvar)})

        ---- 2nd effects ----

        Trigger2(P6, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateEftTime[3] * SDspeed - 1,Deathvar)}, {SetScanImage(213)})
        CSPlot(SH_Flower, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateEftTime[3] * SDspeed, Deathvar)})
        CSPlot(Eftstar, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateEftTime[4] * SDspeed, Deathvar)})
        Trigger2(P6, {CommandLeastAt(167, stargatename),Deaths(P10, AtLeast, StargateEftTime[4] * SDspeed + 1,Deathvar)})


        ---- after 2nd effects ----

        Trigger2(P6, {Deaths(P10, AtLeast, (StargateGenTime[27] * SDspeed) - 2, Deathvar)}, {SetScanImage(971)})
        CSPlot(Eftstar, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateEftTime[4] * SDspeed, Deathvar)})
        CSPlot(Eftstar, P6, 64, stargatename, nil, 1, 32, P7,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[26] * SDspeed, Deathvar)})
        for i = 27,27 do
            CSPlotWithProperties(EllipseArr[1], P8, 65, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)
            CSPlotWithProperties(EllipseArr[2], P8, 66, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)
            CSPlotWithProperties(EllipseArr[3], P8, 69, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)
            CSPlotWithProperties(EllipseArr[4], P8, 95, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)

            CSPlotWithProperties(EllipseArr[5], P8, 96, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)
            CSPlotWithProperties(EllipseArr[6], P8, 12, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)
            CSPlotWithProperties(EllipseArr[7], P8, 84, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)
            CSPlotWithProperties(EllipseArr[8], P8, 81, stargatename, nil, 1, 64, P8, {CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed - 1, Deathvar)},nil,nil,StargateProperties)
            CSPlot(SH_Flower, P6, 33, stargatename, nil, 1, 32, P6,{CommandLeastAt(167, stargatename), Deaths(P10, AtLeast, StargateGenTime[i] * SDspeed, Deathvar)})

            Trigger2(P6, {CommandLeastAt(167, stargatename),Deaths(P10, Exactly, StargateGenTime[i] * SDspeed + 1, Deathvar)},{GiveUnits(All,"Men" , P8, "Anywhere", P5),SetInvincibility(Disable, "Men", P5, "Anywhere"),Order("Men", P5, "Anywhere", Attack, stargatename), SetScanImage(546)})
            for i = 0, 3 do 
                TriggerX(FP, {CommandLeastAt(167, stargatename)}, {SetAllianceStatus(i, Enemy)})
            end
            
        end
        TriggerX(P6, {CommandLeastAt(167, stargatename),Deaths(P10, Exactly, StargateGenTime[27] * SDspeed + 100, Deathvar)},{Order("Men", P5, stargatename, Attack, "HealZone")})
        end
        for i = 1, 6 do -- 1 ~ 6
            HatcheryGunplot1("hat"..i,i);
        end
        for i = 7 , 10 do -- 7 ~ 10
            HatcheryGunplot2("hat"..i,i);
        end
        for i = 1 , 12 do -- 11 ~ 22
            LairGunplot("lair"..i, i + 10);
        end
        for i = 1 , 4 do -- 23 ~ 26
            HiveGunPlot1lv("hive"..i, i + 22);
        end
        for i = 5, 10 do -- 27 ~ 32
            HiveGunPlot2lv("hive"..i, i + 22);
        end
        for i = 1 , 10 do -- 33 ~ 42
            Starport_GunPlot("starp"..i, i + 32);
        end
        for i = 1 , 10 do -- 43 ~ 52
            StargateGunplot("starg"..i,  i + 42);
        end
end