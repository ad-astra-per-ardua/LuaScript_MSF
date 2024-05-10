from eudplib import * 

###########################

# Code and Trigger must define in def below.
# begoreTriggerExec , afterTriggerExec operate inf loop for default like preserve trigger

def beforeTriggerExec():
	pass


def afterTriggerExec():
	pass


def onPluginStart():
	DoActions([
		DisplayText("Test EUDplib"),
		CreateUnit(1, "Protoss Observer", "Anywhere", P1)
		])


