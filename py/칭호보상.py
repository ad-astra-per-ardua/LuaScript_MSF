from eudplib import *
import math
import customText as ct
titles = {
	"AwakenSense": {'title': "\x06†제작자† \x04", 'spawn_count':12, 'spawn_unit':1, 'spawn_loc':"Location 1"},
}

def afterTriggerExec():
	if EUDExecuteOnce()(ElapsedTime(AtLeast, 5)):#한번만 실행 시작
		num_titles = EUDVariable(0)

		for k,v in titles.items():
			for p in EUDLoopPlayer():
				if EUDIf()(IsPName(p, k)):
					num_titles += 1
					DoActions([SetResources(Force1, Add, 10000, Ore),CreateUnit(v['spawn_count'], v['spawn_unit'], v['spawn_loc'], p)])

				EUDEndIf()
		if EUDSwitch(num_titles):
			for i in range(6):
				if EUDSwitchCase()(i):
					for p in EUDLoopPlayer():
						f_setcurpl(p)
						DoActions(DisplayText("\x13 \x07[\x08 Hell \x07클리어자 특전 활성화 팀 전체 +%d 미네랄]"%(10000*i)))#팀원 미네랄 주기
					EUDBreak() 
		EUDEndSwitch()
	EUDEndExecuteOnce()#한번만 실행 종료

	for k,v in titles.items():
		for p in EUDLoopPlayer():
			if EUDIf()(IsPName(p, k)):
				SetPName(p, v["title"] , PColor(p), PName(p))
			EUDEndIf()