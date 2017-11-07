module MathGame
  class Game
    
    def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
      @current_player = @player1
    end

    def show_score
      puts "#{@player1.name}: #{@player1.lives_remaining}/3 vs #{@player2.name}: #{@player2.lives_remaining}/3"
    end

    def turn
      n1 = rand(1...20)
      n2 = rand(1...20)
      correct_answer = n1 + n2

      puts "---- NEW TURN ----"
      puts "#{@current_player.name}: What does #{n1} + #{n2} equal?"
      opponent_answer = gets.chomp

      if opponent_answer.to_i == correct_answer
        msg = "Correct!"
        show_score
      else
        @current_player == @player1 ? @player2.take_life : @player1.take_life
        msg = "Incorrect!"
        show_score
      end

      if ((@player1.lives_remaining == 0) || (@player2.lives_remaining == 0))
        puts "---- GAME OVER ----"
        puts "#{@current_player.name} wins with a score of #{@current_player.lives_remaining}/3"
        puts "Good bye!"
      else 
        puts "#{@current_player.name}: #{msg}"
        #switch turns
        @current_player = @current_player == @player1 ? @player2 : @player1
        turn
      end

    end

  end

end

    
