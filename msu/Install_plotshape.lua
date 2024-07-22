function Install_plotshape()
    -------- Properties
    TempProperties = {
        clocked = false,
        burrowed = false,
        intransit = false,
        hallucinated = false,
        invincible = false,
        hitpoint = 30,
        shield = 50,
        energy = 0,
        resource = 0,
        hanger = 0,}
    HiveProperties = {
        clocked = false,
        burrowed = false,
        intransit = false,
        hallucinated = false,
        invincible = false,
        hitpoint = 70,
        shield = 50,
        energy = 0,
        resource = 0,
        hanger = 0,
        }
    EftProperties = {
        clocked = false,
        burrowed = false,
        intransit = false,
        hallucinated = false,
        invincible = false,
        hitpoint = 100,
        shield = 100,
        energy = 0,
        resource = 0,
        hanger = 0,
        }
    StargateProperties = {
        clocked = false,
        burrowed = false,
        intransit = false,
        hallucinated = false,
        invincible = true,
        hitpoint = 100,
        shield = 100,
        energy = 0,
        resource = 0,
        hanger = 0,
        } 
    StargatePropertiesHero = {
    clocked = false,
    burrowed = false,
    intransit = false,
    hallucinated = false,
    invincible = true,
    hitpoint = 70,
    shield = 50,
    energy = 0,
    resource = 0,
    hanger = 0,
    }


    JYD = "Set Unit Order To: Junk Yard Dog"
    Gentime = SDspeed * 251
    ExRate = {26,28,30,32}
    ScanInitSetting(Force2,0)



    --------- Plot shape

    HeroShape1 = {4,{32,32},{-32,32},{-32,-32},{32,-32}}
    HeroShape2 = {1, {0,0}}
    -- CSPlot(HeroShape1,P1,54,"Location 1",nil,1,32,P1)
    -- CSPlot(HeroShape2,P1,54,"Location 1",nil,1,32,P1)
    WAVE1 = CSMakePolygon(4,50,0,35,5)
    WAVE2 = CSMakePolygon(4,50,0,20,5)
    WAVE3 = CSMakePolygon(4,50,45,13,5)
    Bigwave1 = CSMakePolygon(6,45,0,50,1)
    Bigwave2 = CSMakeLine(6,80,0,15,0)

    ------ Hat
    square1 = CSMakePolygonX(4,80,0,36,0)
    square2 = CSMakePolygonX(4,70,45,36,0)

    Shape5 = CSMakePolygon(6,80,0,91,1)
    Shape4 = CSMakePolygon(6,80,0,61,1)
    Shape3 = CSMakePolygon(6,80,0,37,1)
    Shape2 = CSMakePolygon(6,80,0,19,1)
    Shape1 = CSMakePolygon(6,80,0,7,0)

    sixline = CSMakeCircleX(6,64,30,54,0)
    spiral1 = CSMakeSpiral(4, 16, 1/1.2, 40, 0, 37, 5)
    spiral2 = CSMakeSpiral(4, 16, 1/1.2, 40, 45, 37, 5)


    CX2 = CSMakeCircleX(6,80,30,30,0)

    ------ Lair
    LSU = CSMakeLineX(6,64,0,30,0)
    LSU2 = CSMakeLineX(6,64,10,30,0)
    LSU3 = CSMakeLineX(6,64,20,30,0)
    LSU4 = CSMakeLineX(6,64,30,30,0)
    LSU5 = CSMakeLineX(6,64,40,30,0)

    LGU1 = CSMakePolygonX(6,64,30,6,0)
    LGU2 = CSMakePolygonX(6,64,30,24,6)
    LGU3 = CSMakePolygonX(6,64,30,54,24)
    LGU4 = CSMakePolygonX(6,64,30,96,54)

    LGU1a = CSMakePolygonX(6,1,30,6,0)
    LGU2a = CSMakePolygonX(6,1,30,24,6)
    LGU3a = CSMakePolygonX(6,1,30,54,24)

    Eft1 = CSMakeLineX(6,64,10,24,0)
    Eft2 = CSMakeLineX(6,64,20,24,0)
    Eft3 = CSMakeLineX(6,64,30,24,0)
    Eftstar = CSMakeStarX(5,108,64,36,90,0)

    ------ Hive
    Line1 = CSMakeLineX(2,64,0,23,1)
    Trdline = CSMakeLineX(3,64,0,28,1)
    Trdline2 = CSMakeLineX(3,64,60,28,1)
    Triangle1 = CSMakePolygonX(3, 64, 0, 18, 0)
    Triangle2 = CSMakePolygonX(3, 64, 0, 61, 18)
    Triangle3 = CSMakePolygonX(3, 64, 0, 61, 0)
    HiveEtf1 = CSMakeSpiral(6, 16, 1/2, 40, 0, 130, 0)
    -- CAPlot(CS_SortR(HiveEtf1,1),P6,33,"Hive3",nil,1,32,{1,0,0,0,HiveEtf1[1]/36,0},nil,P6,{CommandLeastAt(133,"Hive3")})

    ------- Starport
    PA = CSMakePolygon(6,80,0,61,1)
    PB = CSMakePolygon(6,80,0,37,1)
    PC = CSMakePolygon(6,80,0,19,1)
    PD = CSMakePolygon(6,80,0,7,0)
    PE = CSMakePolygon(6,80,0,91,1)

    PAA = CSMakePolygon(6,1,0,61,1)
    PBA = CSMakePolygon(6,1,0,37,1)
    PCA = CSMakePolygon(6,1,0,19,1)
    PDA = CSMakePolygon(6,1,0,7,0)
    PEA = CSMakePolygon(6,1,0,91,1)

    ------- Stargate
    SShape1 = CSMakeCircle(6,64,0,7,1)
    SShape2 = CSMakeCircle(6,64,0,19,7)
    SShape3 = CSMakeCircle(6,64,0,37,19)
    Overlapped = CS_OverlapX(LGU1, LGU2, LGU3, LGU4)
    Overlapped2 = CS_OverlapX(LGU1, LGU2, LGU3, LGU4, SShape1,SShape2,SShape3)
    E_Base = CSMakeCircle(6,30,0,91,61)
    EllipseN = CS_RemoveStack(CS_MoveXY(CS_Distortion(E_Base,{3,0},{3,0},nil,nil),550,0),20)
    EllipseArr = {EllipseN,CS_Rotate(EllipseN,45),CS_Rotate(EllipseN,90),CS_Rotate(EllipseN,135),CS_Rotate(EllipseN,180),CS_Rotate(EllipseN,225),CS_Rotate(EllipseN,270),CS_Rotate(EllipseN,315)}
    SH_Flower = CS_OverlapX(EllipseArr[1],EllipseArr[2],EllipseArr[3],EllipseArr[4],EllipseArr[5],EllipseArr[6],EllipseArr[7],EllipseArr[8])
    Shape3 = CSMakeCircleX(6,120,30,54,24)
    Cross = CSMakeLineX(2,32,0, 46,0)
    Cross1 = CSMakeLineX(2,32,90, 46,0)
    CX2 = CSMakeCircleX(6,80,30,30,0)
    StargateEft = CS_RemoveStack(CS_OverlapX(Shape3, Cross, Cross1,SShape2), 16)

    -------- Plot Timeline
    LairTimeline = {3.0, 5.7, 8.5, 14.1, 14.6, 15.3, 15.7, 16, 17, 19.7, 21.6, 22, 22.3, 22.5 }

    HiveGenTime = { 1.79, 2.7, 3.60, 4.57, 5.5, 6.5, 7.5, 8.4, 9.3, 10.2, 11.1, 12, 12.9, 13.8, 14.7, 15.8}
    HiveEftTime = {2.22, 3.18, 4.15, 5.07, 6, 7, 7.9 ,8.8 ,9.7,10.6, 11.5, 12.4, 13.3, 14.2, 15.1}
    HiveGenTime2 = {16.8, 18.7, 20.5, 22.4, 24.3, 26.1, 28, 29.9}

    Starport_gen = {4.1, 6, 8, 12, 14, 16, 19.8, 21.8, 23.8, 27.7, 29.7, 31.7}

    StargateGenTime = {
        1.9, 2.4, 2.9, 3.4, 3.8, 4.3, 4.8, 5.2, 
        9.6, 10.4, 10.9, 11.4, 11.9, 12.4, 12.9, 13.4, 
        19.1, 19.5, 20, 20.5, 20.9, 
        28.2, 
        32.9, 36.7, 40.5, -- after effects
        48.1, 55.8 -- after 2nd effects
        }
        StargateEftTime = {
        32, 32.4, -- reloading effect
        47.2, 47.6 -- 2nd effects
        }
    -- Lair Eft : 94 | Hive Eft : 84 | SP EFT : 42 | SG EFT : 202 | FT EFT : 11

    -- Cerebrate
    --Circular = CSMakeLineX(1,60,0+15*i,7,1)

    --- Infested Center


    Arc1 = CS_CompassA({128,0},{0,0},{256,0},0,36)
    Arc2 = CS_CompassA({64,0},{0,0},{128,0},0,18)
    Arc3 = CS_CompassA({192,0},{128,0},{256,0},1,18)
    ArcTemp = CS_OverlapX(Arc1,Arc2,Arc3)
    SH_Arc1 = CS_RatioXY(CS_Rotate(CS_FillPathXY(ArcTemp,0,15,15,0),0),7,7)
    SH_Arc2 = CS_RatioXY(CS_Rotate(CS_FillPathXY(ArcTemp,0,15,15,0),90),7,7)
    SH_Arc3 = CS_RatioXY(CS_Rotate(CS_FillPathXY(ArcTemp,0,15,15,0),180),7,7)
    SH_Arc4 = CS_RatioXY(CS_Rotate(CS_FillPathXY(ArcTemp,0,15,15,0),270),7,7)

    Shell_Arc1 = CS_RatioXY(CS_Rotate(ArcTemp, 0),7,7)
    Shell_Arc2 = CS_RatioXY(CS_Rotate(ArcTemp, 90),7,7)
    Shell_Arc3 = CS_RatioXY(CS_Rotate(ArcTemp, 180),7,7)
    Shell_Arc4 = CS_RatioXY(CS_Rotate(ArcTemp, 270),7,7)

    SH_ICenterB = CS_RatioXY(CS_RemoveStack(CS_OverlapX(SH_Arc1,SH_Arc2,SH_Arc3,SH_Arc4),5),7,7)

end