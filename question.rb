class Question
  attr_reader :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def ask_question(player_name)
    puts "#{player_name}: What does #{@number1} plus #{@number2} equal?"
  end

  def correct_answer?(input)
    input.to_i == @answer
  end
end
