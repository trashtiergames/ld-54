function _init()
  poke(0x5f2d, 1)
  state_machine = StateMachine()
  mouse_l_down = false
  mouse_l_was_down = false -- not to be used publicly, probably
  mouse_l_released = false

  green_box_timer = 0
  green_box_display_time = 3
  green_box_timer_ticking = false
  green_box_str_1 = ""
  green_box_str_2 = ""
end

function _update()
  -- Check and store left mouse button press status
  if stat(34) == 1 then
    mouse_l_down = true
    mouse_l_was_down = true
  elseif mouse_l_was_down then
    mouse_l_released = true
    mouse_l_was_down = false
  else
    mouse_l_down = false
    mouse_l_was_down = false
    mouse_l_released = false
  end

  state_machine:update()
end

function _draw()
  state_machine:draw()

  -- Update green box timer
  if green_box_timer_ticking then
    print(green_box_str_1, 82, 50, 7)
    print(green_box_str_2, 82, 57, 7)
    green_box_timer += 1/30
    if green_box_timer > green_box_display_time then
      green_box_timer_ticking = false
      green_box_timer = 0
    end
  end

  -- Draw mouse cursor
  spr(96, stat(32)-1, stat(33)-1)
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

-- Max 18 characters!
function write_to_green_box(msg)
  green_box_str_1 = sub(msg, 1, 9)
  green_box_str_2 = sub(msg, 10, 18)
  green_box_timer_ticking = true
  green_box_timer = 0
end