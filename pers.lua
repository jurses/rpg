local pers={}

pers.tocando=0

function pers.beginCallback(fixture1, fixture2, contact)
    if fixture1:getUserData() == "sensor" or fixture2:getUserData() == "sensor" then
        pers.tocando = pers.tocando + 1
    end
end

function pers.endCallback(fixture1, fixture2, contact)
    if fixture1:getUserData() == "sensor" or fixture2:getUserData() == "sensor" then
        pers.tocando = pers.tocando - 1
    end
end

function pers.new(world,x,y)
	local priv = {}
	local publ = {}
	priv.sens = {}
    priv.pers = {}
	priv.cord={x=x or 0,y=y or 0}
	
	priv.pers.b = love.physics.newBody(world,priv.cord.x,priv.cord.y,"dynamic")
	priv.pers.s = love.physics.newCircleShape(25)
	priv.pers.f = love.physics.newFixture(priv.pers.b,priv.pers.s)
	
	priv.sens.b = love.physics.newBody(world,priv.cord.x,priv.cord.y,"dynamic")
	priv.sens.s = love.physics.newCircleShape(50)
	priv.sens.f = love.physics.newFixture(priv.sens.b,priv.sens.s)
	priv.sens.f:setSensor(true)
	priv.sens.f:setUserData("sensor")
	
	world:setCallbacks(pers.beginCallback, pers.endCallback)
	priv.j = love.physics.newWeldJoint(priv.pers.b,priv.sens.b,priv.pers.b:getX(),priv.pers.b:getY(),false)
	
	function priv.movPers(dt)
		if love.keyboard.isDown("w") then
			priv.pers.b:setLinearVelocity(0,-300)
		elseif love.keyboard.isDown("a") then
			priv.pers.b:setLinearVelocity(-300,0)
		elseif love.keyboard.isDown("s") then
			priv.pers.b:setLinearVelocity(0,300)
		elseif love.keyboard.isDown("d") then
			priv.pers.b:setLinearVelocity(300,0)
		else
			priv.pers.b:setLinearVelocity(0,0)
		end
	end

	function priv.verEntr(key)
		priv.cntct = priv.sens.b:getContactList()
		if love.keyboard.isDown("f") and pers.tocando > 0 then
			print(priv.cntct[1])
		end
	end

	function publ:update(dt)
		priv.movPers(dt)
		priv.verEntr()
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
	return publ
end
return pers
