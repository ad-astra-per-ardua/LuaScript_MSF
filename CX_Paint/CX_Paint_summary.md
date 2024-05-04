# CX Paint를 배우면서 pptx자료 이리저리 왔다갔다 하기 귀찮기때문에 한번에 parameter등을 정리한 글.
## CX Paint v2.4 , Ctrig Assembler v5.5 used. Made by Ninfia

# Initializing
예제맵.scx를 열고 TEP 3.0 실행후, 그 안에 있는 trigger를 모두 없애고 동봉되어있는 예제맵 Trig안의 내용을 붙여넣는다

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/b59a4ffb-8ddb-4f81-afa6-1f1d8bbb7897)

그리고 F5를 눌러서 SCM에서 Compile을 하고 EUD Editor등으로 한번더 컴파일을 하고 EUD Compile을 완료한 맵을 실행해서 예제 코드를 확인하면됨.

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/c7873643-607c-4627-a30a-ea0221fab4e5)

플러그인은 이렇게 하면될듯 

# Chapt 1
Shape 및 Path 데이터 구조

점(point) 데이터 : {X좌표 , Y좌표} : 좌표값은 실수로 저장됨.
Data parameter = {점의 총 갯수(n),{X1,Y1},{X2,Y2}, ... ,{Xn,Yn}} (If shape가 n개의 점으로 구성된 경우)
Ex) 

```lua
--- 예제 1-1
local Shape1 = {5,{0,0},{32,32},{-32,32},{-32,-32},{32,-32}} -- X자 모양 점 5개

CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성
```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/03487766-4322-41e3-9635-795b228bcb4e)

- CS Paint 작동 순서 : CSMake (도형생성), CS_(편집), CSPlot(Trigger 변환) or CSSave(파일로 Export)

```lua
--- 예제 1-2
local Shape1 = {5,{0,0},{32,32},{-32,32},{-32,-32},{32,-32}} -- X자 모양 점 5개

table.remove(Shape1,2) -- {0,0} 삭제
Shape1[1] = Shape1[1] - 1 -- 점 갯수 1 감소

CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성

table.insert(Shape1,{64,0}) -- 마름모 모양 점 4개 추가
table.insert(Shape1,{-64,0}) --
table.insert(Shape1,{0,64}) --
table.insert(Shape1,{0,-64}) --
Shape1[1] = Shape1[1] + 4 -- 점 갯수 4 증가

CSPlot(Shape1,P1,54,"Location 2",nil,1,32,P1) -- 유닛 생성
```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/b06826d0-c6fc-4bd9-8ce5-0ebee6cfe9b9)

# Chapt 2
1. CSMake function (shape 생성)

- CSMakePath(PathData, ...),CSMakePathX(Ratio, PathData, ... )
  점들을 묶어 Path 데이터로 만듦. (사용자 정의 도형 드로잉)
  - PathData = Point 데이터 배열 : {{X1,Y1}, {X2,Y2}, ... {Xn,Yn}}
  - ... (가변인자) : Point 데이터 (PathData에 자동으로 합쳐짐)
  - Ratio : CSMakePathX 함수 전용 : X,Y좌표 확대 배율 설정 = {X배율 , Y배율} or 공통배율 - Default 1

```lua
---예제 2-1
Shape1 = CSMakePath({-160,0},{64,0},{64,64},{160,-32},{64,-128},{64,-64},{-160,-64}) -- →모양 Path

CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성

---예제 2-2
local Temp1 = {}
for i = 0, 20 do
	table.insert(Temp1,{i,i^2/16})
end
Shape1 = CSMakePathX(32,Temp1) -- y = x^2/16 Graph모양 Path(x=0~20,x간격1) + 32배 확대  

CSPlot(Shape1,P1,54,"Location 2",nil,1,32,P1) -- 유닛 생성
```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/78fc761c-af66-4913-874f-b37502f57331)

2. CSMakePolygon(Point, Radius, Angle, Number, Hollow)
   CSMakePolygonX(Point, Radius, Angle, Number, Hollow)
   : 정 N다각형 Shape 데이터를 생성, 가장 흔히사용
   - Point : 변의 갯수 (N각형 결정)
   - Radius : 도형의 크기 (각 Layer사이의 거리)
   - Angle : 도형이 회전한 각도
   - Number : Shape에 따라 찍을 점의 갯수 이것에 따라 Layer의 층이 결정된다.
   - Hollow : 내부에서 지울 점의 갯수 (실제로 생성되는 점의 갯수는 Number - Hollow 이며, 원점부터 Hollow 개 만큼 지워진다.)
  **점의 갯수를 어떻게 알지?**
     정n각형 Layer k층의 Number 값을 알고싶다.
     : 초항은 n이고, 공차는 n을 갖는 등차수열이므로 등차수열의 합공식을 사용하면 된다
     Thus, {k(k+1) * n} / 2 + 1(원점)
     Number에 이 식을 계산해서 대입하면 딱맞는 number를 가지는 parameter value를 구할수있다.
