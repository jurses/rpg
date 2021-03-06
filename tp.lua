return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "2016.05.25",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 31,
  height = 25,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 50,
  properties = {},
  tilesets = {
    {
      name = "minas",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../moim/mapa/minas.png",
      imagewidth = 48,
      imageheight = 48,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 9,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 31,
      height = 25,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 3, 1, 2, 2, 1, 1, 1,
        1, 1, 3, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 2, 2, 1, 1,
        2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 2, 2, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 3, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
      }
    },
    {
      type = "objectgroup",
      name = "teleport",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {}
    },
    {
      type = "objectgroup",
      name = "obst",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 38,
          name = "",
          type = "",
          shape = "polygon",
          x = 0,
          y = 112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 112, y = 0 },
            { x = 112, y = -80 },
            { x = 160, y = -80 },
            { x = 160, y = -112 },
            { x = 176, y = -112 },
            { x = 176, y = -64 },
            { x = 128, y = -64 },
            { x = 128, y = 16 },
            { x = 0, y = 16 }
          },
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "polygon",
          x = 160,
          y = 112,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 48 },
            { x = -16, y = 48 },
            { x = -16, y = 144 },
            { x = -32, y = 144 },
            { x = -32, y = 240 },
            { x = 0, y = 240 },
            { x = 0, y = 224 },
            { x = -16, y = 224 },
            { x = -16, y = 160 },
            { x = 0, y = 160 },
            { x = 0, y = 64 },
            { x = 16, y = 64 },
            { x = 16, y = 16 },
            { x = 48, y = 16 },
            { x = 48, y = 48 },
            { x = 96, y = 48 },
            { x = 96, y = 32 },
            { x = 64, y = 32 },
            { x = 64, y = 0 }
          },
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "polygon",
          x = 240,
          y = 160,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 16 },
            { x = 64, y = 16 },
            { x = 64, y = 112 },
            { x = 48, y = 112 },
            { x = 48, y = 128 },
            { x = 16, y = 128 },
            { x = 16, y = 144 },
            { x = -16, y = 144 },
            { x = -16, y = 160 },
            { x = -32, y = 160 },
            { x = -32, y = 176 },
            { x = -48, y = 176 },
            { x = -48, y = 192 },
            { x = -80, y = 192 },
            { x = -80, y = 208 },
            { x = -32, y = 208 },
            { x = -32, y = 192 },
            { x = -16, y = 192 },
            { x = -16, y = 176 },
            { x = 0, y = 176 },
            { x = 0, y = 160 },
            { x = 32, y = 160 },
            { x = 32, y = 144 },
            { x = 64, y = 144 },
            { x = 64, y = 128 },
            { x = 80, y = 128 },
            { x = 80, y = 0 }
          },
          properties = {}
        },
        {
          id = 46,
          name = "",
          type = "",
          shape = "polygon",
          x = 368,
          y = 0,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 16 },
            { x = -48, y = 16 },
            { x = -48, y = 64 },
            { x = -32, y = 64 },
            { x = -32, y = 96 },
            { x = -16, y = 96 },
            { x = -16, y = 112 },
            { x = 0, y = 112 },
            { x = 0, y = 128 },
            { x = 48, y = 128 },
            { x = 48, y = 112 },
            { x = 64, y = 112 },
            { x = 64, y = 96 },
            { x = 80, y = 96 },
            { x = 80, y = 64 },
            { x = 64, y = 64 },
            { x = 64, y = 32 },
            { x = 48, y = 32 },
            { x = 48, y = 16 },
            { x = 32, y = 16 },
            { x = 32, y = 0 },
            { x = 64, y = 0 },
            { x = 64, y = 16 },
            { x = 80, y = 16 },
            { x = 80, y = 48 },
            { x = 96, y = 48 },
            { x = 96, y = 112 },
            { x = 80, y = 112 },
            { x = 80, y = 128 },
            { x = 64, y = 128 },
            { x = 64, y = 144 },
            { x = -16, y = 144 },
            { x = -16, y = 128 },
            { x = -32, y = 128 },
            { x = -32, y = 112 },
            { x = -48, y = 112 },
            { x = -48, y = 80 },
            { x = -64, y = 80 },
            { x = -64, y = 0 }
          },
          properties = {}
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "polygon",
          x = 400,
          y = 16,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -32, y = 0 },
            { x = -32, y = -16 },
            { x = 0, y = -16 }
          },
          properties = {}
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "ellipse",
          x = 208,
          y = 224,
          width = 48,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
