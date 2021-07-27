local server = {}

function server.GroupShout(cookie, groupid, shoutstring)
	if not tonumber(groupid) then return warn('Please ensure that the group ID is a number and NOT a string.') end
	if not tostring(shoutstring) then return warn('Please ensure that the shout string is a string.') end
	if not tostring(cookie) then return warn('Please ensure that the account cookie is a string.') end
	local httpservice = game:GetService('HttpService')
	local urlfinal = 'https://Luablox.kostiskat.repl.co/Shout?groupid='.. groupid .. '&cookie=' .. cookie .. '&shoutstring=' .. string.gsub(shoutstring, " ", "+")
	httpservice:RequestAsync({Url = urlfinal})
end

function server.setRank(cookie, groupid, target, rankid)
	if not tonumber(groupid) then return warn('Please ensure that the group ID is a number and NOT a string.') end
	if not tonumber(target) then return warn('Please ensure that the id of the targetted user is an integer.') end
	if not tonumber(rankid) then return warn('Please ensure that the rankId is an integer.') end
	if not tostring(cookie) then return warn('Please ensure that the account cookie is a string') end
	local err, success = pcall(function()
		game.Players:GetNameFromUserIdAsync(target)
	end)
	if err then
		warn("An inavlid ID was provided.")
		return
	end
	local httpservice = game:GetService('HttpService')
	local urlfinal = 'https://Luablox.kostiskat.repl.co/setRank?groupid='.. groupid .. '&cookie=' .. cookie .. '&target=' .. target .. '&rankid=' .. rankid
	httpservice:RequestAsync({Url = urlfinal})
end

function server.Promote(cookie, groupid, target)
	if not tonumber(groupid) then return warn('Please ensure that the group ID is a number and NOT a string.') end
	if not tonumber(target) then return warn('Please ensure that the id of the targetted user is an integer.') end
	if not tostring(cookie) then return warn('Please ensure that the account cookie is a string') end
	local err, success = pcall(function()
		game.Players:GetNameFromUserIdAsync(target)
	end)
	if err then
		warn("An inavlid ID was provided.")
		return
	end
	local httpservice = game:GetService('HttpService')
	local urlfinal = 'https://Luablox.kostiskat.repl.co/Promote?groupid='.. groupid .. '&cookie=' .. cookie .. '&target=' .. target
	httpservice:RequestAsync({Url = urlfinal})
end

function server.Demote(cookie, groupid, target)
	if not tonumber(groupid) then return warn('Please ensure that the group ID is a number and NOT a string.') end
	if not tonumber(target) then return warn('Please ensure that the id of the targetted user is an integer.') end
	if not tostring(cookie) then return warn('Please ensure that the account cookie is a string') end
	local err, success = pcall(function()
		game.Players:GetNameFromUserIdAsync(target)
	end)
	if err then
		warn("An inavlid ID was provided.")
		return
	end
	local httpservice = game:GetService('HttpService')
	local urlfinal = 'https://Luablox.kostiskat.repl.co/Demote?groupid='.. groupid .. '&cookie=' .. cookie .. '&target=' .. target
	httpservice:RequestAsync({Url = urlfinal})
end

return server
