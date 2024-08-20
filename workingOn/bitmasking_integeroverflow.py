from eudplib import *
import math
import customText as ct
def beforeTriggerExec():
	if EUDIf()(ElapsedTime(AtLeast, 3)):
			ptr, epd = f_dwepdread_epd(EPD(0x6284B8)) #선택인식
			if EUDIf()((ptr > 0)):
					htBosstblhp122 = f_maskread_epd(epd+2, 0xFFFFFF00)//256
					htBosstblhp222 = f_maskread_epd(epd+24, 0xFFFFFFFF)//256
					ct.f_setTbl(764, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") 
					ct.f_setTbl(764, 0, 30,"\x13\x1CSP : ",htBosstblhp222,"\x08 /\x07 HP : ",htBosstblhp122)
					
			EUDEndIf()
	EUDEndIf()
