LUAGUI_NAME = "Custom Short Cut HUD Color"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Custom Short Cut HUD Color"

TextR = 147
TextG = 147
TextB = 147
TopLeftR = 125
TopLeftG = 125
TopLeftB = 125
DownLeftR = 125
DownLeftG = 125
DownLeftB = 125
TopRightR = 125
TopRightG = 125
TopRightB = 125
DownRightR = 125
DownRightG = 125
DownRightB = 125

--- Version Check
IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = IsEpicGLVersion-0x1108
IsSteamJPVersion = IsEpicGLVersion-0x1158

-------------------------------------------------------------------------
function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	epicgames = 0
	stmgames = 0
	stmjpgames = 0
	end
end
-------------------------------------------------------------------------
function _OnFrame()
	if ReadLong(IsEpicGLVersion) == 0x7265737563697065 and epicgames == 0 then
		epicgames = 1
		ConsolePrint("Custom Short Cut HUD Color (EPIC GL) - installed")
	end
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Custom Short Cut HUD Color (Steam GL) - installed")
	end
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Custom Short Cut HUD Color (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
ShortCutHUDTopLeftR = 0x2854380
ShortCutHUDTopLeftG = ShortCutHUDTopLeftR+4
ShortCutHUDTopLeftB = ShortCutHUDTopLeftR+8
ShortCutHUDDownLeftR = 0x2854390
ShortCutHUDDownLeftG = ShortCutHUDDownLeftR+4
ShortCutHUDDownLeftB = ShortCutHUDDownLeftR+8
ShortCutHUDTopRightR = 0x28543A0
ShortCutHUDTopRightG = ShortCutHUDTopRightR+4
ShortCutHUDTopRightB = ShortCutHUDTopRightR+8
ShortCutHUDDownRightR = 0x28543B0
ShortCutHUDDownRightG = ShortCutHUDDownRightR+4
ShortCutHUDDownRightB = ShortCutHUDDownRightR+8
ShortCutHUDTextR = 0x2854440
ShortCutHUDTextG = ShortCutHUDTextR+4
ShortCutHUDTextB = ShortCutHUDTextR+8
WriteInt(ShortCutHUDTextR, TextR)
WriteInt(ShortCutHUDTextG, TextG)
WriteInt(ShortCutHUDTextB, TextB)
WriteInt(ShortCutHUDTopLeftR, TopLeftR)
WriteInt(ShortCutHUDTopLeftG, TopLeftG)
WriteInt(ShortCutHUDTopLeftB, TopLeftB)
WriteInt(ShortCutHUDDownLeftR, DownLeftR)
WriteInt(ShortCutHUDDownLeftG, DownLeftG)
WriteInt(ShortCutHUDDownLeftB, DownLeftB)
WriteInt(ShortCutHUDTopRightR, TopRightR)
WriteInt(ShortCutHUDTopRightG, TopRightG)
WriteInt(ShortCutHUDTopRightB, TopRightB)
WriteInt(ShortCutHUDDownRightR, DownRightR)
WriteInt(ShortCutHUDDownRightG, DownRightG)
WriteInt(ShortCutHUDDownRightB, DownRightB)
end

---------- Steam Version
if stmgames == 1 then
ShortCutHUDTopLeftR = 0x2853980
ShortCutHUDTopLeftG = ShortCutHUDTopLeftR+4
ShortCutHUDTopLeftB = ShortCutHUDTopLeftR+8
ShortCutHUDDownLeftR = 0x2853990
ShortCutHUDDownLeftG = ShortCutHUDDownLeftR+4
ShortCutHUDDownLeftB = ShortCutHUDDownLeftR+8
ShortCutHUDTopRightR = 0x28539A0
ShortCutHUDTopRightG = ShortCutHUDTopRightR+4
ShortCutHUDTopRightB = ShortCutHUDTopRightR+8
ShortCutHUDDownRightR = 0x28539B0
ShortCutHUDDownRightG = ShortCutHUDDownRightR+4
ShortCutHUDDownRightB = ShortCutHUDDownRightR+8
ShortCutHUDTextR = 0x2853A40
ShortCutHUDTextG = ShortCutHUDTextR+4
ShortCutHUDTextB = ShortCutHUDTextR+8
WriteInt(ShortCutHUDTextR, TextR)
WriteInt(ShortCutHUDTextG, TextG)
WriteInt(ShortCutHUDTextB, TextB)
WriteInt(ShortCutHUDTopLeftR, TopLeftR)
WriteInt(ShortCutHUDTopLeftG, TopLeftG)
WriteInt(ShortCutHUDTopLeftB, TopLeftB)
WriteInt(ShortCutHUDDownLeftR, DownLeftR)
WriteInt(ShortCutHUDDownLeftG, DownLeftG)
WriteInt(ShortCutHUDDownLeftB, DownLeftB)
WriteInt(ShortCutHUDTopRightR, TopRightR)
WriteInt(ShortCutHUDTopRightG, TopRightG)
WriteInt(ShortCutHUDTopRightB, TopRightB)
WriteInt(ShortCutHUDDownRightR, DownRightR)
WriteInt(ShortCutHUDDownRightG, DownRightG)
WriteInt(ShortCutHUDDownRightB, DownRightB)
end

---------- Steam JP Version
if stmjpgames == 1 then
ShortCutHUDTopLeftR = 0x2853980
ShortCutHUDTopLeftG = ShortCutHUDTopLeftR+4
ShortCutHUDTopLeftB = ShortCutHUDTopLeftR+8
ShortCutHUDDownLeftR = 0x2853990
ShortCutHUDDownLeftG = ShortCutHUDDownLeftR+4
ShortCutHUDDownLeftB = ShortCutHUDDownLeftR+8
ShortCutHUDTopRightR = 0x28539A0
ShortCutHUDTopRightG = ShortCutHUDTopRightR+4
ShortCutHUDTopRightB = ShortCutHUDTopRightR+8
ShortCutHUDDownRightR = 0x28539B0
ShortCutHUDDownRightG = ShortCutHUDDownRightR+4
ShortCutHUDDownRightB = ShortCutHUDDownRightR+8
ShortCutHUDTextR = 0x2853A40
ShortCutHUDTextG = ShortCutHUDTextR+4
ShortCutHUDTextB = ShortCutHUDTextR+8
WriteInt(ShortCutHUDTextR, TextR)
WriteInt(ShortCutHUDTextG, TextG)
WriteInt(ShortCutHUDTextB, TextB)
WriteInt(ShortCutHUDTopLeftR, TopLeftR)
WriteInt(ShortCutHUDTopLeftG, TopLeftG)
WriteInt(ShortCutHUDTopLeftB, TopLeftB)
WriteInt(ShortCutHUDDownLeftR, DownLeftR)
WriteInt(ShortCutHUDDownLeftG, DownLeftG)
WriteInt(ShortCutHUDDownLeftB, DownLeftB)
WriteInt(ShortCutHUDTopRightR, TopRightR)
WriteInt(ShortCutHUDTopRightG, TopRightG)
WriteInt(ShortCutHUDTopRightB, TopRightB)
WriteInt(ShortCutHUDDownRightR, DownRightR)
WriteInt(ShortCutHUDDownRightG, DownRightG)
WriteInt(ShortCutHUDDownRightB, DownRightB)
end
end
