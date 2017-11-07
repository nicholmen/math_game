require './Player.rb'
require './Game.rb'

player1 = MathGame::Player.new('whack_jack')
player2 = MathGame::Player.new('chill_jill')

game = MathGame::Game.new(player1, player2)

game.turn
