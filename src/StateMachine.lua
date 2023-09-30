-- Passes update and draw calls to states. Switch states by changing
-- the (singleton) state machine object's current_state.
StateMachine = class()

function StateMachine:init()
  self.states = {
    title_state = TitleState(),
    play_state = PlayState(),
    game_over_state = GameOverState(),
  }
  self.current_state = self.states.title_state
end

function StateMachine:update()
  self.current_state:update()
end

function StateMachine:draw()
  self.current_state:draw()
end