# Chapt 3. CS_EditFunction(이미지 편집 함수)

CS_ 함수는 Shape, Path 데이터를 편집할 수 있습니다. <br>
- 기본 자유변형 함수 : Move / Rotate / Invert / Ratio / Mirror
1. CS_MoveXY(Shape,X,Y) , CS_MoveRA(Shape, Radius, Angle) <br>
: 도형을 좌표축에 평행이동시킴 <br>
- Shape : 대상 도형 데이터 <br>
- (XY)함수X : (직교좌표) X축 + 방향으로 이동할 거리
- (XY)함수Y : (직교좌표) Y축 + 방향으로 이동할 거리
- (RA함수)Radius : (극좌표) R축 + 방향으로 이동할 거리
- (RA함수)Angle : (극좌표) (Theta)축 + 방향으로 이동할 각도 (degree)

```lua
CSPlot(SnowFlake,P1,54,"Location 1",nil,1,32,P1) -- 원본 도형
CSPlot(CS_MoveXY(SnowFlake,-128,256),P1,54,"Location 2",nil,1,32,P1) -- X : -128, Y : +256 평행이동
CSPlot(CS_MoveRA(SnowFlake,96,30),P1,54,"Location 3",nil,1,32,P1) -- R : +96, Θ : +30 평행이동

```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/ea51cefa-e717-463d-ae40-7439f37fcead)

### MoveRA 함수로 polar coordinate를 조정한 결과
Theta +30 degree 만큼 , Radius를 +96단위 만큼 조정
 
<img width="1280" alt="image" src="https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/8ddc9a8d-b014-4f4b-98ab-c325ad862827">

2. CS_MoveCenter(Shape, X, Y) <br>
도형의 중심을 원하는 좌표로 {X,Y}만큼 평행이동 시킴 <br>
- Shape : 대상 도형 데이터
- X : 도형의 중심으로 설정할 X좌표
- Y : 도형의 중심으로 설정할 Y좌표

```lua
CSPlot(SnowFlake,P1,54,"Location 1",nil,1,32,P1) -- 원본 도형
CSPlot(CS_MoveCenter(SnowFlake,1000,1000),P1,54,"Location 1",nil,1,32,P1) -- 원본 도형을 X좌표 1000, Y좌표 1000 만큼 평행이동 시킴
CSPlot(SnowFlake,P1,53,"Location 1",{1638,1638},1,32,P1) -- 확인
```
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/b31f6a6c-fa02-4260-ae84-8e2194d9405f)

3. CS_Rotate(Shape, Angle), CS_Rotate3D(Shape, XYAngle, YZAngle, ZXAngle) <br>
: 도형을 각도만큼 회전시킴
- Shape : 도형 데이터
- (2D 함수 한정) Angle : 회전할 각도 (degree) - 시계방향 = (+)
- (3D 함수 한정) XYAngle : XY평면에서 회전할 각도 (degree) - 시계방향 = (+)
- (3D 함수 한정) YZAngle : YZ평면에서 회전할 각도 (degree) - 시계방향 = (+)
- (3D 함수 한정) ZXAngle : ZX평면에서 회전할 각도 (degree) - 시계방향 = (+)
+) Z축 좌표데이터는 3D 연산 종료후 자동 소멸됨 <br>
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/8639e351-657e-441f-933e-6ee480d753e4)

4. CS_Kaleidoscope(Shape, Point, StartAngle, Side, Size), CS_KaleidoscopeX(Shape, Point, StartAngle, Side) <br>
: 도형에 (대칭/비대칭) 만화경 효과를 적용함 <br>
1) (일반) StartAngle부터 360 / 2n 까지의 영역을 선대칭 시킨 후 회전대칭 시킴 <br>
2) (X함수) StartAngle부터 360 / 2n 까지의 영역을 회전대칭 시킴 <br>
- Shape : 대상 도형 데이터
- Point : 대칭 시켜 만들 상의 갯수 (일반함수 : 360/2n, X함수 : 360/n을 대칭 영역으로 설정함.)
- StartAngle : 대칭시킬 영역의 시작 각도
- Side : 대칭시킬 영역의 방향 설정 (0: +각의 방향으로 대칭영역 설정 / 1: -각의 방향으로 대칭영역 설정)
- Size : 대칭축의 두께 (대칭축 내부 점은 대칭되지않음)

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/cfbe82aa-3503-4e67-a827-263cf3fac726)

