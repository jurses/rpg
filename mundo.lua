local mundo = {}


function mundo.new()
	local publ = {}
	local priv = {}
	priv.mundo = love.physics.newWorld(0,0,true)
	priv.enem = {}
	world:setCallbacks(mundo.priv.beginCallback, mundo.priv.endCallback)

	function mundo.priv.beginCallback(fixture1, fixture2, contact)
		if fixture1:getUserData() == "sensor" or fixture2:getUserData() == "sensor" then
		end
	end

	function mundo.priv.endCallback(fixture1, fixture2, contact)
		if fixture1:getUserData() == "sensor" or fixture2:getUserData() == "sensor" then
		end
	end

	function publ:obtMundo()
		return priv.mundo
	end

	function publ:darEnem(fixture)
		table.insert(priv.enem,fixture)
	end

	function publ:esEnem(fixture)
		for i,v in ipairs(priv.enem) do
			if fixture == v then 
				return true
			end
		end

		return false
	end

	return publ
end

return mundo
