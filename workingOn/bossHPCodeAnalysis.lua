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
