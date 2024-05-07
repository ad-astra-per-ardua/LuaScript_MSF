# Chapt 4. CSPlot 함수 (Convert to Trigger)

CSPlot 함수는 도형데이터를 유닛 생산 트리거로 변환할 수 있습니다 <br>
1. CSPlot(Shape, Owner, UnitId, Location, CenterXY, PerUnit, PlotSize, PlayerID, Condition, Action, Preserve) <br>
CSPlotWithProperties(Shape, Owner, UnitId, Location, CenterXY, PerUnit, PlotSize, PlayerID, Condition, Action, Preserve, Properties) <br>
: Shape 데이터를 유닛 생성 트리거로 변환하는 함수
- Shape : 변환할 도형 데이터
- Owner : 유닛의 소유플레이어
- UnitId : 생성할 유닛의 종류 (유닛이름 String)
- Location : 사용할 로케이션 ID (로케이션이름 String)
- CenterXY : 유닛을 생성할 중심좌표 = {X좌표,Y좌표} - 비우면 로케이션의 현재 위치를 중심으로 설정함
- PerUnit : 한 점당 생성할 유닛 수
- PlotSize : 생성시 로케이션의 크기
- PlayerID : 트리거 플레이어
- Condition : 트리거의 조건
- Action : 생성후 실행할 액션
- Preserve : 트리거에 Preserve 옵션을 넣을지의 여부 (0입력시 반복X, 1입력시 반복O) - 비우면 0입력
(WithProperties함수) : Properties 속성을 입력함 - CreateUnitWithProperties와 동일

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/14c2f8cd-cdae-497f-8685-86820a50f13c)

```lua
CSPlot(SnowFlake,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성 함수
CSPlotWithProperties(SnowFlake,P1,54,"Location 2",nil,1,32,P1,nil,nil,nil,{
			clocked = false,
			burrowed = true,
			intransit = false,
			hallucinated = true,
			invincible = true,
			hitpoint = 100,
			shield = 100,
			energy = 100,
			resource = 0,
			hanger = 0,
		}) -- 특수 유닛 생성 함수
```

2. CSPlotAct(Shape, Owner, UnitId, Location, CenterXY, PerUnit, PlotSize, SizeofLoc, PerAction, PlayerID, Condition, Action, Preserve) <br>
CSPlotActWithProperties(Shape, Owner, UnitId, Location, CenterXY, PerUnit, PlotSize, SizeofLoc, PerAction, PlayerID, Condition, Action, Preserve, Properties) <br>
: Shape 데이터를 유닛 생성 트리거로 변환하는 함수 + 유닛 생성시마다 PerAction을 실행함
- Shape : 변환할 도형 데이터
- Owner : 유닛의 소유플레이어
-UnitId : 생성할 유닛의 종류 (유닛이름 String)
- Location : 사용할 로케이션 ID (로케이션이름 String)
- CenterXY : 유닛을 생성할 중심좌표 = {X좌표,Y좌표} - 비우면 로케이션의 현재 위치를 중심으로 설정함
- PerUnit : 한 점당 생성할 유닛 수
- PlotSize : 생성시 로케이션의 크기
- SizeofLoc : PerAction 실행시 로케이션의 크기
- PerAction : 유닛 생성시마다 실행할 액션
- PlayerID : 트리거 플레이어
- Condition : 트리거의 조건
- Action : 생성후 실행할 액션
- Preserve : 트리거에 Preserve 옵션을 넣을지의 여부 (0입력시 반복X, 1입력시 반복O) - 비우면 0으로 입력
(WithProperties함수) : Properties 속성을 입력함 - CreateUnitWithProperties와 동일

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/9d8e01b6-fcec-47f0-b82f-327768d22346)

```lua
CSPlotAct(SnowFlake,P1,54,"Location 1",nil,1,32,0,{SetResources(P1,Add,1,Ore)},P1) 
-- 유닛 생성당 미네랄 1 증가
CSPlotActWithProperties(SnowFlake,P1,54,"Location 2",nil,1,32,0,
{SetResources(P1,Add,1,Gas)},P1,nil,nil,nil,{
			clocked = false,
			burrowed = true,
			intransit = false,
			hallucinated = true,
			invincible = true,
			hitpoint = 100,
			shield = 100,
			energy = 100,
			resource = 0,
			hanger = 0,
		}) -- 유닛 생성당 가스 1 증가
```

