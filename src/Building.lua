Building = class()

function Building:init(name, size, x, y)
  self.name = name
  self.size = size
  self.x = x
  self.y = y
  self:assign_sprites()
  if (self.size == "l") self:assign_stats()
end

function Building:update()

end

function Building:draw()
  spr(self.sprite_id, self.x, self.y, self.w, self.h)
end

function Building:assign_stats()
  if self.name == "well" then
    
  elseif self.name == "reactor" then
    
  elseif self.name == "garden" then
    
  elseif self.name == "aquaponics" then
    
  elseif self.name == "greenhouse" then
    
  elseif self.name == "cosmodrome" then
    
  end
end

function Building:assign_sprites()
  if self.size == "s" then
    if self.name == "well" then
      self.sprite_id = 13
      self.w = 3
      self.h = 3
    elseif self.name == "reactor" then
      self.sprite_id = 176
      self.w = 2
      self.h = 2
    elseif self.name == "garden" then
      self.sprite_id = 208
      self.w = 2
      self.h = 3
    elseif self.name == "aquaponics" then
      self.sprite_id = 9
      self.w = 4
      self.h = 4
    elseif self.name == "greenhouse" then
      self.sprite_id = 61
      self.w = 3
      self.h = 2
    elseif self.name == "cosmodrome" then
      self.sprite_id = 92
      self.w = 4
      self.h = 4
    end
  elseif self.size == "l" then
    if self.name == "well" then
      self.sprite_id = 71
      self.w = 5
      self.h = 5
    elseif self.name == "reactor" then
      self.sprite_id = 52
      self.w = 3
      self.h = 3
    elseif self.name == "garden" then
      self.sprite_id = 65
      self.w = 3
      self.h = 5
    elseif self.name == "aquaponics" then
      self.sprite_id = 146
      self.w = 7
      self.h = 7
    elseif self.name == "greenhouse" then
      self.sprite_id = 4
      self.w = 5
      self.h = 3
    elseif self.name == "cosmodrome" then
      self.sprite_id = 153
      self.w = 7
      self.h = 7
    end
  end
end

