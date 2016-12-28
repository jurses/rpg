local mapa = require("prueba")
local oem = require("oem")
local pers = require ("pers")
local enem = require ("enem")
local mundo = require("mundo")
function love.load()
	mundo1 = mundo.new()
	mapa1 = oem.new(mundo1:obtMundo(),mapa,2)
	cord={x=0,y=0}
	pers1 = pers.new(mundo1:obtMundo(),500,500)
	enem1 = enem.new(mundo1:obtMundo(),0,0)
	mundo1:darEnem(enem1:obtF())
end

function love.update(dt)
	mapa1:update(dt)
	pers1:update(dt)
	enem1:update(dt,pers1:obtPos())
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
	enem1:dibjPers()
	pers1:verPers()
end