3. SPlotOrder(Shape, Owner, UnitId, Location, CenterXY, PerUnit, PlotSize, OrderShape, Direction, OrderType, OrderLocation, DestXY, SizeofLoc, PerAction, PlayerID, Condition, Action, Preserve) <br>
CSPlotOrderWithProperties(Shape, Owner, UnitId, Location, CenterXY, PerUnit, PlotSize, OrderShape, Direction, OrderType, OrderLocation, DestXY, SizeofLoc, PerAction, PlayerID, Condition, Action, Preserve, Properties) <br>
: Shape 데이터를 유닛 생성 트리거로 변환하는 함수 + 각 유닛마다 OrderShape으로 Order명령을 내림 <br>
- Shape : 변환할 도형 데이터
- Owner : 유닛의 소유플레이어
- UnitId : 생성할 유닛의 종류 (유닛이름 String)
- Location : 사용할 로케이션 ID (로케이션이름 String)
- CenterXY : 유닛을 생성할 중심좌표 = {X좌표,Y좌표} - 비우면 로케이션의 현재 위치를 중심으로 설정함
- PerUnit : 한 점당 생성할 유닛 수
- PlotSize : 생성시 로케이션의 크기
- OrderShape : 목적지로 설정할 도형 데이터
- Direction : 0입력시 순서대로, 1입력시 역순으로 도착지를 설정함
- OrderType : 명령의 종류 = Attack, Patrol, Move
- OrderLocation : Order명령에 사용할 로케이션 (로케이션이름 String)
- DestXY : 도착지의 중심좌표 = {X좌표,Y좌표} - 비우면 OrderLocation의 현재위치를 중심으로 설정함
- SizeofLoc : PerAction 실행시 로케이션의 크기
- PerAction : 유닛 생성시마다 실행할 액션
- PlayerID : 트리거 플레이어
- Condition : 트리거의 조건
- Action : 생성후 실행할 액션
- Preserve : 트리거에 Preserve 옵션을 넣을지의 여부 (0입력시 반복X, 1입력시 반복O) - 비우면 0으로 입력
(WithProperties함수) : Properties 속성을 입력함 - CreateUnitWithProperties와 동일

![SCScrnShot_050724_191712](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/9b36c07e-a410-43c0-a23c-3f81fda03c83)
![SCScrnShot_050724_191704](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/9ac82ef6-68c1-4564-9777-e18cc790ed22)

```lua
Line1 = CSMakeLine(1,32,90,24,0)
CSPlotOrder(Line1,P1,54,"Location 1",nil,1,16,Line1,nil,Patrol,"Location 6",nil,0,nil,P1) -- 그대로 내려옴

CSPlotOrder(Line1,P1,54,"Location 2",nil,1,16,CS_Reverse(Line1),nil,Patrol,"Location 7",nil,0,nil,P1) -- 역순으로 내려옴 (X자 진행)
CSPlotOrder(Line1,P1,54,"Location 3",nil,1,16,CS_Shuffle(Line1),nil,Patrol,"Location 8",nil,0,nil,P1) -- 랜덤으로 내려옴 (랜덤 진행)
CSPlotOrder(SnowFlake,P1,54,"Location 4",nil,1,16,CS_Convert(Line1,SnowFlake[1]),nil,Move,"Location 14",nil,16,nil,P1) -- 도형A -> 도형B로 무브
CSPlotOrderWithProperties(SnowFlake,P1,54,"Location 5",nil,1,16,SnowFlake,nil,Move,"Location 15",nil,16,nil,P1,nil,nil,nil,{
			clocked = false,
			burrowed = false,
			intransit = true,
			hallucinated = true,
			invincible = true,
			hitpoint = 100,
			shield = 100,
			energy = 100,
			resource = 0,
			hanger = 0,
		}) -- 특수 유닛 오더 소환
```












