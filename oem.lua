oem = {}
-- obstáculos y eventos del mapa

function creaPolig(polig,x,y)
	local endresult = {}
	x = x or 0
	y = y or 0
	for vec, pos in ipairs(polig) do
		table.insert(endresult, pos.x+x)
		table.insert(endresult, pos.y+y)
	end

	return endresult
end

function creaFormasPolig(mundo,polig,pos)	-- devuelve una tabla de triángulos del polígono
	local rec = {}
	rec.b = {}
	rec.s = {}
	rec.f = {}
	
	for i,v in ipairs(love.math.triangulate(creaPolig(polig))) do
		table.insert(rec.b,love.physics.newBody(mundo,0,0,"static"))
		table.insert(rec.s,love.physics.newPolygonShape(v,pos.x,pos.y))
		table.insert(rec.f,love.physics.newFixture(rec.poltrb[i],rec.poltrs[i]))
	end
	
	return rec
end

function creaFormasRC(fig)	-- devuelve una forma (shape) de una figura para círculos o rect.
	if fig.shape == "ellipse" then --por ahora hará circ.
		return love.physics.newCircleShape(fig.width)
	elseif fig.shape == "rectangle" then
		return love.physics.newRectangleShape(fig.width,fig.height)
	end
end

function oem.new(mapa,capa)
	publ = {}
	priv = {}
	priv.mundo = love.physics.newWorld(0,0,true)
	priv.polig = {}
	
	if mapa.layers[capa].type == "objectgroup" then
		for i,v in ipairs(mapa.layers[capa].objects) do
			local pos={x=v.x,y=v.y}
			if v.shape == "polygon" then
				priv.polig = creaFormasPolig(priv.mundo,v.polygon[1],pos)
			end
		end
	end

	function oem:obtMundo()
		return priv.mundo
	end
	
	function oem:dibjMapa()
		for i,v in ipairs(priv.polig) do
			love.graphics.polygon(v.b:getWorldPoints(v.s:getPoints()))
		end
	end
 
	function oem:ponMundo(allow)
		priv.mundo:setSleepingAllowed(allow)
	end

	return publ
end
return oem
