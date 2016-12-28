local enem={}

function enem.new(world,x,y)
	local priv = {}
	local publ = {}
	priv.sens = {}
    priv.enem = {}
	priv.cord={x=x or 0,y=y or 0}
	priv.paralizado = false
	
	priv.enem.b = love.physics.newBody(world,priv.cord.x,priv.cord.y,"dynamic")
	priv.enem.s = love.physics.newCircleShape(25)
	priv.enem.f = love.physics.newFixture(priv.enem.b,priv.enem.s)
	
	priv.sens.b = love.physics.newBody(world,priv.cord.x,priv.cord.y,"dynamic")
	priv.sens.s = love.physics.newCircleShape(50)
	priv.sens.f = love.physics.newFixture(priv.sens.b,priv.sens.s)
	priv.sens.f:setSensor(true)
	priv.sens.f:setUserData("sensorEnem")
	
	priv.j = love.physics.newWeldJoint(priv.enem.b,priv.sens.b,priv.enem.b:getX(),priv.enem.b:getY(),false)
	
	function priv.movPers(dt,ppPos)
		if not priv.paralizado then
			if ppPos[1] - priv.enem.b:getX() > 0 and ppPos[2] - priv.enem.b:getY() > 0 then
				priv.enem.b:setLinearVelocity(50,50)
				-- primer cuadrante
			elseif ppPos[1] - priv.enem.b:getX() < 0 and ppPos[2] - priv.enem.b:getY() < 0 then
				priv.enem.b:setLinearVelocity(-50,-50)
				--tercer cuadrante
			elseif ppPos[1] - priv.enem.b:getX() < 0 and ppPos[2] - priv.enem.b:getY() > 0 then
				priv.enem.b:setLinearVelocity(-50,50)
				--segundo cuadrante
			elseif ppPos[1] - priv.enem.b:getX() > 0 and ppPos[2] - priv.enem.b:getY() < 0 then
				priv.enem.b:setLinearVelocity(50,-50)
				--cuarto cuadrante
			end
		end
	end

	function publ:update(dt,ppPos)
		priv.movPers(dt,ppPos)
	end

	function publ:reaccion()
		if self == "patada" then
			priv.paralizado = true
			priv.enem.b:setLinearVelocity(-100,-100)
		end
	end

	function publ:obtF()
		return priv.enem.f
	end

	function publ:dibjPers()
		love.graphics.setColor(255,55,100,128)
		love.graphics.circle("fill",priv.sens.b:getX(),priv.sens.b:getY(),priv.sens.s:getRadius())
		love.graphics.setColor(255,55,100)
		love.graphics.circle("fill",priv.enem.b:getX(),priv.enem.b:getY(),priv.enem.s:getRadius())
		love.graphics.setColor(255,255,255)
	end
	return publ
end
return enem