5. CS_Add(Shape, Ratio, PathData, ...) <br>
: 도형에 점 데이터를 추가함. (A + Point) <br>
- Shape : 대상 도형 데이터
- Ratio : X, Y좌표 확대 배율 설정 = {X배율, Y배율} or 공통배율 - Defalut 1
- PathData : Point 데이터 배열 = {{X1, Y1}, {X2, Y2}, ... }
- ... (가변인자) : Point 데이터 (PathData에 자동으로 합쳐짐)

6. CS_Overlap(ShapeA,ShapeB) <br>
: 두 도형을 겹침 (A+B) <br>
- ShapeA : 대상 도형 데이터
- ShapeB : 겹칠 도형 데이터

7. CS_Merge(ShapeA, ShapeB, Size, Priority) <br>
: 두 도형을 합침 (A union B)
- ShapeA : 대상 도형 데이터
- ShapeB : 겹칠 도형 데이터
- Size : 점의 크기 (중복 영역 판정크기와 동일)
- Priority : 중복 제거 우선순위 선택 = (0입력시 B를 지움, 1입력시 A를 지움)

8. CS_Intersect(ShapeA, ShapeB, Size, Priority) <br>
: 두 도형의 겹친 영역만 남김 (A intersect B) - 중복되지 않은 영역은 제거됨.
- ShapeA : 대상 도형 데이터
- ShapeB : 겹칠 도형 데이터
- Size : 점의 크기 (중복 영역 판정크기와 동일)
- Priority : 중복 제거 우선순위 선택 = (0입력시 B를 지움, 1입력시 A를 지움)

9. CS_Subtract(ShapeA, ShapeB, Size) <br>
: 한 도형에서 겹친 영역을 지움 (A - B)
- ShapeA : 대상 도형 데이터
- ShapeB : 겹칠 도형 데이터
- Size : 점의 크기 (중복 영역 판정크기와 동일)

10. CS_Xor(ShapeA,ShapeB,Size) <br>
: 두 도형의 겹친 영역만을 제거하고 합침 {(A union B)-(A intersect B){
- ShapeA : 대상 도형 데이터
- ShapeB : 합칠 도형 데이터
- Size : 점의 크기 (중복 영역 판정크기와 동일)

11. CS_RemoveStack(Shape,Size,Priority) <br>
: 도형 내부에서 겹친 점을 제거함
- Shape : 대상 도형 데이터
- Size : 점의 크기 (중복 영역 판정크기와 동일)
- Priority : 중복제거 순서 우선순위 설정 - (0입력시 앞에서부터 제거, 1입력시 뒤에서부터 제거)

12. CS_OverlapX(…) <br>
: 입력한 도형들을 모두 겹침 (∑(Shape))
- … : 대상 도형 데이터 (다수 입력 가능) <br>

### 기준도형

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/b915cc5a-9640-4cf6-92d3-aba799419daf)

``` lua
Shape2 = CS_FillXY(1,{0,128},{0,128},16,16)
CSPlot(SnowFlake,P1,54,"Location 1",nil,1,32,P1) -- 기준도형 1 = SnowFlake
CSPlot(Shape2,P1,54,"Location 2",nil,1,32,P1) -- 기준도형 2 = 정사각형
```

### CS_ADD()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/f4b0d5d7-4fb2-4fcb-962f-84c11c7c740d)

```lua
CSPlot(CS_Add(SnowFlake,256,{1,1},{-1,1},{-1,-1},{1,-1}),P1,54,"Location 3",nil,1,32,P1) -- 네 꼭짓점 추가
```

### CS_Overlap()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/3c6e3836-fd14-482d-8e19-a92f8f0fbcc2)


```lua
CSPlot(CS_Overlap(SnowFlake,Shape2),P1,54,"Location 4",nil,1,32,P1) -- 도형 겹침
```

### CS_Merge()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/4f87ec85-1f5d-4642-ab5c-b095be1be540)


```lua
CSPlot(CS_Merge(SnowFlake,Shape2,16),P1,54,"Location 5",nil,1,32,P1) -- 도형 합침
```

### CS_Intersect()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/da9ad59e-3436-413f-97b5-60fa90c1c354)


```lua
CSPlot(CS_Intersect(SnowFlake,Shape2,16),P1,54,"Location 6",nil,1,32,P1) -- 도형 공통 영역
```

### CS_Subtract()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/168d5f8f-609e-4c45-a0e4-c16d9a63ccd9)


```lua
CSPlot(CS_Subtract(SnowFlake,Shape2,16),P1,54,"Location 7",nil,1,32,P1) -- 도형 영역 차
```

### CS_Xor()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/a682c200-5f57-40ff-babf-0ec1d2690e8f)


```lua
CSPlot(CS_Xor(SnowFlake,Shape2,16),P1,54,"Location 8",nil,1,32,P1) -- 도형 공통영역 제외 합침
```

### CS_RemoveStack()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/1e083f5a-392f-4a98-814f-8d7f4921e64e)


```lua
CSPlot(CS_RemoveStack(SnowFlake,16),P1,54,"Location 9",nil,1,32,P1) -- 도형 겹침 제거
```

### CS_OverlapX()
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/c024bec9-9caf-4c83-83d1-6f2e9322fc8a)


