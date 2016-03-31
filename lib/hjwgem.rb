

class Hjwgem
  def self.winner a_odds=50, number_of_games=3
    a_wins = 0
    b_wins = 0
    while a_wins < (number_of_games+1)/2 && b_wins < (number_of_games+1)/2
      result = Random::rand 100
      puts result
      if result < a_odds
        a_wins += 1
      else
        b_wins += 1
      end
    end
    if a_wins > b_wins
      puts "a wins #{a_wins} games to #{b_wins}"
    else
      puts "b wins #{b_wins} games to #{a_wins}"
    end

  end
end