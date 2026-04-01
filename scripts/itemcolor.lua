LUAGUI_NAME = "Item HUD Color"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Item HUD Color"

IsEpicGLVersion = 0x3B3379
IsSteamGLVersion = 0x3B2271
IsSteamJPVersion = 0x3B2221

--
ItemTextCR = 196
ItemTextCG = 255
ItemTextCB = 101
-- Used for DropDown and Start/Middle/End
ItemDropDownR = 192
ItemDropDownG = 254
ItemDropDownB = 97
--
ItemMenuSymbolR = 128
ItemMenuSymbolG = 128
ItemMenuSymbolB = 128
-- Selected command
ItemSelectR = 145
ItemSelectG = 223
ItemSelectB = 59
-- Gradient root color
ItemBackGroundR = 68
ItemBackGroundG = 105
ItemBackGroundB = 28

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
		ConsolePrint("Item HUD Color (EPIC GL) - installed")
	end
	
	if ReadLong(IsSteamGLVersion) == 0x7265737563697065 and stmgames == 0 then
		stmgames = 1
		ConsolePrint("Item HUD Color (Steam GL) - installed")
	end
	
	if ReadLong(IsSteamJPVersion) == 0x7265737563697065 and stmjpgames == 0 then
		stmjpgames = 1
		ConsolePrint("Item HUD Color (Steam JP) - installed")
	end