```lua
S1 = CSMakeLineX(1,56,60,3,0)
S1 = CS_MoveXY(S1,nil,-32*6.5)
S1 = CS_Kaleidoscope(S1,6,-60,1)
S4 = CS_OverlapX(CSMakeStar(6,180,56,30,73,13),CSMakeLineX(6,64,0,9*6,0),S1)
CSPlot(S4,P1,0,"Location 12",nil,1,32,P1)
```

### +) CS_Overlapx + CS_RemoveStack 응용
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/b7e9ff2b-0d3e-42e5-b7d3-7de29a0b0223)

```lua
CSPlot(CS_RemoveStack(S4,16),P1,54,"Location 13",nil,1,32,p1) -- Overlap + RemoveStack 응용
```

13. CS_FillXY(Edge, areaX, areaY, sizeX, sizeY) <br>
: 직교좌표 내부영역을 직각 격자모양으로 칠함 <br>
- Edge : 내부영역의 테두리까지 칠할지 선택 (0 : 안칠함, 1 : 칠함) + Default 1
- areaR : 칠할영역의 R좌표범위 = {Rmin, Rmax} / areaA : 칠할영역의 (Theta) 좌표범위 = {(Theta)min, (Theta)max}
- sizeR : 칠할 점의 R좌표 간격 / sizeA : 칠할 점의 (Theta) 좌표 간격
- (X,Y) ∈ ([Xmin,Xmax],[Ymin,Ymax])인 직사각형 영역이 칠할영역
  
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/daff44ae-7152-479a-b729-4993a0d1c032)

```lua
CSPlot(SnowFlake,P1,0,"Location 1",nil,1,32,P1) -- 원본 도형 + 마린으로 확인

SXmax = CS_GetXmax(SnowFlake) -- X 최댓값
SXmin = CS_GetXmin(SnowFlake) -- X 최솟값
SYmax = CS_GetYmax(SnowFlake) -- Y 최댓값
SYmin = CS_GetYmin(SnowFlake) -- Y 최솟값

CSPlot(CS_FillXY(1,{SXmin,SXmax},{SYmin,SYmax},32,32),P1,54,"Location 1",nil,1,32,P1) -- XY 채우기 + 저글링으로 확인
```
그냥 x,y좌표 최소 ~ x,y,좌표 최대를 전부 fill하는거라고 보면될거같음

14. CS_FillRA(Edge, areaR, areaA, sizeR, sizeA) <br>
: 극좌표 내부영역을 방사형 모양으로 칠함 (원점이 중심) <br>
- Edge : 내부영역의 테두리까지 칠할지 여부 선택 (0: X , 1: O , Default 1)
- areaR : 칠할 영역의 R좌표 범위 = {Rmin, Rmax} / AreaA : 칠할영역의 (Theta)좌표 범위 = {(Theta) min , (Theta) max}
- sizeR : 칠할 점의 R좌표 간격 / sizeR : 칠할 점의 (Theta) 좌표 간격

※ (R,Θ) ∈ ([Rmin,Rmax],[Θmin,Θmax])인 잘린 부채꼴 영역이 칠할영역임

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/86765a2e-a86a-455d-8f6a-2561467b2b7f)

