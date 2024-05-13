# 저그사용가능인구 582144 4
# 저그사용인구 582174 4
# 저그최대인구 5821A4 4
# 테란사용가능인구 5821D4 4
# 테란사용인구 582204 4
# 테란최대인구 582234 4
# 프로토스사용가능인구 582264 4
# 프로토스사용인구 582294 4
# 프로토스최대인구 5822C4 4
from eudplib import *
import math

def onPluginStart():
	DoActions([
			SetMemory(0x5822C4+0x4*0,SetTo,2000*2),#
			SetMemory(0x5822C4+0x4*1,SetTo,2000*2),#
			SetMemory(0x5822C4+0x4*2,SetTo,2000*2),#
			SetMemory(0x5822C4+0x4*3,SetTo,2000*2),#
			SetMemory(0x5822C4+0x4*4,SetTo,2000*2),#
			SetMemory(0x5822C4+0x4*5,SetTo,2000*2),#

			SetMemory(0x582264+0x4*0,SetTo,1700*2),#
			SetMemory(0x582264+0x4*1,SetTo,1700*2),#
			SetMemory(0x582264+0x4*2,SetTo,1700*2),#
			SetMemory(0x582264+0x4*3,SetTo,1700*2),#
			SetMemory(0x582264+0x4*4,SetTo,1700*2),#
			SetMemory(0x582264+0x4*5,SetTo,1700*2),#
			])
def beforeTriggerExec():
	DoActions([
		SetMemory(0x582294+0x4*0,SetTo,f_wread(0x6283F0)*2),#플토 인구수 200채움
		SetMemory(0x582294+0x4*1,SetTo,f_wread(0x6283F0)*2),
		SetMemory(0x582294+0x4*2,SetTo,f_wread(0x6283F0)*2),
		SetMemory(0x582294+0x4*3,SetTo,f_wread(0x6283F0)*2),
		SetMemory(0x582294+0x4*4,SetTo,f_wread(0x6283F0)*2),
		SetMemory(0x582294+0x4*5,SetTo,f_wread(0x6283F0)*2),
		])