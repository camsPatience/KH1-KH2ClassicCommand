LUAGUI_NAME = "Summon HUD Color"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Summon HUD Color"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = 0x3B2271
IsSteamJPVersion = 0x3B2221

--
SummonTextCR = 255
SummonTextCG = 176
SummonTextCB = 91
-- Used for DropDown and Start/Middle/End
SummonDropDownR = 241
SummonDropDownG = 163
SummonDropDownB = 76
--
SummonMenuSymbolR = 128
SummonMenuSymbolG = 128
SummonMenuSymbolB = 128
-- Selected command
SummonSelectR = 193
SummonSelectG = 123
SummonSelectB = 42
-- Gradient root color
SummonBackGroundR = 91
SummonBackGroundG = 58
SummonBackGroundB = 20

---------------------------
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
		ConsolePrint("Summon HUD Color (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Summon HUD Color (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Summon HUD Color (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
SummonTextR = 0x2853C00
SummonTextG = SummonTextR+0x4
SummonTextB = SummonTextR+0x8
SummonSymbolR = SummonTextR-0x300
SummonSymbolG = SummonTextR-0x2FC
SummonSymbolB = SummonTextR-0x2F8
SummonSLeftR = SummonTextR+0xDDB8
SummonSLeftG = SummonTextR+0xDDBC
SummonSLeftB = SummonTextR+0xDDC0
SummonSRightR = SummonTextR+0xDDF8
SummonSRightG = SummonTextR+0xDDFC
SummonSRightB = SummonTextR+0xDE00
SummonMLeftR = SummonTextR+0xDD38
SummonMLeftG = SummonTextR+0xDD3C
SummonMLeftB = SummonTextR+0xDD40
SummonMRightR = SummonTextR+0xDD78
SummonMRightG = SummonTextR+0xDD7C
SummonMRightB = SummonTextR+0xDD80
SummonELeftR = SummonTextR+0xDC78
SummonELeftG = SummonTextR+0xDC7C
SummonELeftB = SummonTextR+0xDC80
SummonERightR = SummonTextR+0xDCB8
SummonERightG = SummonTextR+0xDCBC
SummonERightB = SummonTextR+0xDCC0
SummonStartLeftR = SummonTextR+0x4700
SummonStartLeftG = SummonTextR+0x4704
SummonStartLeftB = SummonTextR+0x4708
SummonStartRightR = SummonTextR+0x7700
SummonStartRightG = SummonTextR+0x7704
SummonStartRightB = SummonTextR+0x7708
SummonSelectLeftR = SummonTextR+0xDEB8
SummonSelectLeftG = SummonTextR+0xDEBC
SummonSelectLeftB = SummonTextR+0xDEC0
SummonSelectRightR = SummonTextR+0xDEF8
SummonSelectRightG = SummonTextR+0xDEFC
SummonSelectRightB = SummonTextR+0xDF00
SummonEffectLeftR = SummonTextR+0xDFF8
SummonEffectLeftG = SummonTextR+0xDFFC
SummonEffectLeftB = SummonTextR+0xE000
SummonEffectMiddleR = SummonTextR+0xE018
SummonEffectMiddleG = SummonTextR+0xE01C
SummonEffectMiddleB = SummonTextR+0xE020
SummonEffectRightR = SummonTextR+0xE098
SummonEffectRightG = SummonTextR+0xE09C
SummonEffectRightB = SummonTextR+0xE0A0
SummonEffectEndR = SummonTextR+0xE0B8
SummonEffectEndG = SummonTextR+0xE0BC
SummonEffectEndB = SummonTextR+0xE0C0
SummonGroundLineR = SummonTextR+0x4640
SummonGroundLineG = SummonTextR+0x4644
SummonGroundLineB = SummonTextR+0x4648
WriteInt(SummonTextR, SummonTextCR)
WriteInt(SummonTextG, SummonTextCG)
WriteInt(SummonTextB, SummonTextCB)
WriteInt(SummonSymbolR, SummonMenuSymbolR)
WriteInt(SummonSymbolG, SummonMenuSymbolG)
WriteInt(SummonSymbolB, SummonMenuSymbolB)
WriteFloat(SummonSLeftR, SummonDropDownR)
WriteFloat(SummonSLeftG, SummonDropDownG)
WriteFloat(SummonSLeftB, SummonSelectB)
WriteFloat(SummonSRightR, SummonDropDownR)
WriteFloat(SummonSRightG, SummonDropDownG)
WriteFloat(SummonSRightB, SummonSelectB)
WriteFloat(SummonMLeftR, SummonDropDownR)
WriteFloat(SummonMLeftG, SummonDropDownG)
WriteFloat(SummonMLeftB, SummonDropDownB)
WriteFloat(SummonMRightR, SummonDropDownR)
WriteFloat(SummonMRightG, SummonDropDownG)
WriteFloat(SummonMRightB, SummonDropDownB)
WriteFloat(SummonELeftR, SummonDropDownR)
WriteFloat(SummonELeftG, SummonDropDownG)
WriteFloat(SummonELeftB, SummonDropDownB)
WriteFloat(SummonERightR, SummonDropDownR)
WriteFloat(SummonERightG, SummonDropDownG)
WriteFloat(SummonERightB, SummonDropDownB)
WriteInt(SummonStartLeftR, SummonDropDownR)
WriteInt(SummonStartLeftG, SummonDropDownG)
WriteInt(SummonStartLeftB, SummonDropDownB)
WriteInt(SummonStartRightR, SummonDropDownR)
WriteInt(SummonStartRightG, SummonDropDownG)
WriteInt(SummonStartRightB, SummonDropDownB)
WriteFloat(SummonSelectLeftR, SummonSelectR)
WriteFloat(SummonSelectLeftG, SummonSelectG)
WriteFloat(SummonSelectLeftB, SummonSelectB)
WriteFloat(SummonSelectRightR, SummonSelectR)
WriteFloat(SummonSelectRightG, SummonSelectG)
WriteFloat(SummonSelectRightB, SummonSelectB)
WriteFloat(SummonEffectLeftR, SummonBackGroundR)
WriteFloat(SummonEffectLeftG, SummonBackGroundG)
WriteFloat(SummonEffectLeftB, SummonBackGroundB)
WriteFloat(SummonEffectMiddleR, SummonBackGroundR)
WriteFloat(SummonEffectMiddleG, SummonBackGroundG)
WriteFloat(SummonEffectMiddleB, SummonBackGroundB)
WriteFloat(SummonEffectRightR, SummonBackGroundR)
WriteFloat(SummonEffectRightG, SummonBackGroundG)
WriteFloat(SummonEffectRightB, SummonBackGroundB)
WriteFloat(SummonEffectEndR, SummonBackGroundR)
WriteFloat(SummonEffectEndG, SummonBackGroundG)
WriteFloat(SummonEffectEndB, SummonBackGroundB)
WriteInt(SummonGroundLineR, SummonDropDownR)
WriteInt(SummonGroundLineG, SummonDropDownG)
WriteInt(SummonGroundLineB, SummonDropDownB)
end


---------- Steam Version
if stmgames == 1 then
SummonTextR = 0x2853200
SummonTextG = SummonTextR+0x4
SummonTextB = SummonTextR+0x8
SummonSymbolR = SummonTextR-0x300
SummonSymbolG = SummonTextR-0x2FC
SummonSymbolB = SummonTextR-0x2F8
SummonSLeftR = SummonTextR+0xDDB8
SummonSLeftG = SummonTextR+0xDDBC
SummonSLeftB = SummonTextR+0xDDC0
SummonSRightR = SummonTextR+0xDDF8
SummonSRightG = SummonTextR+0xDDFC
SummonSRightB = SummonTextR+0xDE00
SummonMLeftR = SummonTextR+0xDD38
SummonMLeftG = SummonTextR+0xDD3C
SummonMLeftB = SummonTextR+0xDD40
SummonMRightR = SummonTextR+0xDD78
SummonMRightG = SummonTextR+0xDD7C
SummonMRightB = SummonTextR+0xDD80
SummonELeftR = SummonTextR+0xDC78
SummonELeftG = SummonTextR+0xDC7C
SummonELeftB = SummonTextR+0xDC80
SummonERightR = SummonTextR+0xDCB8
SummonERightG = SummonTextR+0xDCBC
SummonERightB = SummonTextR+0xDCC0
SummonStartLeftR = SummonTextR+0x4700
SummonStartLeftG = SummonTextR+0x4704
SummonStartLeftB = SummonTextR+0x4708
SummonStartRightR = SummonTextR+0x7700
SummonStartRightG = SummonTextR+0x7704
SummonStartRightB = SummonTextR+0x7708
SummonSelectLeftR = SummonTextR+0xDEB8
SummonSelectLeftG = SummonTextR+0xDEBC
SummonSelectLeftB = SummonTextR+0xDEC0
SummonSelectRightR = SummonTextR+0xDEF8
SummonSelectRightG = SummonTextR+0xDEFC
SummonSelectRightB = SummonTextR+0xDF00
SummonEffectLeftR = SummonTextR+0xDFF8
SummonEffectLeftG = SummonTextR+0xDFFC
SummonEffectLeftB = SummonTextR+0xE000
SummonEffectMiddleR = SummonTextR+0xE018
SummonEffectMiddleG = SummonTextR+0xE01C
SummonEffectMiddleB = SummonTextR+0xE020
SummonEffectRightR = SummonTextR+0xE098
SummonEffectRightG = SummonTextR+0xE09C
SummonEffectRightB = SummonTextR+0xE0A0
SummonEffectEndR = SummonTextR+0xE0B8
SummonEffectEndG = SummonTextR+0xE0BC
SummonEffectEndB = SummonTextR+0xE0C0
SummonGroundLineR = SummonTextR+0x4640
SummonGroundLineG = SummonTextR+0x4644
SummonGroundLineB = SummonTextR+0x4648
WriteInt(SummonTextR, SummonTextCR)
WriteInt(SummonTextG, SummonTextCG)
WriteInt(SummonTextB, SummonTextCB)
WriteInt(SummonSymbolR, SummonMenuSymbolR)
WriteInt(SummonSymbolG, SummonMenuSymbolG)
WriteInt(SummonSymbolB, SummonMenuSymbolB)
WriteFloat(SummonSLeftR, SummonDropDownR)
WriteFloat(SummonSLeftG, SummonDropDownG)
WriteFloat(SummonSLeftB, SummonSelectB)
WriteFloat(SummonSRightR, SummonDropDownR)
WriteFloat(SummonSRightG, SummonDropDownG)
WriteFloat(SummonSRightB, SummonSelectB)
WriteFloat(SummonMLeftR, SummonDropDownR)
WriteFloat(SummonMLeftG, SummonDropDownG)
WriteFloat(SummonMLeftB, SummonDropDownB)
WriteFloat(SummonMRightR, SummonDropDownR)
WriteFloat(SummonMRightG, SummonDropDownG)
WriteFloat(SummonMRightB, SummonDropDownB)
WriteFloat(SummonELeftR, SummonDropDownR)
WriteFloat(SummonELeftG, SummonDropDownG)
WriteFloat(SummonELeftB, SummonDropDownB)
WriteFloat(SummonERightR, SummonDropDownR)
WriteFloat(SummonERightG, SummonDropDownG)
WriteFloat(SummonERightB, SummonDropDownB)
WriteInt(SummonStartLeftR, SummonDropDownR)
WriteInt(SummonStartLeftG, SummonDropDownG)
WriteInt(SummonStartLeftB, SummonDropDownB)
WriteInt(SummonStartRightR, SummonDropDownR)
WriteInt(SummonStartRightG, SummonDropDownG)
WriteInt(SummonStartRightB, SummonDropDownB)
WriteFloat(SummonSelectLeftR, SummonSelectR)
WriteFloat(SummonSelectLeftG, SummonSelectG)
WriteFloat(SummonSelectLeftB, SummonSelectB)
WriteFloat(SummonSelectRightR, SummonSelectR)
WriteFloat(SummonSelectRightG, SummonSelectG)
WriteFloat(SummonSelectRightB, SummonSelectB)
WriteFloat(SummonEffectLeftR, SummonBackGroundR)
WriteFloat(SummonEffectLeftG, SummonBackGroundG)
WriteFloat(SummonEffectLeftB, SummonBackGroundB)
WriteFloat(SummonEffectMiddleR, SummonBackGroundR)
WriteFloat(SummonEffectMiddleG, SummonBackGroundG)
WriteFloat(SummonEffectMiddleB, SummonBackGroundB)
WriteFloat(SummonEffectRightR, SummonBackGroundR)
WriteFloat(SummonEffectRightG, SummonBackGroundG)
WriteFloat(SummonEffectRightB, SummonBackGroundB)
WriteFloat(SummonEffectEndR, SummonBackGroundR)
WriteFloat(SummonEffectEndG, SummonBackGroundG)
WriteFloat(SummonEffectEndB, SummonBackGroundB)
WriteInt(SummonGroundLineR, SummonDropDownR)
WriteInt(SummonGroundLineG, SummonDropDownG)
WriteInt(SummonGroundLineB, SummonDropDownB)

end

---------- Steam JP Version
if stmjpgames == 1 then
SummonTextR = 0x2853200
SummonTextG = SummonTextR+0x4
SummonTextB = SummonTextR+0x8
SummonSymbolR = SummonTextR-0x300
SummonSymbolG = SummonTextR-0x2FC
SummonSymbolB = SummonTextR-0x2F8
SummonSLeftR = SummonTextR+0xDDB8
SummonSLeftG = SummonTextR+0xDDBC
SummonSLeftB = SummonTextR+0xDDC0
SummonSRightR = SummonTextR+0xDDF8
SummonSRightG = SummonTextR+0xDDFC
SummonSRightB = SummonTextR+0xDE00
SummonMLeftR = SummonTextR+0xDD38
SummonMLeftG = SummonTextR+0xDD3C
SummonMLeftB = SummonTextR+0xDD40
SummonMRightR = SummonTextR+0xDD78
SummonMRightG = SummonTextR+0xDD7C
SummonMRightB = SummonTextR+0xDD80
SummonELeftR = SummonTextR+0xDC78
SummonELeftG = SummonTextR+0xDC7C
SummonELeftB = SummonTextR+0xDC80
SummonERightR = SummonTextR+0xDCB8
SummonERightG = SummonTextR+0xDCBC
SummonERightB = SummonTextR+0xDCC0
SummonStartLeftR = SummonTextR+0x4700
SummonStartLeftG = SummonTextR+0x4704
SummonStartLeftB = SummonTextR+0x4708
SummonStartRightR = SummonTextR+0x7700
SummonStartRightG = SummonTextR+0x7704
SummonStartRightB = SummonTextR+0x7708
SummonSelectLeftR = SummonTextR+0xDEB8
SummonSelectLeftG = SummonTextR+0xDEBC
SummonSelectLeftB = SummonTextR+0xDEC0
SummonSelectRightR = SummonTextR+0xDEF8
SummonSelectRightG = SummonTextR+0xDEFC
SummonSelectRightB = SummonTextR+0xDF00
SummonEffectLeftR = SummonTextR+0xDFF8
SummonEffectLeftG = SummonTextR+0xDFFC
SummonEffectLeftB = SummonTextR+0xE000
SummonEffectMiddleR = SummonTextR+0xE018
SummonEffectMiddleG = SummonTextR+0xE01C
SummonEffectMiddleB = SummonTextR+0xE020
SummonEffectRightR = SummonTextR+0xE098
SummonEffectRightG = SummonTextR+0xE09C
SummonEffectRightB = SummonTextR+0xE0A0
SummonEffectEndR = SummonTextR+0xE0B8
SummonEffectEndG = SummonTextR+0xE0BC
SummonEffectEndB = SummonTextR+0xE0C0
SummonGroundLineR = SummonTextR+0x4640
SummonGroundLineG = SummonTextR+0x4644
SummonGroundLineB = SummonTextR+0x4648
WriteInt(SummonTextR, SummonTextCR)
WriteInt(SummonTextG, SummonTextCG)
WriteInt(SummonTextB, SummonTextCB)
WriteInt(SummonSymbolR, SummonMenuSymbolR)
WriteInt(SummonSymbolG, SummonMenuSymbolG)
WriteInt(SummonSymbolB, SummonMenuSymbolB)
WriteFloat(SummonSLeftR, SummonDropDownR)
WriteFloat(SummonSLeftG, SummonDropDownG)
WriteFloat(SummonSLeftB, SummonSelectB)
WriteFloat(SummonSRightR, SummonDropDownR)
WriteFloat(SummonSRightG, SummonDropDownG)
WriteFloat(SummonSRightB, SummonSelectB)
WriteFloat(SummonMLeftR, SummonDropDownR)
WriteFloat(SummonMLeftG, SummonDropDownG)
WriteFloat(SummonMLeftB, SummonDropDownB)
WriteFloat(SummonMRightR, SummonDropDownR)
WriteFloat(SummonMRightG, SummonDropDownG)
WriteFloat(SummonMRightB, SummonDropDownB)
WriteFloat(SummonELeftR, SummonDropDownR)
WriteFloat(SummonELeftG, SummonDropDownG)
WriteFloat(SummonELeftB, SummonDropDownB)
WriteFloat(SummonERightR, SummonDropDownR)
WriteFloat(SummonERightG, SummonDropDownG)
WriteFloat(SummonERightB, SummonDropDownB)
WriteInt(SummonStartLeftR, SummonDropDownR)
WriteInt(SummonStartLeftG, SummonDropDownG)
WriteInt(SummonStartLeftB, SummonDropDownB)
WriteInt(SummonStartRightR, SummonDropDownR)
WriteInt(SummonStartRightG, SummonDropDownG)
WriteInt(SummonStartRightB, SummonDropDownB)
WriteFloat(SummonSelectLeftR, SummonSelectR)
WriteFloat(SummonSelectLeftG, SummonSelectG)
WriteFloat(SummonSelectLeftB, SummonSelectB)
WriteFloat(SummonSelectRightR, SummonSelectR)
WriteFloat(SummonSelectRightG, SummonSelectG)
WriteFloat(SummonSelectRightB, SummonSelectB)
WriteFloat(SummonEffectLeftR, SummonBackGroundR)
WriteFloat(SummonEffectLeftG, SummonBackGroundG)
WriteFloat(SummonEffectLeftB, SummonBackGroundB)
WriteFloat(SummonEffectMiddleR, SummonBackGroundR)
WriteFloat(SummonEffectMiddleG, SummonBackGroundG)
WriteFloat(SummonEffectMiddleB, SummonBackGroundB)
WriteFloat(SummonEffectRightR, SummonBackGroundR)
WriteFloat(SummonEffectRightG, SummonBackGroundG)
WriteFloat(SummonEffectRightB, SummonBackGroundB)
WriteFloat(SummonEffectEndR, SummonBackGroundR)
WriteFloat(SummonEffectEndG, SummonBackGroundG)
WriteFloat(SummonEffectEndB, SummonBackGroundB)
WriteInt(SummonGroundLineR, SummonDropDownR)
WriteInt(SummonGroundLineG, SummonDropDownG)
WriteInt(SummonGroundLineB, SummonDropDownB)
end


end
