class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts "#{color}"
      sleep(1)
    end
    system('clear')
  end

# The goal of require_sequence is to prompt the user to repeat back
# the new sequence that was just shown to them, one color at a time.
# If they give an incorrect color, it should immediately set @game_over to be true.
  def require_sequence
    puts "Enter the sequence of colors seperated by spaces:"
    sequence = gets.chomp.split(/ /)
    @game_over = true if sequence.length != @sequence_length
    sequence.each_index do |i|
      @game_over = true unless sequence[i] == @seq[i]
    end
  end

  def add_random_color
    @seq.push(COLORS.sample)
  end

  def round_success_message
    puts "You made it to the next round!"
    sleep(3)
    system('clear')
  end

  def game_over_message
    puts "Game over."
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end

if __FILE__ == $0
  game = Simon.new
  game.play
end
