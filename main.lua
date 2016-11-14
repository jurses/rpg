local gmltl = require("gmltl")
local mapa = require("tp")
local img = love.graphics.newImage("minas.png")

function love.load()
	mapa = gmltl.nuevaCapa(mapa,1 )
	mapa:nuevoset_M(img, 1)
	mapa:leerCapa()
end

function love.update(dt)

end

function love.draw()
	mapa:mostrarCapa()
end
