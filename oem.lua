local oem = {}
-- local inspect = require("inspect")
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

function creaFormasPolig(mundo,polig,x,y)	-- devuelve una tabla de triángulos del polígono
	local rec = {}
	rec.b = {}
	rec.s = {}
	rec.f = {}
	
	for i,v in ipairs(love.math.triangulate(creaPolig(polig,x,y))) do
		table.insert(rec.b,love.physics.newBody(mundo,0,0,"static"))
		table.insert(rec.s,love.physics.newPolygonShape(v,x,y))
		table.insert(rec.f,love.physics.newFixture(rec.b[i],rec.s[i]))
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
	priv.canvas = love.graphics.newCanvas(mapa.width*mapa.tilewidth,mapa.height*mapa.tileheight)
	
	if mapa.layers[capa].type == "objectgroup" then
		for i,v in ipairs(mapa.layers[capa].objects) do
			if v.shape == "polygon" then
				table.insert(priv.polig,creaFormasPolig(priv.mundo,v.polygon,v.x,v.y))
			end
		end
	end

	love.graphics.setCanvas(priv.canvas)
		love.graphics.clear()
		love.graphics.setColor(255,255,255)
		for i,v in ipairs(priv.polig) do
			for j=1, #v.b do
				love.graphics.polygon("fill",priv.polig[i].b[j]:getWorldPoints(priv.polig[i].s[j]:getPoints()))
			end
		end
	love.graphics.setCanvas()

	function publ:update(dt)
		priv.mundo:update(dt)
	end
	
	function publ:dibjMapa()
		love.graphics.draw(priv.canvas)
	end
 
	function publ:ponMundo(allow)
		priv.mundo:setSleepingAllowed(allow)
	end

	function publ:obtMundo()
		return priv.mundo
	end

	return publ
end
return oem