```lua
SXmax = CS_GetXmax(SnowFlake) -- X 최댓값
SXmin = CS_GetXmin(SnowFlake) -- X 최솟값
SYmax = CS_GetYmax(SnowFlake) -- Y 최댓값
SYmin = CS_GetYmin(SnowFlake) -- Y 최솟값
CSPlot(CS_FillRA(1,{0,math.sqrt(SYmax^2+SXmax^2)},{0,360},32,16),P1,54,"Location 2",nil,1,32,P1)
 -- RA 채우기
```
15. CS_FillHX(Edge,areaX,areaY,sizeX,sizeY,Direction) <br>
: 직교좌표 내부영역을 육각 격자모양으로 칠함 
- Edge : 내부영역의 테두리까지 칠할지를 선택 (0입력시 안칠함,1입력시 칠함) - 비우면 1로 입력됨
- areaX : 칠할영역의 X좌표 범위 = {Xmin,Xmax} / areaY : 칠할영역의 Y좌표 범위 = {Ymin,Ymax}
- sizeX : 칠할 점의 X좌표 간격 / sizeY : 칠할 점의 Y좌표 간격
- Direction : 육각 격자를 쌓는 방향 (0 :↓121, 1:↓212, 2:→121, 3:→212) - 비우면 0으로 입력됨
※ (X,Y) ∈ ([Xmin,Xmax],[Ymin,Ymax])인 직사각형 영역이 칠할영역임

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/fae9d7dd-ceca-44ac-bb3e-d9c9ed4e865f)

```lua
CSPlot(SnowFlake,P1,54,"Location 1",nil,1,32,P1) -- 원본 도형

SXmax = CS_GetXmax(SnowFlake) -- X 최댓값
SXmin = CS_GetXmin(SnowFlake) -- X 최솟값
SYmax = CS_GetYmax(SnowFlake) -- Y 최댓값
SYmin = CS_GetYmin(SnowFlake) -- Y 최솟값
CSPlot(CS_FillHx(1,{SXmin,SXmax},{SYmin,SYmax},32,32,0),P1,54,"Location 4",nil,1,32,P1) -- HX 채우기 ↑
CSPlot(CS_FillHX(1,{SXmin,SXmax},{SYmin,SYmax},32,32,1),P1,54,"Location 5",nil,1,32,P1) -- HX 채우기 ↓
CSPlot(CS_FillHX(1,{SXmin,SXmax},{SYmin,SYmax},32,32,2),P1,54,"Location 6",nil,1,32,P1) -- HX 채우기 ←
CSPlot(CS_FillHX(1,{SXmin,SXmax},{SYmin,SYmax},32,32,3),P1,54,"Location 7",nil,1,32,P1) -- HX 채우기 →
```

16. CS_FillRD(Edge,areaX,areaY,sizeX,sizeY,StackSizeX,StackSizeY) <br>
: 직교좌표 내부영역을 무작위로 칠함 (컴파일 할때마다 바뀜)
- Edge : 내부영역의 테두리까지 칠할지를 선택 (0입력시 안칠함,1입력시 칠함) - 비우면 1로 입력됨
- areaX : 칠할영역의 X좌표 범위 = {Xmin,Xmax} / areaY : 칠할영역의 Y좌표 범위 = {Ymin,Ymax}
- sizeX : 칠할 점의 X좌표 간격 / sizeY : 칠할 점의 Y좌표 간격
- StackSizeX : 칠할 점의 중복 방지 X좌표 간격
- StackSizeY : 칠할 점의 중복 방지 Y좌표 간격

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/a5b0f00a-8c19-4aee-a7e9-95426d36a301)

```lua
CSPlot(SnowFlake,P1,54,"Location 1",nil,1,32,P1) -- 원본 도형

SXmax = CS_GetXmax(SnowFlake) -- X 최댓값
SXmin = CS_GetXmin(SnowFlake) -- X 최솟값
SYmax = CS_GetYmax(SnowFlake) -- Y 최댓값
SYmin = CS_GetYmin(SnowFlake) -- Y 최솟값
CSPlot(CS_FillRD(1,{SXmin,SXmax},{SYmin,SYmax},32,32),P1,54,"Location 8",nil,1,32,P1) -- RD 채우기
```

## 총 정리
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/eb6a3604-f4c2-450c-8a3c-ccb2d9368b48)





