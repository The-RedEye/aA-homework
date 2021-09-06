class Simon
  COLORS = %w(R B G Y)

  attr_accessor :sequence_length, :game_over, :seq
  attr_reader :pattern

  def initialize
    @pattern = []
    @continue = true

  end

  def play
    while @continue
      self.add_random_color
      self.take_turn
    end

  end

  def take_turn
    self.show_sequence
    sleep 1
    response = self.require_sequence.upcase
    response_arr = response.split('')
    if response_arr == @pattern
      self.round_success_message
    else
      self.game_over_message
    end
  end

  def show_sequence
    system("clear") 
    p "Good Luck!"
    @pattern.each do |color|
      sleep 0.25
      if color == 'R'
        print " (R)ed -"
      elsif color == 'B'
        print " (B)lue - "
      elsif color == 'G'
        print " (G)reen - "
      elsif color == 'Y'
        print " (Y)ellow - "
      end
    end
    sleep 0.5
  
  end

  def require_sequence
    system("clear")
    p "Please return Pattern using the first letter:"
    p "(R)ed (B)lue (G)reen (Y)ellow"
    p "Example: RGYBBG"
    response = gets.chomp
  end

  def add_random_color
    @pattern << COLORS.sample

  end

  def round_success_message
    p "Pattern Correct"
    sleep 1
    p "Completed #{@pattern.length} rounds"
    sleep 2
    p "Get READDY!!!"
    sleep 2
    system("clear")

  end

  def game_over_message
    p "Game Over"
    sleep 2
    p "Completed #{@pattern.length} rounds"
    sleep 2
    p "Play again? (Y/N)"
    continue = gets.chomp
    until continue.upcase == 'Y' || continue.upcase == 'N'
      p "Play again? (Y/N) - Only input Y or N"
      continue = gets.chomp
    end
    if continue.upcase == 'N'
      @continue = falses
      p "\nThank You for Playing"
      sleep 2
    else
      self.reset_game
    end


  end

  def reset_game
    @pattern = []
    @continue = true



  end
end
