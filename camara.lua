camara = {}
camara.x = 0
camara.y = 0
camara.scaleX = 1
camara.scaleY = 1
camara.rotation = 0

function camara:set()
  love.graphics.push()
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(1 / self.scaleX, 1 / self.scaleY)
  love.graphics.translate(-self.x, -self.y)
end

function camara:unset()
  love.graphics.pop()
end

function camara:move(dx, dy)
  self.x = self.x + (dx or 0)
  self.y = self.y + (dy or 0)
end

function camara:rotate(dr)
  self.rotation = self.rotation + dr
end

function camara:scale(sx, sy)
  sx = sx or 1
  self.scaleX = self.scaleX * sx
  self.scaleY = self.scaleY * (sy or sx)
end

function camara:setPosition(x, y)
  self.x = x or self.x
  self.y = y or self.y
end

function camara:setScale(sx, sy)
  self.scaleX = sx or self.scaleX
  self.scaleY = sy or self.scaleY
end

return camara