```lua
---예제 2-3
Shape1 = CSMakePolygon(6,64,0,37,1) -- 6각형 (k=0, 1, 2, 3, ...)

CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakePolygonX(6,64,30,54,0) -- 6각형 (k=1, 3, 5, ...)

CSPlot(Shape1,P1,54,"Location 2",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakeStar(6,180,64,0,73,1) -- 6각형 (k=0, 2, 4, 6, ...)

CSPlot(Shape1,P1,54,"Location 3",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakeStarX(6,180,64,30,108,0) -- 6각형 (k=2, 6, 10, ...)

CSPlot(Shape1,P1,54,"Location 4",nil,1,32,P1) -- 유닛 생성
```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/cc3e0f1b-de35-4b35-b737-ce3ba6df4bf2)

3. CSMakeCircle(Point, Radius, Angle, Number, Hollow)
   CSMakeCircleX(Point, Radius, Angle, Number, Hollow)
   : 정N다각형에 외접한 원 모양의 Shape 데이터를 생성함.
```lua
Shape1 = CSMakeCircle(6,64,0,37,1) -- 6각형 (외접원)

CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakeCircleX(6,64,30,54,0) -- 6각형 (외접원)

CSPlot(Shape1,P1,54,"Location 2",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakeLine(6,64,0,19,1) -- 6각형 (방사형)

CSPlot(Shape1,P1,54,"Location 3",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakeLineX(6,64,30,18,0) -- 6각형 (방사형)

CSPlot(Shape1,P1,54,"Location 4",nil,1,32,P1) -- 유닛 생성
```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/23846acc-4afb-427a-a9fb-f0cb91983607)

4. CSMakeStar(Point, StarAngle, Radius, Angle, Number, Hollow)
   CSMakeStarX(Point, StarAngle, Radius, Angle, Number, Hollow)
   : n방향으로 뻗어나가는 선의 Shape 데이터를 생성함.
   - Point : 변의 갯수(2 >= n) 자동으로 2n 각형으로 입력됨
   - Radius : 도형의 크기 (각 Layer의 거리)
   - Angle : 도형의 회전각
   - Number : 도형에 찍을 점의 갯수
   - Hollow : 내부에서부터 지울 점의 갯수 (* X함수의 경우 원점이 아닌 1번째 Layer부터 시작함)
   - StarAngle : 변의 중점에서 꺾을 각도의 크기 (외각을 기준으로함)
       - 숫자 입력시 각도로, {숫자}로 입력시 감소시킬 내부 반지름(원점에서 중점까지의 거리)의 길이로 입력됨.
       - Angle이 180일경우 Polygon과 동일하나 k = 0부터 시작, 2씩 증가하는 형태의 정N다각형을 그릴수 있다.
       - Number와 Hollow 수치 입력시 정2n각형의 점 갯수를 고려하여 입력해야

```lua
--- 예제 2-5
Shape1 = CSMakeStar(5,108,64,0,61,1) -- 5각별

CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakeStarX(5,108,64,36,90,0) -- 5각별

CSPlot(Shape1,P1,54,"Location 2",nil,1,32,P1) -- 유닛 생성
```

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/e488007e-ac6a-4f59-8564-9f2eb73c37df)

5. CSMakeLine(Point, Radius, Angle, Number, Hollow)
   CSMakeLineX(Point, Radius, Angle, Number, Hollow)
   : n 방향으로 뻗어나가는 선의 Shape 데이터를 생성
   - Point : 변의 갯수 | n=1 : 반직선, n=2 : 직선, n>=3 n방향 반직선
   - Radius : 도형의 크기 (각 Layer 사이의 거리)
   - Angle : 도형의 회전각
   - Number : 도형에 찍을 점의 갯수
   - Hollow : 내부에서부터 지울 점의 갯수 (X함수의 경우 원점이 아닌 첫번째 껍질부터 시작함)
```lua

shape1 = CSMakeLine(1,64,0,19,0)

CSPlot(Shape1, P1,54,"Location 1",nil,1,32,P1)


shape1 = CSMakeLine(2,64,0,19,0)

CSPlot(Shape1, P1,54,"Location 2",nil,1,32,P1)


Shape1 = CSMakeLine(3,64,0,19,1)

CSPlot(Shape1,P1,54,"Location 3",nil,1,32,P1) -- 유닛 생성


Shape1 = CSMakeLineX(3,64,45,18,0)

CSPlot(Shape1,P1,54,"Location 4",nil,1,32,P1) -- 유닛 생성

```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/d46f408b-fe14-411e-9d4c-5698e014da85)

