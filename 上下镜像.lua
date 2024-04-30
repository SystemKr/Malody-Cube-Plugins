PluginName='Upside Down'
PluginMode=9
PluginType=0
PluginRequire='6.0.0'

function Run()
	local array = Editor:GetSelectNotes()
	Editor:StartBatch()
	for i = 0, array.Length-1 do
		local column = Editor:GetNoteX(array[i])
		local flag = Editor:GetNoteFlag(array[i])
		if column == 0 or column == 3 then --Change column
			Editor:SetNoteX(array[i], column+2)
		elseif column == 2 or column == 5 then
			Editor:SetNoteX(array[i], column-2)
		end
		if flag == 2 then --Change flag
			Editor:SetNoteFlag(array[i], 8)
		elseif flag == 8 then
			Editor:SetNoteFlag(array[i], 2)
		end
	end
	Editor:FinishBatch()
end

--Made by SystemKr