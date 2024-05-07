![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/04ca5f9c-25dc-44a7-9cfb-acf7a8a77365)# Ctrig Assembler v5.5

1. Initial TEP Ctrig Loader code <br>
SetForces({Force1},{Force2},{Force3},{Force4},{Allplayers})<br>
: 맵의 Force1 ~ 4, Allplayers 에 해당하는 플레이어 정보를 입력하는 함수<br>
Force1 : Force1에 해당하는 플레이어들을 입력<br>
Force2 : Force2에 해당하는 플레이어들을 입력<br>
Force3 : Force3에 해당하는 플레이어들을 입력<br>
Force4 : Force4에 해당하는 플레이어들을 입력<br>
AllPlayers : 맵에 존재하는 모든 플레이어들을 입력

2. SetFixedPlayer(Player)<br>
: 맵에서 플레이 도중에 나가지 않고 항상 존재하는 기준 플레이어를 설정함 (NDeaths용)<br>
Player : 맵에 패배하지 않고 항상 남아있는 플레이어를 입력 (컴퓨터 등)

3. StartCtrig(IncludeSTRx,IncludePlayer,NSQC,STRCTRIG,AbsolutePath,CFunc,CStack,LStack)<br>
: CtrigAsm을 시작하는 위치를 표시하는 함수 (Tep 맨 위에 StartCtrig() 입력)<br>
IncludeSTRx : 1입력시 모든 Include 함수를 STRx 단락에 포함시킴 (STRCTRIG 모드에서만 작동,
성능 향상 문제 때문에 1 입력 권장)<br>
- IncludePlayer : 호출형 함수를 삽입할 플레이어를 입력 (미입력시 AllPlayers로 입력됨)<br>
- NSQC : NSQCVArray의 길이를 설정함 (비우거나 0입력시 미사용, 27단원 참고)<br>
- 리턴값 : 생성된 NSQCVArray 배열 (NSQC에 n 입력시 [1] ~ [n]까지 사용가능) <br>
- STRCTRIG : 1입력시 STRCtrigAssembler 사용으로 입력됨 (비우거나 0입력시 미사용으로 입력됨)<br>
- AbsolutePath : 파일의 입출력 경로를 설정함 (CSSave, File I/O에서 사용됨, 비우면 미사용)<br>
※ 절대 경로를 입력, 경로 입력시 윈도우 탐색기의 주소를 복사 한 뒤 \를 \\로 바꿔서 입력<br>
- CFunc : CFunc의 전달 인자의 최대갯수를 설정함 (기본값 16)<br>
- CStack : CStack의 스택 최대값을 설정함 (기본값 64)<br>
- LStack : LStack의 스택 최대값을 설정함 (기본값 32)<br>

※ 5.5 버전부터 STRX옵션은 자동으로 1로 설정됨 (Plib 0899이상 버전 사용 권장)<br>
3-1. EndCtrig()<br>
: CtrigAsm을 끝내는 위치를 표시하는 함수<br>
ex) Tep 맨 아래에 EndCtrig() 입력<br>
※ 주의 : StartCtrig()와 EndCtrig()는 각각 1번밖에 사용불가<br>
※ StartCtrig ~ EndCtrig 사이의 트리거만 어셈블러 플러그인이 적용됨<br>

4. Label(Index)<br>
: 트리거의 Label(식별자)를 붙이는 함수, 트리거의 첫번째 조건에 넣어서 사용<br>
트리거에서 Ctrig 조건/액션을 사용할 때도 필요함. (Index=0 이면 단순 Ctrig사용)<br>
- Index : 해당 트리거에 붙일 식별자 (0x0 ~ 0x1FFFF, 기본값 0) <br>
ex) Trigger {players = {P1},conditions = {Label(0x1000);}} : 이 트리거는 P1의 Label = 0x1000으로 식별됨<br>
Trigger {players = {P1},conditions = {Label(0);}} : 해당 트리거에서 Ctrig 조건/액션을 사용함. (식별 안함)<br>

## Death Value 관련

