PlayState = class()

function PlayState:init()

end

function PlayState:update()
  if (btnp(4)) state_machine.current_state = state_machine.states.game_over_state
end

function PlayState:draw()
  cls()
  print("play state", 20, 20)
end
