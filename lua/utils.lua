return {
	merge = function(source, destination)
		for key, value in ipairs(source) do
			destination[key] = value
		end
	end,
}
