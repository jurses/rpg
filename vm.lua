local vm = {}

function vm.nuevaCapa(mapa, capa)
	local priv = {}
	local publ ={}

	priv.indice = 0	-- aún no me acuerdo de lo que hacía pero es necesaria en leerCapa
	priv.matrixaux = {}	-- matriz auxiliar

	if mapa.layers[capa].type == "tilelayer" then	-- capa sólo de dibujo
		local quad = {}

		for i=1, #mapa.tilesets do
			quad[i] = {}
		end

		function publ:nuevoset_M(img_mos, indet)	-- se necesitan la imagen atlas y el identificador para encontrarlo
			priv.indice = indet
			--[[
			-- hm y hw representan los nº de mosaicos que existen en la imagen atlas.
			----]]
			local hw = mapa.tilesets[indet].imagewidth / mapa.tilesets[indet].tilewidth
			local hh = mapa.tilesets[indet].imageheight / mapa.tilesets[indet].tileheight
			priv.mapaBatch = love.graphics.newSpriteBatch(img_mos, mapa.width*mapa.height)

			for i=1, hh do
				for j=1, hw do
					local indice = (i-1)*(mapa.tilesets[indet].imagewidth / mapa.tilesets[indet].tilewidth) + j
					local pos = {x,y}
					local dim = {w,h,imgw,imgh}
					pos.x = (j-1)*mapa.tilesets[indet].tileheight
					pos.y = (i-1)*mapa.tilesets[indet].tilewidth
					dim.w = mapa.tilesets[indet].tilewidth
					dim.h = mapa.tilesets[indet].tileheight
					dim.imgw = mapa.tilesets[indet].imagewidth
					dim.imgh = mapa.tilesets[indet].imageheight

					quad[indet][indice] = love.graphics.newQuad(pos.x, pos.y, dim.w, dim.h, dim.imgw, dim.imgh)
				end
			end
		end

		function publ:leerCapa()
			local x,y

			for i,v in ipairs(mapa.layers[capa].data) do
				if priv.indice > 1 then
					v = v - mapa.tilesets[priv.indice].firstgid + 1
				end
				priv.matrixaux[i] = v
				if((i % mapa.layers[capa].width) == 0) then
					x = mapa.layers[capa].width
					y = i/mapa.layers[capa].width	-- ¿Por qué no height?
				else
					x = i % mapa.layers[capa].width
					y = math.floor(i/mapa.layers[capa].width) + 1
				end

				if v ~= 0 then
					local dim = {w,h}
					dim.w = (x-1)*mapa.tilesets[priv.indice].tilewidth
					dim.h = (y-1)*mapa.tilesets[priv.indice].tileheight

					priv.mapaBatch:add(quad[priv.indice][v], dim.w, dim.h)
				end
			end
		end

		function publ:mostrarCapa(x, y)
			x = x or 0
			y = y or 0
			love.graphics.draw(priv.mapaBatch,x,y)
		end
	return publ
end
return vm
