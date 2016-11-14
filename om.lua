oem = {}
-- obstáculos y eventos del mapa
function crea_polig(polig,x,y)
	local endresult = {}

	for vec, pos in ipairs(polig) do
		table.insert(endresult, pos.x+x)
		table.insert(endresult, pos.y+y)
	end

	return endresult
end

function crea_obs(fig)
	if fig.shape == "ellipse" then --por ahora hará circ.
		return love.physics.newCircleShape(fig.width)
	elseif fig.shape == "rectangle" then
		return love.physics.newRectangleShape(fig.width,fig.height)
	elseif fig.shape == "polygon" then
		return love.physics.newPolygonShape(crea_polig(fig.polygon,fig.x,fig.y))
	end
end

function oem.new(mapa,capa)
	publ = {}
	priv = {}
	priv.mundo = love.physics.newWorld(0,0,true)
	priv.obs = {}

	if mapa.layers[capa].type == "objectgroup" then
		for i,v in ipairs mapa.layers[capa].objects do
			priv.obs[i] = crea_obs(v)
		end
	end

	function oem:obtMundo()
		return priv.mundo
	end

	function oem:ponMundo(allow)
		priv.mundo:setSleepingAllowed(allow)
	end

	return publ
end
return oem
