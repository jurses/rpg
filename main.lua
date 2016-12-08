local mapa = require("prueba")
local oem = require("oem")
function love.load()
	mapa1 = oem.new(mapa,2)
	love.window.setFullscreen(true)
end

function love.update(dt)
	mapa1:update(dt)
end

function love.draw()
	mapa1:dibjMapa()
end
