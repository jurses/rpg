local pers={}
local ataque = require("ataque")
local moverPers = require("moverPers")

pers.tocando=0


function pers.new(world,x,y)
	local priv = {}
	local publ = {}
	priv.sens = {}
    priv.pers = {}
	priv.cord={x=x or 0,y=y or 0}

	priv.pers.b = love.physics.newBody(world,priv.cord.x,priv.cord.y,"dynamic")
	priv.pers.s = love.physics.newCircleShape(25)
	priv.pers.f = love.physics.newFixture(priv.pers.b,priv.pers.s)
	priv.pers.f:setUserData("personaje")

	priv.sens.b = love.physics.newBody(world,priv.cord.x,priv.cord.y,"dynamic")
	priv.sens.s = love.physics.newCircleShape(50)
	priv.sens.f = love.physics.newFixture(priv.sens.b,priv.sens.s)
	priv.sens.f:setSensor(true)
	priv.sens.f:setUserData("sensorPers")
	
	priv.j = love.physics.newWeldJoint(priv.pers.b,priv.sens.b,priv.pers.b:getX(),priv.pers.b:getY(),false)
	
	function priv.movPers(dt)
		moverPers:moverM(priv.pers.b)
	end

	function publ:update(dt)
		priv.movPers(dt)
		priv.verEntr()
		priv.atacar()
	end

	function priv.atacar()
		if pers.tocando > 0 and love.keyboard.isDown("h") then
		end
	end

	function publ:verPers()
		love.graphics.print(pers.tocando,100,100)
	end

	function publ:dibjPers()
		love.graphics.setColor(255,255,100,128)
		love.graphics.circle("fill",priv.sens.b:getX(),priv.sens.b:getY(),priv.sens.s:getRadius())
		love.graphics.setColor(255,255,100)
		love.graphics.circle("fill",priv.pers.b:getX(),priv.pers.b:getY(),priv.pers.s:getRadius())
		love.graphics.setColor(255,255,255)
	end

	function publ:obtPos()
		return {priv.pers.b:getX(), priv.pers.b:getY()}
	end
	return publ
end
return pers
