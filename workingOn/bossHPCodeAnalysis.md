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
CreateCcodes(number) means Create Ccode() in front of variable numbers returns Auto Allocated Ccodes.<br>
Ccode() : Parameter{index, line} =  Generating identificate CDeaths, NDeaths functions. <br>
Ccode's Index = CVariable's Index / Line : Address where Save the Death value.<br>
ex) Ccode(0x1000, 249) = return code of where CVariable's index : 0x1000 and address 249th block.<br>
CVariable : Declaring Variable functions | Param {Player, Index} = Check player of variable trigger. Index : Allocated index of variable trigger<br>
<br>
Secondary, Nextptr, FBossPtr, FBossHP, FBossHP2 = CreateVars(4,FP)<br>
Auto Allocated CVariable(Number). returns Each V(Auto Allocated Index)<br>
CVariable : Declaring Variable functions | Param {Player, Index} = Check player of variable trigger. Index : Allocated index of variable trigger.<br>
What if Index Param is nil? idk exactly<br>
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
- CIfOnce(PlayerID, Conditions(optional), Actions(optional)) : Like if function, CIfOnce execute ONLY once <br>
when boolean of conditions are True. Open the If gate.<br>
In this case, there's no conditions. So Triggers Which wrapped up with CIfOnce will Always with no conditions, Execute With only once.<br>
<br>
- f_Read(FP, 0x628438, nil, Nextptr) : Instead knowing f_Read first, Felt I should learn CRead first.<br>
DataTransfer | <br>
CRead(PlayerID, Dest, Source, Deviation, Mask, EPDRead, Clear) : Operating like f_maskread.<br>
= Dest << f_maskread(EPD(Source), Mask) : Convert EPD on Source Offset and Apply Mask for extract and returns useful bits what we needs. And Bitmasking returned f_maskread functions, saved to Dest(Offset, "Cp", Variable, Mem, A,VA)<br>
Dest : Destination where Save the output of Cread.<br>
Source : Destination where Read the input of Cread.<br>
Deviation : Devation of Dest. +- Numeric on Dest.<br>
Mask : Range where to Read. (Bitmask)<br>
EPDRead : if == 1 : return EPD(Source) | if == nil : nothing happends.<br>
Clear : Auto reset flag - Using on Stream Operation | Input 1 when need Dest full reset.<br>

- Each Mem(Auto Allocated Index) -> Arr(X) = *A* | 
V(Auto Allocated index1) ,V(Auto Allocated index2) ... } -> VArr(X) = *VA*
<br>

**f_Read(PlayerID, Input, Output, EPDOutput, Mask, Clear)**  : Read source same method with CRead.
Output << f_maskread(EPD(Source), Mask)<br>
Param{<br>
1. Check player of Generating Triggers<br>
2. Source that read the value.(Constant(Offset), Variable, Mem, A,VA)<br>
3. Somewhere to save output of f_Read.(Variable,VA)<br>
4. EPDOutput : EPD(Source)(Variable/VA)<br>
5. Mask : Range that where to Read. (Bitmask)<br>
6. Clear : Auto reset flag - Using on Stream Operation | Input 1 when need Dest full reset.<br>
<br>
f_Read(FP,0x628438,nil,Nextptr)
1. Create Trigger with Fixed Player. Typically FP = P8. <br>
2. Offset 0x628438 means next unit pointer offset (The address of the unit structure to be created) <br>
3. Output = nil. Nothing to use Output (f_maskread(EPD(Source),Mask)). So typed nil. <br>
4. Nevertheless, We need Offset 0x628438 as EPD Output. So Convert EPD(0x628438) and Allocate to Variable(Nextptr) <br>
<br>
CMov(FP,FBossPtr,Nextptr)<br>
1. Shortly, just move variable's memory to another variable? <br>
2. CMov(PID, Destination, Source, Deviation, Mask, Clear) | Destination << Source  + Deviation <br>
3. Thus, Make Trigger By fixed Player, read the Source(Nextptr) Data and Save them to New Destination(FBossPtr) <br>
<br>
CDoActions(FP,{TSetMemory(Vi(Nextptr[2],2),SetTo,256*8000000);<br>
1. CDoActions is same as DoActionsX, but able to use T/TT actions(Cstruct)<br>
2. Basically, DoActions trigger. So no need to define conditions.<br>
3. Thus, {TSetMemory(Vi(Nextptr[2],2),SetTo,256*8000000); is Actions pharse.<br>
4. Vi(Nextptrs[2],2) = { Vi(Index, Deviation, Player, Next) | ex) V(0x10,1) = Add (+1) CurrentPlayer's Variable Index which is 0x10 }. | <br>
5. Add (+2) Variable Information (Nextptr[2]) + 2 <br> Thus, Nextptr[2](0x628438) + 2(0x08 / 4) = Modify Nextptrs unit's hit points, <br> TSetMemory(4, SetTo, 256*8000000) to 8,000,000
6. TSetMemoryX(Vi(Nextptr[2],55),SetTo,0xA00000,0xA00000);<br>
EPD(0x628438) + 55 * 4 = Set Status flag.(?) And Set Offset to 0xA000000 Mask and Value(0xA000000)<br>
Thus, EPD's status flag will have 0xA000000 value Which is 0000 0000 1010 0000 0000 0000 0000 0000 For binary, And 21th and 23th bits has True value. <br> Which is No Collide(21th) and Is Gathering(23th) flag.<br>
}

```lua
------- Boss HP Overflow Trigger 4 Times & Status flag NoCollide + IsGathering ------- 

    Nextptr, FBossPtr, FBossHP, FBossHP2 = CreateVars(4,FP)
    CIfOnce(FP,Always(),{Wait(10000)})
        f_Read(FP,0x628438,nil,Nextptr) -- Save 0x628438(Next unit pointer) Offset, Convert into EPD and save into Variable
        CMov(FP,FBossPtr,Nextptr) -- Save FBossPtr from Nextptr's 
            CDoActions(FP,{
                CreateUnit(1,68,"HealZone",P7);
                TSetMemory(Vi(Nextptr[2],2),SetTo,256*6500000); -- Next unit pointer offset's HP set
                TSetMemoryX(Vi(Nextptr[2],55),SetTo,0xA00000,0xA00000); -- Next unit pointer offset's status flag set
            })
        CMov(FP,FBossHP,Nextptr,2)  -- CMov : @Param{ Player, Dest, Source, Deviation, Mask, Clear } in this case, We allocate Nextptr + 2 (EPD(0x628438) + (0x008 / 4)).  
        DoActionsX(FP,{SetNVar(FBossHP2,SetTo,4)}) -- DoAction Trigger for setting number of HP regen times.
    CIfEnd()

    CTrigger(FP,{
        TMemory(FBossHP,AtMost,256*300000); -- Lowest Hitpoint
        NVar(FBossHP2,AtLeast,1);
    },{
        TSetMemory(FBossHP,SetTo,256*6500000); -- Hitpoint Regen Trigger Activate
        SetNVar(FBossHP2,Subtract,1); -- Subtract 1 Variable of times
    },{preserved})
    -------------- End of Boss HP Overflow Trigger ----------------------
```
