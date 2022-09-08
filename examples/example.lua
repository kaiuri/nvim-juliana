local function deep_rev(table)
	local _vals = function(_t)
		local i = 1
		local _r = {}
		for _, v in pairs(_t) do
			_r[i] = v
			i = i + 1
		end
		return _r
	end
	local _keys = function(_t)
		local i = 1
		local _r = {}
		for k, _ in pairs(_t) do
			_r[i] = k
			i = i + 1
		end
		return _r
	end
	local result = {}
	local vals = _vals(table)
	local keys = _keys(table)
	for _ = 1, #keys do
		local idx = #keys
		for v = 1, #vals do
			result[keys[idx]] = vals[v]
			idx = idx - 1
		end
	end

	return result
end
return { deep_rev }
