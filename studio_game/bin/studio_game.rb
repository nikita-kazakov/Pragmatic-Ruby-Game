require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/clumsy_player'
require_relative '../lib/berserk_player'

player1 = StudioGame::Player.new("Moe", 100)
player2 = StudioGame::Player.new("Larry", 60)
player3 = StudioGame::Player.new("Curly", 125)
player4 = StudioGame::Player.new("Shemp", 90)
player5 = StudioGame::ClumsyPlayer.new("ClumsyDude", 90)
player6 = StudioGame::BerserkPlayer.new("Berserk", 100)


knuckleheads = StudioGame::Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "/home/osboxes/RubymineProjects/Pragmatic-Ruby-Game/studio_game/bin/players.csv")

knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.add_player(player4)
knuckleheads.add_player(player5)
knuckleheads.add_player(player6)


loop do
  puts "How many rounds? ('quit' to exit)"
  answer = gets.chomp.downcase

  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

#knuckleheads.add_player(player1)
#knuckleheads.add_player(player2)
#knuckleheads.add_player(player3)
#knuckleheads.play

#gameChipmunks = Game.new("chipmunks")
#gameChipmunks.addPlayerTest
#gameChipmunks.play