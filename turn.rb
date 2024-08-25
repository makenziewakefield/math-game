class Turn
  def initialize(player)
    @player = player
    @question = Question.new
  end

  def take_turn
    @question.ask_question(@player.name)
    print "> "
    player_answer = gets.chomp

    if @question.correct_answer?(player_answer)
      puts "#{@player.name}: Yes! You are correct."
    else
      puts "#{@player.name}: Seriously? No!"
      @player.lose_life
    end

    display_scores
  end

  private

  def display_scores
    puts "P1: #{@player.name} - #{@player.lives}/3 vs P2: #{@player.lives}/3"
    puts "---NEW TURN---"
  end
end
