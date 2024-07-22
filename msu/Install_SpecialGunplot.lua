function Install_SpecialGunplot()
    TriggerX(P7, Always(), {Wait(100),
    CreateUnit(1, 151, "celebrate1", P7),
    CreateUnit(1, 152, "celebrate2", P7),
    CreateUnit(1, 130,"nuke1", P7);
    CreateUnit(1, 106,"nuke2", P7);
    CreateUnit(1, 174,"middle1", P7);
    CreateUnit(1, 175,"middle2", P7);
    CreateUnit(1, 127,"middle3", P7);
    CreateUnit(1, 148,"middle4", P7);
    SetInvincibility(Enable, 127, P7, "Anywhere");
    SetInvincibility(Enable, 148, P7, "Anywhere");
    SetInvincibility(Enable, 174, P7, "Anywhere");
    SetInvincibility(Enable, 175, P7, "Anywhere");
})

------ Start of Disable invincibility condition trigger -------
MBBuildingArray = {174,175,127,148}
Utext1 = {"좌측 상단, \x07기억의 \x04세계선", "우측 상단, \x1c섬의 \x0f추억","좌측 하단, \x08공포의 \x10절경","우측 하단, \x18감정의 \x0e해일"}
Utext2 = {"\x07B\x04orderline \x11O\x04f \x19M\x04emory","\x0fR\x04eminiscence \x11O\x04f \x1cI\x04sland","\x10M\x04agnificent \x11O\x04f \x08F\x04rightness","\x0ET\x04idal \x11O\x04f \x18E\x04motions"}



for i = 1 , 4 do 
    Unlock1 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08 ＮＯＴＩＣＥ \x04 ● ● ●\n\x14\n\x14\n"
    Unlock2 = StrDesignX(Utext1[i]).."\n"..StrDesignX(Utext2[i].."의 무적이 \x07해제\x04되었습니다 !").."\n\n"
    Unlock3 = "\x13\x04\n\x0D\x0D\x13\x04● ● ● \x08 ＮＯＴＩＣＥ \x04 ● ● ●\n\x14\n\x14\n"
    TriggerX(Force1, {
        Bring(Force2, AtMost, 1, "Any unit", "middle"..i),
        Deaths(P7, AtLeast, 1, 106),
        Deaths(P7, AtLeast, 1, 130)
    }, {
        PlayWAV("staredit\\wav\\CAUTION.wav"),
        PlayWAV("staredit\\wav\\CAUTION.wav"),
        PlayWAV("staredit\\wav\\CAUTION.wav"),
        SetInvincibility(Disable, MBBuildingArray[i], P7, "middle"..i),
        DisplayText(Unlock1, 4),
        DisplayText(Unlock2, 4),
        DisplayText(Unlock3, 4),
        MinimapPing("middle"..i),
        Wait(50),
        MinimapPing("middle"..i),
        Wait(50),
        MinimapPing("middle"..i),
        Wait(50),
        MinimapPing("middle"..i)
    })
end
end