---------- Epic Games Version
if epicgames == 1 then
ItemTextR = 0x28580C0
ItemTextG = ItemTextR+0x4
ItemTextB = ItemTextR+0x8
ItemSymbolR = ItemTextR-0x2F00
ItemSymbolG = ItemTextR-0x2EFC
ItemSymbolB = ItemTextR-0x2EF8
ItemLeftR = ItemTextR+0x5C78
ItemLeftG = ItemTextR+0x5C7C
ItemLeftB = ItemTextR+0x5C80
ItemRightR = ItemTextR+0x5CB8
ItemRightG = ItemTextR+0x5CBC
ItemRightB = ItemTextR+0x5CC0
ItemStartLeftR = ItemTextR+0x5CF8
ItemStartLeftG = ItemTextR+0x5CFC
ItemStartLeftB = ItemTextR+0x5D00
ItemStartRightR = ItemTextR+0x5D38
ItemStartRightG = ItemTextR+0x5D3C
ItemStartRightB = ItemTextR+0x5D40
ItemEndLeftR = ItemTextR+0x5BB8
ItemEndLeftG = ItemTextR+0x5BBC
ItemEndLeftB = ItemTextR+0x5BC0
ItemEndRightR = ItemTextR+0x5BF8
ItemEndRightG = ItemTextR+0x5BFC
ItemEndRightB = ItemTextR+0x5C00
ItemSelectLeftR = ItemTextR+0x5DF8
ItemSelectLeftG = ItemTextR+0x5DFC
ItemSelectLeftB = ItemTextR+0x5E00
ItemSelectRightR = ItemTextR+0x5E38
ItemSelectRightG = ItemTextR+0x5E3C
ItemSelectRightB = ItemTextR+0x5E40
ItemFirstItemLeftR = ItemTextR+0x2AC0
ItemFirstItemLeftG = ItemTextR+0x2AC4
ItemFirstItemLeftB = ItemTextR+0x2AC8
ItemFirstItemRightR = ItemTextR-0x1500
ItemFirstItemRightG = ItemTextR-0x14FC
ItemFirstItemRightB = ItemTextR-0x14F8
ItemSelectEffectLeftR = ItemTextR+0x5F38
ItemSelectEffectLeftG = ItemTextR+0x5F3C
ItemSelectEffectLeftB = ItemTextR+0x5F40
ItemSelectEffectMidR = ItemTextR+0x5F58
ItemSelectEffectMidG = ItemTextR+0x5F5C
ItemSelectEffectMidB = ItemTextR+0x5F60
ItemSelectEffectRightR = ItemTextR+0x5FD8
ItemSelectEffectRightG = ItemTextR+0x5FDC
ItemSelectEffectRightB = ItemTextR+0x5FE0
ItemUGLineR = ItemTextR+0x1980
ItemUGLineG = ItemTextR+0x1984
ItemUGLineB = ItemTextR+0x1988
WriteByte(ItemTextR, ItemTextCR)
WriteByte(ItemTextG, ItemTextCG)
WriteByte(ItemTextB, ItemTextCB)
WriteByte(ItemSymbolR, ItemMenuSymbolR)
WriteByte(ItemSymbolG, ItemMenuSymbolG)
WriteByte(ItemSymbolB, ItemMenuSymbolB)
WriteFloat(ItemLeftR, ItemDropDownR)
WriteFloat(ItemLeftG, ItemDropDownG)
WriteFloat(ItemLeftB, ItemDropDownB)
WriteFloat(ItemRightR, ItemDropDownR)
WriteFloat(ItemRightG, ItemDropDownG)
WriteFloat(ItemRightB, ItemDropDownB)
WriteFloat(ItemStartLeftR, ItemDropDownR)
WriteFloat(ItemStartLeftG, ItemDropDownG)
WriteFloat(ItemStartLeftB, ItemDropDownB)
WriteFloat(ItemStartRightR, ItemDropDownR)
WriteFloat(ItemStartRightG, ItemDropDownG)
WriteFloat(ItemStartRightB, ItemDropDownB)
WriteFloat(ItemEndLeftR, ItemDropDownR)
WriteFloat(ItemEndLeftG, ItemDropDownG)
WriteFloat(ItemEndLeftB, ItemDropDownB)
WriteFloat(ItemEndRightR, ItemDropDownR)
WriteFloat(ItemEndRightG, ItemDropDownG)
WriteFloat(ItemEndRightB, ItemDropDownB)
WriteFloat(ItemSelectLeftR, ItemSelectR)
WriteFloat(ItemSelectLeftG, ItemSelectG)
WriteFloat(ItemSelectLeftB, ItemSelectB)
WriteFloat(ItemSelectRightR, ItemSelectR)
WriteFloat(ItemSelectRightG, ItemSelectG)
WriteFloat(ItemSelectRightB, ItemSelectB)
WriteInt(ItemFirstItemLeftR, ItemDropDownR)
WriteInt(ItemFirstItemLeftG, ItemDropDownG)
WriteInt(ItemFirstItemLeftB, ItemDropDownB)
WriteInt(ItemFirstItemRightR, ItemDropDownR)
WriteInt(ItemFirstItemRightG, ItemDropDownG)
WriteInt(ItemFirstItemRightB, ItemDropDownB)
WriteFloat(ItemSelectEffectLeftR, ItemBackGroundR)
WriteFloat(ItemSelectEffectLeftG, ItemBackGroundG)
WriteFloat(ItemSelectEffectLeftB, ItemBackGroundB)
WriteFloat(ItemSelectEffectMidR, ItemBackGroundR)
WriteFloat(ItemSelectEffectMidG, ItemBackGroundG)
WriteFloat(ItemSelectEffectMidB, ItemBackGroundB)
WriteFloat(ItemSelectEffectRightR, ItemBackGroundR)
WriteFloat(ItemSelectEffectRightG, ItemBackGroundG)
WriteFloat(ItemSelectEffectRightB, ItemBackGroundB)
WriteInt(ItemUGLineR, ItemDropDownR)
WriteInt(ItemUGLineG, ItemDropDownG)
WriteInt(ItemUGLineB, ItemDropDownB)
end


