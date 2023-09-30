function _init()
  state_machine = StateMachine()
end

function _update()
  state_machine:update()
end

function _draw()
  state_machine:draw()
end


-- helpers
function x_center(s)
  -- screen center minus the string length times the 
  -- pixels in a char's width, cut in half
  return 64-#s*2
end

function y_center(s)
  -- screen center minus the string height in pixels, cut in half
  return 61
end