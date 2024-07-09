```lua
SetBossHP, PH5_Stage, BossEnd = CreateCcodes(3)
Nextptr, FBossPtr, FBossHP, FBossHP2 = CreateVars(4,FP)


--------< Save FBossEPD >--------
CIfOnce(FP)
	f_Read(FP,0x628438,nil,Nextptr)
	DoActions(FP,SetImageColor(135,12))
	CMov(FP,FBossPtr,Nextptr) -- Save FBossPtr
		CDoActions(FP,{
			CreateUnit(1,174,"FBossN",P8);
			SetInvincibility(Enable, 68, P8, "FBossN");
			GiveUnits(1,174,P8,"FBossN",P12);
			TSetMemory(Vi(Nextptr[2],2),SetTo,256*8000000);
			TSetMemoryX(Vi(Nextptr[2],55),SetTo,0xA00000,0xA00000);
		})
	CMov(FP,FBossHP,Nextptr,2) -- Save FBossHP
	DoActions(FP,SetImageColor(135,0))
CIfEnd()
```
--- Summarize ---
```lua
SetBossHP, PH5_Stage, BossEnd = CreateCcodes(3)
Nextptr, FBossPtr, FBossHP, FBossHP2 = CreateVars(4,FP)
```
Declaring Variable named SetBossHP, PH5_Stage, BossEnd
In this case, 
CreateCcodes(number) means Create Ccode() in front of variable numbers returns Auto Allocated Ccodes.
Ccode() : Parameter{index, line} =  Generating identificate CDeaths, NDeaths functions. 
Ccode's Index = CVariable's Index / Line : Address where Save the Death value.
ex) Ccode(0x1000, 249) = return code of where CVariable's index : 0x1000 and address 249th block.
CVariable : Declaring Variable functions | Param {Player, Index} = Check player of variable trigger. Index : Allocated index of variable trigger

Secondary, Nextptr, FBossPtr, FBossHP, FBossHP2 = CreateVars(4,FP)
Auto Allocated CVariable(Number). returns Each V(Auto Allocated Index)
CVariable : Declaring Variable functions | Param {Player, Index} = Check player of variable trigger. Index : Allocated index of variable trigger.
What if Index Param is nil? idk exactly
```lua
CIfOnce(FP)
	f_Read(FP,0x628438,nil,Nextptr)
	DoActions(FP,SetImageColor(135,12))
	CMov(FP,FBossPtr,Nextptr) -- Save FBossPtr
		CDoActions(FP,{
			CreateUnit(1,174,"FBossN",P8);
			SetInvincibility(Enable, 68, P8, "FBossN");
			GiveUnits(1,174,P8,"FBossN",P12);
			TSetMemory(Vi(Nextptr[2],2),SetTo,256*8000000);
			TSetMemoryX(Vi(Nextptr[2],55),SetTo,0xA00000,0xA00000);
		})
	CMov(FP,FBossHP,Nextptr,2) -- Save FBossHP
	DoActions(FP,SetImageColor(135,0))
CIfEnd()
```
- CIfOnce(PlayerID, Conditions(optional), Actions(optional)) : Like if function, CIfOnce execute ONLY once 
when boolean of conditions are True. Open the If gate.
In this case, there's no conditions. So Triggers Which wrapped up with CIfOnce will Always with no conditions, Execute With only once.

- f_Read(FP, 0x628438, nil, Nextptr) : Instead knowing f_Read first, Felt I should learn CRead first.
DataTransfer | 
CRead(PlayerID, Dest, Source, Deviation, Mask, EPDRead, Clear) : Operating like f_maskread.
= Dest << f_maskread(EPD(Source), Mask) : Convert EPD on Source Offset and Apply Mask for extract and returns useful bits what we needs. And Bitmasking returned f_maskread functions, saved to Dest(Offset, "Cp", Variable, Mem, A,VA)
Dest : Destination where Save the output of Cread.
Source : Destination where Read the input of Cread.
Deviation : Devation of Dest. +- Numeric on Dest.
Mask : Range where to Read. (Bitmask)
EPDRead : if == 1 : return EPD(Source) | if == nil : nothing happends.
Clear : Auto reset flag - Using on Stream Operation | Input 1 when need Dest full reset.

