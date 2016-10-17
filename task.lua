function div(a, b)
	ans = a/b 
	-- convert ans to string
	string_ans = tostring(ans)
	if ans%1 ~= 0 then
		num = string_split(string_ans, ".")[1]
		dec = string_split(string_ans, ".")[2]
		
		if string.len(dec) > 1 then
			dec = "(" ..string.sub(dec, 1, 1) .. ")"
			print(num.."."..dec)
		elseif string.len(dec) == 1 then
			print(num.."."..dec)
		end	
	else print(string_ans) end
end	


--This is just a utility function to perform string split, Lua scripting language doesn't have a string.split() function. ::Please ignore::

function string_split(text, delim)
    -- returns an array of fields based on text and delimiter (one character only)
    local result = {}
    local magic = "().%+-*?[]^$"

    if delim == nil then
        delim = "%s"
    elseif string.find(delim, magic, 1, true) then
        -- escape magic
        delim = "%"..delim
    end

    local pattern = "[^"..delim.."]+"
    for w in string.gmatch(text, pattern) do
        table.insert(result, w)
    end
    return result
end


div(10, 2)

