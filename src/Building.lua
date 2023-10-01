Building = class()

function Building:init(name, sprite_id, x, y, w, h)
  self.name = name
  self.sprite_id = sprite_id
  self.x = x
  self.y = y
  -- w and h in terms of 8x8 sprites
  self.w = w
  self.h = h
end

function Building:update()

end

function Building:draw()
  spr(self.sprite_id, self.x, self.y, self.w, self.h)
end