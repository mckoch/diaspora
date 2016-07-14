--#-package:0C160701# -- package signature 
--# dsp Diaspora SC4 base functions: Filing & Configuration 0.1
--# copyright emcekah 2013 - use for personal pleasure
--################################
DiasporaMainDataFile = [[Apps\Diaspora\data.dat]]
DiasporaUserPatchFile = [[Apps\Diaspora\patch.dat]]
dsp = {}
function dsp.CreateDiasporaFile(file)
	local f = io.open(file)
	if not(f) then local f = io.output(file)
		f:write("#0x000000#".. os.time() .. "#" .. file,"\n") f:flush()	end
	f:close()
end
function dsp.addGameStatus(data)
	local f = io.open(DiasporaMainDataFile, "a+") f:seek ("end")
	f:write("#0x000001#" .. os.time() .. "#CONFIG", "\n")
	for i,v in ipairs(data) do local str = split(v,"#")
		--# 
		if str[1] == '0xd0000a' then f:write("#"..str[2].."#" .. dsp.automataGetSourceBuildingCount(str[2]) .. "#" ..str[3], "\n") end
		--# That's where the hook is....
	end
	f:write("#0x000002#" .. sc4game.budget.total_funds().."#current budget", "\n")
	f:write("#0xffffff#", "\n") f:flush() f:close()
end
function dsp.readConfig()
	local lines = {}
	local i = 0
    for line in io.lines(DiasporaUserPatchFile) do 
		table.insert(lines, line) 
		i = i+1
		end
	dsp.saveTo(i, DiasporaMainDataFile, "' readable lines in " .. DiasporaUserPatchFile)
	return lines
end
function dsp.automataGetSourceBuildingCount(key)
	return sc4game.automata.get_source_building_count(hex2dec(key))
end
function dsp.saveTo(data, file, comment)
	local f = io.open(file, "a+") f:seek ("end")
	f:write("#0xfffff0#" .. data	.. "#" .. comment, "\n") 
	f:flush() f:close()
end
--################################
--# Helpers
function split(str, patt)
	vals = {}; valindex = 0; word = ""
	str = str .. patt
	for i = 1, string.len(str) do cha = string.sub(str, i, i)
		if cha ~= patt then word = word .. cha
		else if word ~= nil then
				vals[valindex] = word
				valindex = valindex + 1
				word = ""
			else break
			end
		end 
	end	
	return vals
end
--################################
--# MAIN
dsp.CreateDiasporaFile(DiasporaMainDataFile)
if dsp.addGameStatus(dsp.readConfig()) then dsp.saveTo("#SUCCESS#", DiasporaMainDataFile, "#config loaded.") 
--# create the advisor

end
