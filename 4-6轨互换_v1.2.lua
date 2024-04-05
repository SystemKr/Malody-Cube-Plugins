PluginName='4-6-Wipe'
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
		if column == 3 then --Change column
            Editor:SetNoteX(array[i], 5)
        elseif column == 5 then
            Editor:SetNoteX(array[i], 3)
        end
        if column >= 3 and column <=5 then --Change flag
            if flag == 2 then
                Editor:SetNoteFlag(array[i], 8)
            elseif flag == 8 then
                Editor:SetNoteFlag(array[i], 2)
            end
        end 
	end
	Editor:FinishBatch()
end

--Made by SystemKr
