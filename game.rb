class Game
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @current_player = @player1
  end

  def play
    while !game_over?
      turn = Turn.new(@current_player)
      turn.take_turn
      switch_turns if !game_over?
    end

    announce_winner
  end

  private

  def switch_turns
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over?
    !@player1.is_alive? || !@player2.is_alive?
  end

  def announce_winner
    winner = @player1.is_alive? ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
