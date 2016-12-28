local moverPers = {}

function moverPers:moverM(self)
	if love.keyboard.isDown("w") then
		self:setLinearVelocity(0,-300)
	elseif love.keyboard.isDown("a") then
		self:setLinearVelocity(-300,0)
	elseif love.keyboard.isDown("s") then
		self:setLinearVelocity(0,300)
	elseif love.keyboard.isDown("d") then
		self:setLinearVelocity(300,0)
	else
		self:setLinearVelocity(0,0)
	end
end

return moverPers
