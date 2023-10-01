Button = class()

function Button:init(type, x, y)
  self.sprite_id = nil
  self.x = x
  self.y = y
  -- w and h in terms of 8x8 sprites
  self.w = 2
  self.h = 2
  self.down = false
  self.type = type
end

function Button:update()
  if mouse_l_down and self:contains_mouse() then
    self.down = true
    if self.type == "destroy" then
      self.sprite_id = 34
    elseif self.type == "end_day" then
      self.sprite_id = 144
    end
  else
    self.down = false
    if self.type == "destroy" then
      self.sprite_id = 32
    elseif self.type == "end_day" then
      self.sprite_id = 100
    end
  end
end

function Button:draw()
  if self.down then
    write_to_green_box(self.type .. "  btn down") 
  end

  spr(self.sprite_id, self.x, self.y, self.w, self.h)
end

function Button:contains_mouse()
  local mouse_x = stat(32)
  local mouse_y = stat(33)
  if ((mouse_x > self.x) and (mouse_x < self.x + self.w * 8)
      and (mouse_y > self.y) and (mouse_y < self.y + self.h * 8)) then
    return true
  else
    return false
  end
end