function FinalBossTrigger()
    ----------- After 4 MBoss ---------
    TriggerX(FP, {
        Deaths(P6, AtLeast, 1, 202),
        Deaths(P6, AtLeast, 1, 203),
        Deaths(P6, AtLeast, 1, 204),
        Deaths(P6, AtLeast, 1, 205),
    }, {
        CreateUnit(1, 168, "HealZone", P7),
        KillUnitAt(All, 125, "Anywhere", Force1),
        KillUnitAt(All, 125, "Anywhere", P12),
        KillUnitAt(All, "Men", "HealZone", Force2),
        
    })
    TriggerX(Force1, {
        Deaths(P6, AtLeast, 1, 202),
        Deaths(P6, AtLeast, 1, 203),
        Deaths(P6, AtLeast, 1, 204),
        Deaths(P6, AtLeast, 1, 205),
    }, {
        MinimapPing("HealZone"),
        Wait(50),
        MinimapPing("HealZone"),
        Wait(50),
        MinimapPing("HealZone"),
        Wait(50),
        MinimapPing("HealZone"),
        DisplayText("\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08 ＮＯＴＩＣＥ \x04 ● ● ●\n\x14\n\x14\n", 4),
        DisplayText(StrDesignX("모든 것의 근원지, \x08? ? ? ? ? ? \x04가 어딘가에 등장하였습니다 !"), 4),
        DisplayText("\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08 ＮＯＴＩＣＥ \x04 ● ● ●\n\x14\n\x14\n", 4),
        PlayWAV("staredit\\wav\\CAUTION.wav"),
        PlayWAV("staredit\\wav\\CAUTION.wav"),
        PlayWAV("staredit\\wav\\CAUTION.wav"),
    })
    TriggerX(FP,{
    Deaths(P6, AtLeast, 1, 202),
    Deaths(P6, AtLeast, 1, 203),
    Deaths(P6, AtLeast, 1, 204),
    Deaths(P6, AtLeast, 1, 205),
    Deaths(P7, AtLeast, 1, 168)},{
        RotatePlayer({
        DisplayTextX(StrDesignX("\x04마린키우기 \x19U\x17niverse \x07Test [0.1v]\x04를 클리어 하셨습니다 ! .").."\n"..StrDesignX("\x04플레이 해주셔서 정말 \x19감사드립니다!").."\n"..StrDesignX("\x08To be Continued."),4);
        },HumanPlayers,FP);
        })
    TriggerX(Force1, {
        Deaths(P6, AtLeast, 1, 202),
        Deaths(P6, AtLeast, 1, 203),
        Deaths(P6, AtLeast, 1, 204),
        Deaths(P6, AtLeast, 1, 205),
        Deaths(P7, AtLeast, 1, 168)}, {
            Wait(5000);
            Victory();
            PlayWAV("staredit\\wav\\BOSSClear.ogg");
            PlayWAV("staredit\\wav\\BOSSClear.ogg");
            PlayWAV("staredit\\wav\\BOSSClear.ogg");
            SetMemoryBA(0x657A9C, SetTo, 1)
        })

end