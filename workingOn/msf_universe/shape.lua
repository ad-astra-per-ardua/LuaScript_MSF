LSU = CSMakeLineX(6,64,0,30,0)
LSU2 = CSMakeLineX(6,64,10,30,0)
LSU3 = CSMakeLineX(6,64,20,30,0)
LSU4 = CSMakeLineX(6,64,30,30,0)
LSU5 = CSMakeLineX(6,64,40,30,0)

LGU1 = CSMakePolygonX(6,64,30,6,0)
LGU2 = CSMakePolygonX(6,64,30,24,6)
LGU3 = CSMakePolygonX(6,64,30,54,24)

Eft1 = CSMakeLineX(6,64,10,24,0)
Eft2 = CSMakeLineX(6,64,20,24,0)
Eft3 = CSMakeLineX(6,64,30,24,0)
Eftstar = CSMakeStarX(5,108,64,36,90,0)

square1 = CSMakePolygonX(4,80,0,36,0)
square2 = CSMakePolygonX(4,70,45,36,0)

Shape5 = CSMakePolygon(6,80,0,91,1)
Shape4 = CSMakePolygon(6,80,0,61,1)
Shape3 = CSMakePolygon(6,80,0,37,1)
Shape2 = CSMakePolygon(6,80,0,19,1)
Shape1 = CSMakePolygon(6,80,0,7,0)

Line1 = CSMakeLineX(2,64,0,23,1)
Trdline = CSMakeLineX(3,64,0,28,1)
Trdline2 = CSMakeLineX(3,64,60,28,1)
Triangle1 = CSMakePolygonX(3, 64, 0, 18, 0)
Triangle2 = CSMakePolygonX(3, 64, 0, 61, 18)
Triangle3 = CSMakePolygonX(3, 64, 0, 61, 0)

sixline = CSMakeCircleX(6,64,30,54,0)
spiral1 = CSMakeSpiral(4, 16, 1/1.2, 40, 0, 37, 5)
spiral2 = CSMakeSpiral(4, 16, 1/1.2, 40, 45, 37, 5)
Line1 = CSMakeLineX(2,64,0,23,1)
CSPlotOrder(CS_MoveRA(Line1,0,10),P6,54,"Hive1",nil,1,32,CS_MoveRA(Line1,0,10),0,Attack, "Hive1", {992,1872},0,nil,P6,{CommandLeastAt(133, "Hive1"), Deaths(P10, AtLeast, HiveGenTime[i] * SDspeed, 10)} )


CX2 = CSMakeCircleX(6,80,30,30,0)

HiveGenTime = { 1.79, 2.7, 3.60, 4.57, 5.5, 6.5, 7.5, 8.4, 9.3, 10.2, 11.1, 12, 12.9, 13.8, 14.7, 15.8}
HiveEftTime = {2.22, 3.18, 4.15, 5.07, 6, 7, 7.9 ,8.8 ,9.7,10.6, 11.5, 12.4, 13.3, 14.2, 15.1}
HiveGenTime2 = {16.8, 18.7, 20.5, 22.4, 24.3, 26.1, 28, 29.9}