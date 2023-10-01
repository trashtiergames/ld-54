PlayState = class()

function PlayState:init()
  destroy_button = Button("destroy", 72, 0)
  end_day_button = Button("end_day", 96, 0)
  buildings = {
    Building("well", 13, 0, 56, 3, 3),
    Building("reactor", 176, 0, 86, 2, 2),
    Building("garden", 208, 40, 56, 2, 3),
    Building("aquaponics", 9, 32, 86, 4, 4),
    Building("greenhouse", 61, 80, 94, 3, 2),
    Building("aerodrome", 92, 72, 64, 4, 4)
  }
end

function PlayState:update()
  destroy_button:update()
  end_day_button:update()

  if (btnp(4)) state_machine.current_state = state_machine.states.game_over_state
end

function PlayState:draw()
  cls()
  map(0, 0)
  destroy_button:draw()
  end_day_button:draw()
  for _, bldg in ipairs(buildings) do
    bldg:draw()
  end
end
