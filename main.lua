local mapa = require("prueba")
local oem = require("oem")
local pers = require ("pers")
function love.load()
	mapa1 = oem.new(mapa,2)
	cord={x=0,y=0}
	pers1 = pers.new(mapa1:obtMundo(),500,500)
end

function love.update(dt)
	mapa1:update(dt)
	pers1:update(dt)
	if love.keyboard.isDown("up") then
		cord.y = cord.y + 400*dt
	elseif love.keyboard.isDown("down") then
		cord.y = cord.y - 400*dt
	elseif love.keyboard.isDown("left") then
		cord.x = cord.x + 400*dt
	elseif love.keyboard.isDown("right") then
		cord.x = cord.x - 400*dt
	end
end

function love.draw()
	love.graphics.translate(cord.x,cord.y)
	mapa1:dibjMapa()
	pers1:dibjPers()
	pers1:verPers()
end