5. DtoA(Player,UnitId)<br>
: 일반 데스값의 주소(Offset)값을 가져오는 함수
- Player : 데스값의 플레이어 (P1 ~ P12)
- UnitId : 유닛 이름 (숫자도 입력가능)
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/09e93749-f2d0-44bd-a0f1-a302c0113225)
![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/d7c7ed22-56c3-4ea6-92f6-5304c47b7a0f)

1) Player2의 "Terran SCV"의 Death 값을 1234로 SetTo 하고 <br>
2) Player2의 "Terran SCV"의 일반 데스값의 Offset값을 가져오고 해당 Memory값이 정확히 1234를 만족하면, Player1의 자원(Ore)을 1234로 SetTo한다.
```lua
Trigger {
	players = {P1},
	conditions = {
	},
	actions = {
		SetDeaths(P2,SetTo,1234,"Terran SCV");
	},
	flag = {Preserved}
}
Trigger {
	players = {P1},
	conditions = {
		Memory(DtoA(P2,"Terran SCV"),Exactly,1234);
	},
	actions = {
		SetResources(P1,SetTo,1234,Ore);
	},
	flag = {Preserved}
}
```

6. Ccode(Index, Line) <br>
: CDeaths, NDeaths의 식별 Code를 만드는 함수
- Index : CVariable의 Index / Line : 데스값을 저장할 위치 (CDeaths : 0 ~ 479 / NDeaths : 0 ~ 59) <br>
ex) Ccode(0x1000, 249) = index : 0x1000인 CVariable의 249번째 칸의 Code를 반환

7. V(Index,Player,Next) <br>
: 변수 정보를 입력하는 함수
- Index : 변수의 Index / Player : 변수의 Player("X"→CurrentPlayer) / Next : 변수의 Next

8. Vi(Index,Deviation,Player,Next)<br>
: 변수 정보 + 편차값을 입력하는 함수
- Deviation : 편차값 (상수)

9. X(Lua_Variable) <br>
: V()를 lua 문법으로 편리하게 사용하는 함수<br>
ex) Var1 = {P1,0x10,0}<br>
     X(Var1) → P1의 label:0x10인 변수를 입력<br>
※ Variable 데이터 양식 = {Player,Index,Next,"V"}

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/fcf0e4e9-ad57-451a-a1d6-d8d8d8c86219)


```lua
CJump(AllPlayers,0)
CVariable2(P1,0x10,"X","X",0x1000) Var1 = {P1,0x10,0}
CJumpEnd(AllPlayers,0)

CMov(P1,0x58F450,V(0x10)) -- 빨강 숫자 0x1000
CMov(P1,0x58F454,X(Var1)) -- 파랑 숫자 0x1000 
CRead(P1,0x58F458,Mem(P1,0x10,0x15C,0)) -- 연두 숫자 0x1000 
CRead(P1,0x58F45C,_Mem(V(0x10),0x15C,0)) -- 보라 숫자 0x1000 

```
10. f_GetStrptr(), Print_String(), Print_13()

![image](https://github.com/ad-astra-per-ardua/LuaScript_MSF/assets/50827253/62b66423-5106-4de3-9607-3e33032b78a5)

하단고정 텍스트응
```lua
CJump(AllPlayers,0)
Include_CtrigPlib(720,"Switch 1",1)
CVariable(P1,0x10) CVariable(P1,0x11) CVariable(P1,0x12) CVariable(P1,0x13) CVariable(P1,0x14) 
A1 = CArray(P1,1000) VA1 = CVArray(P1,16) VA2 = CVArray(P1,10) 
CVariable2(P1,0x20,"X","X",1) i = 0x20 CVariable2(P1,0x30,"X","X",2) j = 0x30 CVariable2(P1,0x40,"X","X",3)
k = 0x40 CVariable2(P1,0x50,"X","X",4) l = 0x50 CVariable2(P1,0x60,"X","X",5) m = 0x60
for i = 0x100, 0x105 do CVariable(P1,i) end
CJumpEnd(AllPlayers,0) -- \x0D = 빈칸(공간차지 X)

f_GetStrptr(P1,V(0x10),"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D")
print_String(P1,_EPD(V(0x10)),"\x04Print_String \x05TEXT",3)
print_13(P1,{P1},"\x1FPrint_13 \x07TEXT")
```