6. CSMakeGraphX(Ratio, funcY, Start, Direction, StepSize, StepRange, Number)
   CSMakeGraphY(Ratio, funcY, Start, Direction, StepSize, StepRange, Number)
   : 직교좌표계 함수의 등간격 그래프 곡선의 Path 데이터를 생성함
   - Ratio : X ,Y 좌표 확대 배율 설정 = {X배율, Y배율} or 공통배율 | Default 1
   - funcY : Y = f(x) 연산함수의 이름 (String으로 입력)
   - funcX : X = f(y) 연산함수의 이름 (String으로 입력)
   - Start : 그리기를 시작할 X좌표/ Y좌표
   - Direction : X좌표 / Y좌표 증가시킬 방향 (0 : +방향, 1 : -방향)
   - StepSize : 점 사이 간격 크기 설정
   - StepRange : 등간격 좌표 탐색 최대범위. Default StepSize 값으로 입력됨
   - Number : 점의 갯수

```lua
--- 예제 2-6
function Shape1_FuncY(X) return X^3-25*X end
Shape1 = CSMakeGraphX({32,8},"Shape1_FuncY",-6,0,1,0.5,320) -- y = x^3 - 25x
CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성

function Shape1_FuncX(Y) return Y^2/4 end
Shape1 = CSMakeGraphY({16,32},"Shape1_FuncX",6,1,0.5,nil,128) -- x= y^2/4
CSPlot(Shape1,P1,54,"Location 2",nil,1,32,P1) -- 유닛 생성

```

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/2b5f570c-5897-495d-953b-14327bd18a78)

7. CSMakeGraphA(Ratio,funcR,Start,Direction,StepSize,StepRange,Number)
   CSMakeGraphR(Ratio,funcA,Start,Direction,StepSize,StepRange,Number)
  : 극좌표계 함수의 등간격 그래프 곡선의 Path 데이터를 생성함
  - Ratio : X,Y좌표 확대 배율 설정 = {X배율,Y배율} or 공통배율 - 비워둘 경우 1로 입력됨
  - (A함수)funcR : R=f(Θ) 연산 함수의 이름 (String으로 입력)
  - (R함수)funcA : Θ=f(R) 연산 함수의 이름 (String으로 입력)
  - Start : 그리기 시작할 Θ좌표(A함수)/R좌표(R함수)
  - Directrion : Θ좌표(A함수)/R좌표(R함수) 증가시킬 방향 (0 : +방향/1 : -방향)
  - StepSize : 점 사이 간격 크기 설정
  - StepRange : 등간격 좌표 탐색 최대 탐색범위 - 비워둘 경우 2π(A함수), StepSize(R함수)로 입력됨
  - Number : 찍을 점의 총 개수

```lua
function Shape1_FuncR(A) return A*2 end
Shape1 = CSMakeGraphA(32,"Shape1_FuncR",0,0,1,nil,100) -- r = 2Θ
CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성

function Shape1_FuncA(R) return math.sin(R) end
Shape1 = CSMakeGraphR(32,"Shape1_FuncA",0,0,0.5,nil,100) -- Θ = sin(r)
CSPlot(Shape1,P1,54,"Location 2",nil,1,32,P1) -- 유닛 생성

```

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/6ef62383-605d-4315-af46-08663ae2df1d)

8. CSMakeGraphT(Ratio,Parafunc,Start,Direction,StepSize,StepRange,Number)
  : 2D매개변수 함수의 등간격 그래프 곡선의 Path 데이터를 생성함
  - Ratio : X,Y좌표 확대 배율 설정 = {X배율,Y배율} or 공통배율 - 비워둘 경우 1로 입력됨
  - Parafunc : X=f(t), Y=g(t) 연산 함수의 이름 (String으로 입력)
  - Start : 그리기 시작할 t좌표
  - Directrion : t좌표 증가시킬 방향 (0 : +방향/1 : -방향)
  - StepSize : 점 사이 간격 크기 설정
  - StepRange : 등간격 좌표 탐색 최대 탐색범위 - 비워둘 경우 StepSize로 입력됨
  - Number : 찍을 점의 총 개수
  ※ A,R,T 함수의 경우 등간격 연산이 부정확 할 수 있으므로 경우에 맞춰서 StepRange값을 조정해줘야함
  
  ※ 사용자 정의 연산 함수 제작 및 입력 방법
  function S1_funcY(X) return -X end → "S1_funcY" 입력 (y=-x)
  function S1_funcX(Y) return -Y end → "S1_funcX" 입력 (x=-y)
  function S1_funcR(A) return -A end → "S1_funcR" 입력 (r=-Θ)
  function S1_funcA(R) return -R end → "S1_funcA" 입력 (Θ=-r)
  function S1_Parafunc(T) return {-T,T} end → "S1_Parafunc(T)" 입력 (x=-t,y=t)

```lua
function Shape1_Parafunc(T) return {T*math.sin(T),T} end
Shape1 = CSMakeGraphT({16,32},"Shape1_Parafunc",0,0,1,10,100) -- x = tsint(t), y=t
CSPlot(Shape1,P1,54,"Location 1",nil,1,32,P1) -- 유닛 생성

```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/9f484ed6-3033-4623-8ae2-fb18963c8b60)




