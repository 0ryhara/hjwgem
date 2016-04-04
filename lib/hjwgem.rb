

class Hjwgem
  def self.winner a_odds=50, number_of_games=3
    a_wins = 0
    z_wins = 0
    game_number = 1
    while a_wins < (number_of_games+1)/2 && z_wins < (number_of_games+1)/2
      result = Random::rand 100
      if result < a_odds
        a_wins += 1
        puts "A wins game #{game_number} (#{result})"
      else
        z_wins += 1
        puts "Z wins game #{game_number} (#{result})"
      end
      game_number += 1
    end
    if a_wins > z_wins
      puts "A wins #{a_wins} games to #{z_wins}"
      winner = 'A'
    else
      puts "Z wins #{z_wins} games to #{a_wins}"
      winner = 'Z'
    end
    winner
  end
end