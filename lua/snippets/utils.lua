return {
  capitalize = function(args, parent, user_args)
    local string = args[1][1]
    return (string:gsub("^%l", string.upper))
  end,
}
