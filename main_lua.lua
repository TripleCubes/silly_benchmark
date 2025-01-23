local function get_the_thing(n)
	local n1 = n % 100
	if n1 >= 10 and n1 <= 20 then
		return 'th'
	end

	local nlast = n % 10
	if nlast == 1 then return 'st'
	elseif nlast == 2 then return 'nd'
	elseif nlast == 3 then return 'rd'
	end

	return 'th'
end

local prev = os.clock()

local count = 0
for i = 10, 10000000 do
	if get_the_thing(i) == 'st' then
		count = count + 1
	end
end

local now = os.clock()
print('\t' .. (now - prev) * 1000 .. 'ms, count: ' .. count)