---------- Steam Version
if stmgames == 1 then
ItemTextR = 0x28576C0
ItemTextG = ItemTextR+0x4
ItemTextB = ItemTextR+0x8
ItemSymbolR = ItemTextR-0x2F00
ItemSymbolG = ItemTextR-0x2EFC
ItemSymbolB = ItemTextR-0x2EF8
ItemLeftR = ItemTextR+0x5C78
ItemLeftG = ItemTextR+0x5C7C
ItemLeftB = ItemTextR+0x5C80
ItemRightR = ItemTextR+0x5CB8
ItemRightG = ItemTextR+0x5CBC
ItemRightB = ItemTextR+0x5CC0
ItemStartLeftR = ItemTextR+0x5CF8
ItemStartLeftG = ItemTextR+0x5CFC
ItemStartLeftB = ItemTextR+0x5D00
ItemStartRightR = ItemTextR+0x5D38
ItemStartRightG = ItemTextR+0x5D3C
ItemStartRightB = ItemTextR+0x5D40
ItemEndLeftR = ItemTextR+0x5BB8
ItemEndLeftG = ItemTextR+0x5BBC
ItemEndLeftB = ItemTextR+0x5BC0
ItemEndRightR = ItemTextR+0x5BF8
ItemEndRightG = ItemTextR+0x5BFC
ItemEndRightB = ItemTextR+0x5C00
ItemSelectLeftR = ItemTextR+0x5DF8
ItemSelectLeftG = ItemTextR+0x5DFC
ItemSelectLeftB = ItemTextR+0x5E00
ItemSelectRightR = ItemTextR+0x5E38
ItemSelectRightG = ItemTextR+0x5E3C
ItemSelectRightB = ItemTextR+0x5E40
ItemFirstItemLeftR = ItemTextR+0x2AC0
ItemFirstItemLeftG = ItemTextR+0x2AC4
ItemFirstItemLeftB = ItemTextR+0x2AC8
ItemFirstItemRightR = ItemTextR-0x1500
ItemFirstItemRightG = ItemTextR-0x14FC
ItemFirstItemRightB = ItemTextR-0x14F8
ItemSelectEffectLeftR = ItemTextR+0x5F38
ItemSelectEffectLeftG = ItemTextR+0x5F3C
ItemSelectEffectLeftB = ItemTextR+0x5F40
ItemSelectEffectMidR = ItemTextR+0x5F58
ItemSelectEffectMidG = ItemTextR+0x5F5C
ItemSelectEffectMidB = ItemTextR+0x5F60
ItemSelectEffectRightR = ItemTextR+0x5FD8
ItemSelectEffectRightG = ItemTextR+0x5FDC
ItemSelectEffectRightB = ItemTextR+0x5FE0
ItemUGLineR = ItemTextR+0x1980
ItemUGLineG = ItemTextR+0x1984
ItemUGLineB = ItemTextR+0x1988
WriteInt(ItemTextR, ItemTextCR)
WriteInt(ItemTextG, ItemTextCG)
WriteInt(ItemTextB, ItemTextCB)
WriteInt(ItemSymbolR, ItemMenuSymbolR)
WriteInt(ItemSymbolG, ItemMenuSymbolG)
WriteInt(ItemSymbolB, ItemMenuSymbolB)
WriteFloat(ItemLeftR, ItemDropDownR)
WriteFloat(ItemLeftG, ItemDropDownG)
WriteFloat(ItemLeftB, ItemDropDownB)
WriteFloat(ItemRightR, ItemDropDownR)
WriteFloat(ItemRightG, ItemDropDownG)
WriteFloat(ItemRightB, ItemDropDownB)
WriteFloat(ItemStartLeftR, ItemDropDownR)
WriteFloat(ItemStartLeftG, ItemDropDownG)
WriteFloat(ItemStartLeftB, ItemDropDownB)
WriteFloat(ItemStartRightR, ItemDropDownR)
WriteFloat(ItemStartRightG, ItemDropDownG)
WriteFloat(ItemStartRightB, ItemDropDownB)
WriteFloat(ItemEndLeftR, ItemDropDownR)
WriteFloat(ItemEndLeftG, ItemDropDownG)
WriteFloat(ItemEndLeftB, ItemDropDownB)
WriteFloat(ItemEndRightR, ItemDropDownR)
WriteFloat(ItemEndRightG, ItemDropDownG)
WriteFloat(ItemEndRightB, ItemDropDownB)
WriteFloat(ItemSelectLeftR, ItemSelectR)
WriteFloat(ItemSelectLeftG, ItemSelectG)
WriteFloat(ItemSelectLeftB, ItemSelectB)
WriteFloat(ItemSelectRightR, ItemSelectR)
WriteFloat(ItemSelectRightG, ItemSelectG)
WriteFloat(ItemSelectRightB, ItemSelectB)
WriteInt(ItemFirstItemLeftR, ItemDropDownR)
WriteInt(ItemFirstItemLeftG, ItemDropDownG)
WriteInt(ItemFirstItemLeftB, ItemDropDownB)
WriteInt(ItemFirstItemRightR, ItemDropDownR)
WriteInt(ItemFirstItemRightG, ItemDropDownG)
WriteInt(ItemFirstItemRightB, ItemDropDownB)
WriteFloat(ItemSelectEffectLeftR, ItemBackGroundR)
WriteFloat(ItemSelectEffectLeftG, ItemBackGroundG)
WriteFloat(ItemSelectEffectLeftB, ItemBackGroundB)
WriteFloat(ItemSelectEffectMidR, ItemBackGroundR)
WriteFloat(ItemSelectEffectMidG, ItemBackGroundG)
WriteFloat(ItemSelectEffectMidB, ItemBackGroundB)
WriteFloat(ItemSelectEffectRightR, ItemBackGroundR)
WriteFloat(ItemSelectEffectRightG, ItemBackGroundG)
WriteFloat(ItemSelectEffectRightB, ItemBackGroundB)
WriteInt(ItemUGLineR, ItemDropDownR)
WriteInt(ItemUGLineG, ItemDropDownG)
WriteInt(ItemUGLineB, ItemDropDownB)
end

