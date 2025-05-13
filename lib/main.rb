# frozen_string_literal: true

require_relative 'game'

game = Game.new(3, %w[X 𑢵])

until game.game_over?
  pos = game.take_turn
  game.make_move(pos)
end
