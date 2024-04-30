PluginName='46互换'
PluginMode=9
PluginType=0
PluginRequire='6.0.0'

function Run()
	Editor:ShowMessage("已开始，请检查谱面以防止出现bug")
	local array = Editor:GetSelectNotes()
	Editor:StartBatch()
	for i = 0, array.Length-1 do
		local column = Editor:GetNoteX(array[i])
		if column == 3 then
			Editor:SetNoteX(array[i], 5)
		elseif column == 5 then
			Editor:SetNoteX(array[i], 3)
		end 
	end
	Editor:FinishBatch()
end

--Made by SystemKr
