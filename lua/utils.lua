return {
	merge = function(destination, source)
		for key, value in ipairs(source) do
			destination[key] = value
		end
	end,
}
