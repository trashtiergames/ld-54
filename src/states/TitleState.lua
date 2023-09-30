TitleState = class()

function TitleState:init()
  
end

function TitleState:update()
  if (btnp(5)) state_machine.current_state = state_machine.states.play_state
end

function TitleState:draw()
	cls()
  local str = "press v to advance"
  print(str, x_center(str), y_center(str) + 20, 9)
end