- Each Mem(Auto Allocated Index) -> Arr(X) = *A* | 
V(Auto Allocated index1) ,V(Auto Allocated index2) ... } -> VArr(X) = *VA*

**f_Read(PlayerID, Input, Output, EPDOutput, Mask, Clear)** : Read source same method with CRead.
Output << f_maskread(EPD(Source), Mask)
Param{
1. Check player of Generating Triggers
2. Source that read the value.(Constant(Offset), Variable, Mem, A,VA)
3. Somewhere to save output of f_Read.(Variable,VA)
4. EPDOutput : EPD(Source)(Variable/VA)
5. Mask : Range that where to Read. (Bitmask)
6. Clear : Auto reset flag - Using on Stream Operation | Input 1 when need Dest full reset.

f_Read(FP,0x628438,nil,Nextptr)
1. Create Trigger with Fixed Player. Typically FP = P8.
2. Offset 0x628438 means next unit pointer offset (The address of the unit structure to be created)
3. Output = nil. Nothing to use Output (f_maskread(EPD(Source),Mask)). So typed nil.
4. Nevertheless, We need Offset 0x628438 as EPD Output. So Convert EPD(0x628438) and Allocate to Variable(Nextptr)

CMov(FP,FBossPtr,Nextptr)
1. Shortly, just move variable's memory to another variable?
2. CMov(PID, Destination, Source, Deviation, Mask, Clear) | Destination << Source  + Deviation
3. Thus, Make Trigger By fixed Player, read the Source(Nextptr) Data and Save them to New Destination(FBossPtr)

CDoActions(FP,{TSetMemory(Vi(Nextptr[2],2),SetTo,256*8000000);
1. CDoActions is same as DoActionsX, but able to use T/TT actions(Cstruct)
2. Basically, DoActions trigger. So no need to define conditions.
3. Thus, {TSetMemory(Vi(Nextptr[2],2),SetTo,256*8000000); is Actions pharse.
4. Vi(Nextptrs[2],2) = { Vi(Index, Deviation, Player, Next) | ex) V(0x10,1) = Add (+1) CurrentPlayer's Variable Index which is 0x10 }. | Add (+2) Variable Information (Nextptr[2]) + 2 Thus, Nextptr[2](0x628438) + 2(0x08 / 4) = Modify Nextptrs unit's hit points, TSetMemory(4, SetTo, 256*8000000) to 8,000,000
5. TSetMemoryX(Vi(Nextptr[2],55),SetTo,0xA00000,0xA00000);
EPD(0x628438) + 55 * 4 = Set Status flag.(?) And Set Offset to 0xA000000 Mask and Value(0xA000000)
Thus, EPD's status flag will have 0xA000000 value. Which is No Collide and Is Gathering flag.



}





CIfEnd(Actions(optional))
]]









CTrigger(FP,{ -- Regene FBossHP Before PH5
	TMemory(FBossHP,AtMost,256*1000000);
	NVar(FBossHP2,AtLeast,2);
	CDeathsX("X",Exactly,0,BossEnd,0xFF);
},{
	TSetMemory(FBossHP,SetTo,256*8000000);
	SetNVar(FBossHP2,Subtract,1);
	SetCDeaths("X",SetTo,1,PH5_Stage);
},{Preserved})

CTrigger(FP,{ -- Regene FBossHP After PH5
	TMemory(FBossHP,AtMost,256*1000000);
	NVar(FBossHP2,AtLeast,1);
	CDeathsX("X",Exactly,1,BossEnd,0xFF);
},{
	TSetMemory(FBossHP,SetTo,256*8000000);
	SetNVar(FBossHP2,Subtract,1);
},{Preserved})
