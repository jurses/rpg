local mapa = require("prueba")
local oem = require("oem")
function love.load()
	mapa1 = oem.new(mapa,2)
end

function love.update(dt)
	mapa1:update(dt)
end

function love.draw()
	mapa1:dibjMapa()
end
