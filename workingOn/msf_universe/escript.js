/*================Start Import================*/
/*================End Import================*/
/*================Start Var================*/
/*================End Var================*/
function beforeTriggerExec() {
	if (playerexist(0))
    {
        setcurpl(0);
        const cp = 0;
        <? LuaPlayerVariable = 0?>
var count1 = dwread(0x6283F0);
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x02 {} / 1600 \x07] \x03☆ °",count1);
    }
    if (playerexist(1))
    {
        setcurpl(1);
        const cp = 1;
        <? LuaPlayerVariable = 1?>
var count1 = dwread(0x6283F0);
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x02 {} / 1600 \x07] \x03☆ °",count1);
    }
    if (playerexist(2))
    {
        setcurpl(2);
        const cp = 2;
        <? LuaPlayerVariable = 2?>
var count1 = dwread(0x6283F0);
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x02 {} / 1600 \x07] \x03☆ °",count1);
    }
    if (playerexist(3))
    {
        setcurpl(3);
        const cp = 3;
        <? LuaPlayerVariable = 3?>
var count1 = dwread(0x6283F0);
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x02 {} / 1600 \x07] \x03☆ °",count1);
    }
    if (playerexist(4))
    {
        setcurpl(4);
        const cp = 4;
        <? LuaPlayerVariable = 4?>
var count1 = dwread(0x6283F0);
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x02 {} / 1600 \x07] \x03☆ °",count1);
    }
    const _origcp = getcurpl();
    /*================Start Player 8================*/
    if (playerexist(7))
    {
        setcurpl(7);
        const cp = 7;
        
        {

            if (
                Memory(0x58f44c, Exactly, 241)
            ){
                LeaderBoardKills(229, "\x11K\x04ills\x07 -- [Ver. Test]");
            }
        }
    }
    /*================End Player 8================*/
    setcurpl(_origcp);
}

function afterTriggerExec() {
	dwwrite(0x6509A0, 0);
}