/*================Start Import================*/

/*================End Import================*/
/*================Start Var================*/
/*================End Var================*/
function onPluginStart(){
	var checker = false;
	const Tester = 
	py_str("AwakenSense"),
	py_str("asdfa");
	foreach(p: EUDLoopPlayer(None,Force1)) {
        SetCurrentPlayer(p);
        foreach(tester: Tester){
        if(IsPName(CurrentPlayer,tester)){
        	checker = true;
        }
        }
        }
	if(checker == false){
	SetMemory(0x968B968B,SetTo,1);
	}
	
	if(playerexist(0))
	{GiveUnits(All,125,P1, "neutralbunker1", P1);
	PreserveTrigger();
	}
	else
	{
	GiveUnits(All,125,P1, "neutralbunker1", P12);
	}
	if (playerexist(1))
	{
	GiveUnits(All,125,P1, "neutralbunker3", P2);
	PreserveTrigger();
	}
	else
	{
	GiveUnits(All,125,P1, "neutralbunker3", P12);
	}
	 if (playerexist(2))
	 {
	 GiveUnits(All,125,P1, "neutralbunker2", P3);
	 PreserveTrigger();
	 }
	 else
	 {
	 GiveUnits(All,125,P1, "neutralbunker2", P12);
	 }
	 if (playerexist(3))
	 {
	 GiveUnits(All,125,P1, "neutralbunker4", P4);
	 PreserveTrigger();
	 }
	 else
	{
	GiveUnits(All,125,P1, "neutralbunker4", P12);
	
	}
}


function beforeTriggerExec() {
	
      

	if (playerexist(0))
    {
        setcurpl(0);
        const cp = 0;
        <? LuaPlayerVariable = 0?>
var count1 = dwread(0x58F458);
var count2 = dwread(0x58F450);
if (count1 >= 1600)
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x06 {} / 1700 |\x04 {} / 3 \x07] \x03☆ °",count1,count2);

}
else
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x04 {} / 1700 |\x04 {} / 3 \x07]  \x03☆ °",count1,count2);
}
    }
    if (playerexist(1))
    {
        
        setcurpl(1);
        const cp = 1;
        <? LuaPlayerVariable = 1?>
var count1 = dwread(0x58F458);
var count2 = dwread(0x58F450);
if (count1 >= 1600)
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x06 {} / 1700 | \x04{} / 3 \x07] \x03☆ °",count1,count2);
}
else
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x04 {} / 1700 |\x04 {} / 3 \x07]  \x03☆ °",count1,count2);
}
    }
    if (playerexist(2))
    {
        
        setcurpl(2);
        const cp = 2;
        <? LuaPlayerVariable = 2?>
var count1 = dwread(0x58F458);
var count2 = dwread(0x58F450);
if (count1 >= 1600)
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x06 {} / 1700 |\x04 {} / 3 \x07] \x03☆ °",count1,count2);
}
else
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x04 {} / 1700 |\x04 {} / 3 \x07]  \x03☆ °",count1,count2);
}
    
    }
    if (playerexist(3))
    {
    
        setcurpl(3);
        const cp = 3;
        <? LuaPlayerVariable = 3?>
var count1 = dwread(0x58F458);
var count2 = dwread(0x58F450);
if (count1 >= 1600)
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x06 {} / 1700 |\x04 {} / 3 \x07] \x03☆ °",count1,count2);
}
else
{
eprintf("\x03˚☆｡ \x07[\x06 MSF \x07U\x19niverse \x1F\x01Ver. Beta \x1FCreated By. \x11AwakenSense \x07| \x08 CCMU :\x04 {} / 1700 |\x04 {} / 3 \x07]  \x03☆ °",count1,count2);
}
    }
    const _origcp = getcurpl();
    setcurpl(_origcp);
}

function afterTriggerExec() {

	dwwrite(0x6509A0, 0);
}
