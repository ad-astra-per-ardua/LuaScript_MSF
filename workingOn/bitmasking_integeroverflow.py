from eudplib import *
import math
import customText as ct
def beforeTriggerExec():
	if EUDIf()(ElapsedTime(AtLeast, 3)):
		for p in EUDLoopPlayer("Human"):
			ptr, epd = f_dwepdread_epd(EPD(0x6284E8) + 12*p) #선택인식
			if EUDIf()((ptr > 0)):
				f_setcurpl(p)
				if EUDIf()((Memory(0x57F1B0, Exactly, p))): #비공유 조건부
					htBosstblhp122 = f_maskread_epd(epd+2, 0xFFFFFF00)//256
					htBosstblhp222 = f_maskread_epd(epd+24, 0xFFFFFFFF)//256
					if EUDIf()(MemoryXEPD(epd+25, AtLeast, 1*16777216, 0xFF000000)): 
						htBosstblhp333 = f_maskread_epd(epd+25, 0xFF000000)//16777216
						ct.f_setTbl(571, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(571, 0, 30,"\x1C",htBosstblhp222,"\x08/\x07",htBosstblhp122+(htBosstblhp333*10000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
						ct.f_setTbl(1400, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(1400, 0, 30,"\x1C",htBosstblhp222,"\x08/\x07",htBosstblhp122+(htBosstblhp333*10000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
						ct.f_setTbl(831, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(831, 0, 30,"\x1C",htBosstblhp222,"\x08/\x07",htBosstblhp122+(htBosstblhp333*10000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
						ct.f_setTbl(827, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(827, 0, 30,"\x1C",htBosstblhp222,"\x08/\x07",htBosstblhp122+(htBosstblhp333*10000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
						ct.f_setTbl(764, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(764, 0, 30,"\x13\x1CSP : ",htBosstblhp222,"\x08 /\x07 HP : ",htBosstblhp122+(htBosstblhp333*1000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
					if EUDElse()():
						htBosstblhp333 = f_maskread_epd(epd+25, 0xFF0000)//65536
						ct.f_setTbl(571, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(571, 0, 30,"\x1C",htBosstblhp222,"\x08/\x07",htBosstblhp122+(htBosstblhp333*1000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
						ct.f_setTbl(1400, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(1400, 0, 30,"\x1C",htBosstblhp222,"\x08/\x07",htBosstblhp122+(htBosstblhp333*1000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
						ct.f_setTbl(827, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(827, 0, 30,"\x1C",htBosstblhp222,"\x08/\x07",htBosstblhp122+(htBosstblhp333*1000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
						ct.f_setTbl(764, 0, 30,"\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D\x0D") #\x0D 개당 1바이트 현재 40바이트 #영어,특문,숫자 1바이트 차지 // 한글 3바이트 차지 함 #\x0D 해당1바이트 안보임
						ct.f_setTbl(764, 0, 30,"\x13\x1CSP : ",htBosstblhp222,"\x08 /\x07 HP : ",htBosstblhp122+(htBosstblhp333*1000000))# 1536tblid,0바이트부터,30바이트까지 출력, 내용)
					EUDEndIf()
				EUDEndIf()
			EUDEndIf()
	EUDEndIf()
