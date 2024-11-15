class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..40)
    @num2 = rand(1..40)
  end

  def generate
    "What does #{num1} plus #{num2} equal?"
  end

  def correct_answer(answer)
    answer == num1 + num2
  end
end

