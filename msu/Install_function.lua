function Install_function()
    function RotatePlayer(Print,Players,RecoverCP)
        return CopyCpAction(Print,Players,RecoverCP)
    end

    function ElapsedTime(Comparison, Time)
        Comparison = ParseComparison(Comparison)
        return Condition(0, 0, Time, 0, Comparison, 12, 0, 0)
    end

    function SetMemoryBA(Offset,Type,Value)
        local ret = bit32.band(Offset, 0xFFFFFFFF)%4
        if ret == 0 then
            Mask = 0xFF
        elseif ret == 1 then
            Mask = 0xFF00
            Value = Value * 0x100
        elseif ret == 2 then
            Mask = 0xFF0000
            Value = Value * 0x10000
        elseif ret == 3 then
            Mask = 0xFF000000
            Value = Value * 0x1000000
        end
        return SetMemoryX(Offset-ret,Type,Value,Mask)
    end

    function StrDesignX(Str)
        return "\x13\x07。\x18˙\x0F☆\x1C˚ \x04"..Str.." \x1C。\x0F☆\x18.\x07˚"
    end
end