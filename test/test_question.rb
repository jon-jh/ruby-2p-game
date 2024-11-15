require_relative '../question'

question = Question.new

puts question.generate

correct=question.num1 + question.num2
puts "Expected #{correct}, Actual #{question.correct_answer(correct)}"
