require_relative 'player'
require_relative 'question'

class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def start
    until game_over?
      question = Question.new
      puts "#{@current_player.name}: #{question.generate}"
      answer = gets.chomp.to_i
      if question.correct_answer(answer)
        puts "Correct!"
      else
        puts "No!"
        @current_player.lose_point
      end
      display_scores
      switch_turns
    end
    announce_winner
  end

  def switch_turns
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_over?
    @player1.points == 0 || @player2.points == 0
  end

  def announce_winner
    winner = (@player1.points > 0) ? @player1 : @player2
    puts "#{winner.name} wins with #{winner.points} points remaining."
    puts "----- GAME OVER -----"
    puts "Bye!"
  end

  def display_scores
    puts "#{@player1.status} vs #{@player2.status}"
    puts "----- NEW TURN -----"
  end
end
