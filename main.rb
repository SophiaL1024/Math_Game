require "./players.rb"
require "./game.rb"
require "./play.rb"

p1=Current_player.new "Player 1"
p2=Current_player.new "Player 2"

play=Play.new p1,p2
play.start_game