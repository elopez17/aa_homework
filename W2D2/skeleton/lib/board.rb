class Board
  attr_accessor :cups
  attr_reader :player1, :player2, :current_player

  def initialize(name1, name2)
    @cups = Array.new(14) { [:stone, :stone, :stone, :stone] }
    @cups[6] = []
    @cups[13] = []
    @player1 = name1
    @player2 = name2
    @current_player = @player1
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos < 0 || start_pos > 12 || start_pos == 6
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    holder = @cups[start_pos]
    @cups[start_pos] = []
    until holder.empty? do
      start_pos = (start_pos + 1) % 14
      next if start_pos == 6 && current_player_name == @player2
      next if start_pos == 13 && current_player_name == @player1
      @cups[start_pos].push(holder.pop)
    end
    render
    case next_turn(start_pos)
    when -1
      return :switch
    when 0
      return start_pos
    when 1
      return :prompt
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return 1 if ending_cup_idx == 6 || ending_cup_idx == 13
    return -1 if @cups[ending_cup_idx].length == 1
    return 0
  end

  def render
    # print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    # puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    # print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    # puts ""
    # puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
