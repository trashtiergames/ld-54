PlayState = class()

function PlayState:init()
  destroy_button = Button("destroy", 72, 0)
  end_day_button = Button("end_day", 96, 0)
  buildings = {
    Building("well", "s", 0, 56),
    Building("reactor", "s", 0, 86),
    Building("garden", "s", 40, 56),
    Building("aquaponics", "s", 32, 86),
    Building("greenhouse", "s", 80, 94),
    Building("aerodrome", "s", 72, 64)
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