---------- Steam JP Version
if stmjpgames == 1 then
ItemTextR = 0x28576C0
ItemTextG = ItemTextR+0x4
ItemTextB = ItemTextR+0x8
ItemSymbolR = ItemTextR-0x2F00
ItemSymbolG = ItemTextR-0x2EFC
ItemSymbolB = ItemTextR-0x2EF8
ItemLeftR = ItemTextR+0x5C78
ItemLeftG = ItemTextR+0x5C7C
ItemLeftB = ItemTextR+0x5C80
ItemRightR = ItemTextR+0x5CB8
ItemRightG = ItemTextR+0x5CBC
ItemRightB = ItemTextR+0x5CC0
ItemStartLeftR = ItemTextR+0x5CF8
ItemStartLeftG = ItemTextR+0x5CFC
ItemStartLeftB = ItemTextR+0x5D00
ItemStartRightR = ItemTextR+0x5D38
ItemStartRightG = ItemTextR+0x5D3C
ItemStartRightB = ItemTextR+0x5D40
ItemEndLeftR = ItemTextR+0x5BB8
ItemEndLeftG = ItemTextR+0x5BBC
ItemEndLeftB = ItemTextR+0x5BC0
ItemEndRightR = ItemTextR+0x5BF8
ItemEndRightG = ItemTextR+0x5BFC
ItemEndRightB = ItemTextR+0x5C00
ItemSelectLeftR = ItemTextR+0x5DF8
ItemSelectLeftG = ItemTextR+0x5DFC
ItemSelectLeftB = ItemTextR+0x5E00
ItemSelectRightR = ItemTextR+0x5E38
ItemSelectRightG = ItemTextR+0x5E3C
ItemSelectRightB = ItemTextR+0x5E40
ItemFirstItemLeftR = ItemTextR+0x2AC0
ItemFirstItemLeftG = ItemTextR+0x2AC4
ItemFirstItemLeftB = ItemTextR+0x2AC8
ItemFirstItemRightR = ItemTextR-0x1500
ItemFirstItemRightG = ItemTextR-0x14FC
ItemFirstItemRightB = ItemTextR-0x14F8
ItemSelectEffectLeftR = ItemTextR+0x5F38
ItemSelectEffectLeftG = ItemTextR+0x5F3C
ItemSelectEffectLeftB = ItemTextR+0x5F40
ItemSelectEffectMidR = ItemTextR+0x5F58
ItemSelectEffectMidG = ItemTextR+0x5F5C
ItemSelectEffectMidB = ItemTextR+0x5F60
ItemSelectEffectRightR = ItemTextR+0x5FD8
ItemSelectEffectRightG = ItemTextR+0x5FDC
ItemSelectEffectRightB = ItemTextR+0x5FE0
ItemUGLineR = ItemTextR+0x1980
ItemUGLineG = ItemTextR+0x1984
ItemUGLineB = ItemTextR+0x1988
WriteInt(ItemTextR, ItemTextCR)
WriteInt(ItemTextG, ItemTextCG)
WriteInt(ItemTextB, ItemTextCB)
WriteInt(ItemSymbolR, ItemMenuSymbolR)
WriteInt(ItemSymbolG, ItemMenuSymbolG)
WriteInt(ItemSymbolB, ItemMenuSymbolB)
WriteFloat(ItemLeftR, ItemDropDownR)
WriteFloat(ItemLeftG, ItemDropDownG)
WriteFloat(ItemLeftB, ItemDropDownB)
WriteFloat(ItemRightR, ItemDropDownR)
WriteFloat(ItemRightG, ItemDropDownG)
WriteFloat(ItemRightB, ItemDropDownB)
WriteFloat(ItemStartLeftR, ItemDropDownR)
WriteFloat(ItemStartLeftG, ItemDropDownG)
WriteFloat(ItemStartLeftB, ItemDropDownB)
WriteFloat(ItemStartRightR, ItemDropDownR)
WriteFloat(ItemStartRightG, ItemDropDownG)
WriteFloat(ItemStartRightB, ItemDropDownB)
WriteFloat(ItemEndLeftR, ItemDropDownR)
WriteFloat(ItemEndLeftG, ItemDropDownG)
WriteFloat(ItemEndLeftB, ItemDropDownB)
WriteFloat(ItemEndRightR, ItemDropDownR)
WriteFloat(ItemEndRightG, ItemDropDownG)
WriteFloat(ItemEndRightB, ItemDropDownB)
WriteFloat(ItemSelectLeftR, ItemSelectR)
WriteFloat(ItemSelectLeftG, ItemSelectG)
WriteFloat(ItemSelectLeftB, ItemSelectB)
WriteFloat(ItemSelectRightR, ItemSelectR)
WriteFloat(ItemSelectRightG, ItemSelectG)
WriteFloat(ItemSelectRightB, ItemSelectB)
WriteInt(ItemFirstItemLeftR, ItemDropDownR)
WriteInt(ItemFirstItemLeftG, ItemDropDownG)
WriteInt(ItemFirstItemLeftB, ItemDropDownB)
WriteInt(ItemFirstItemRightR, ItemDropDownR)
WriteInt(ItemFirstItemRightG, ItemDropDownG)
WriteInt(ItemFirstItemRightB, ItemDropDownB)
WriteFloat(ItemSelectEffectLeftR, ItemBackGroundR)
WriteFloat(ItemSelectEffectLeftG, ItemBackGroundG)
WriteFloat(ItemSelectEffectLeftB, ItemBackGroundB)
WriteFloat(ItemSelectEffectMidR, ItemBackGroundR)
WriteFloat(ItemSelectEffectMidG, ItemBackGroundG)
WriteFloat(ItemSelectEffectMidB, ItemBackGroundB)
WriteFloat(ItemSelectEffectRightR, ItemBackGroundR)
WriteFloat(ItemSelectEffectRightG, ItemBackGroundG)
WriteFloat(ItemSelectEffectRightB, ItemBackGroundB)
WriteInt(ItemUGLineR, ItemDropDownR)
WriteInt(ItemUGLineG, ItemDropDownG)
WriteInt(ItemUGLineB, ItemDropDownB)
end


end
