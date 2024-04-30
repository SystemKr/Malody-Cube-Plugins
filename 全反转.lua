PluginName='全反转'
PluginMode=9
PluginType=0
PluginRequire='6.0.0'

function Run()
	Editor:ShowMessage("已开始，请检查谱面以防止出现bug")
	local array = Editor:GetSelectNotes()
	Editor:StartBatch()
	for i = 0, array.Length-1 do
		local column = Editor:GetNoteX(array[i])
		local flag = Editor:GetNoteFlag(array[i])
		if column >= 0 and column <= 2 then --Change column
			Editor:SetNoteX(array[i], column+3)
		elseif column >= 3 and column <= 5 then
			Editor:SetNoteX(array[i], column-3)
		end
	end
	Editor:FinishBatch()
end

--Made by SystemKr
