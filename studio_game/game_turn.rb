module GameTurn

  def self.die_roll
    rand(1..6)
  end

  def self.take_turn(player)

    number_rolled = die_roll
    case number_rolled
    when 5..6
      player.w00t
    when 3..4
      puts "#{player.name} got skipped"
    when 1..2
      player.blam
    end
    treasure = TreasureTrove.random
    player.found_treasure(treasure)
    #puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points."

  end


end