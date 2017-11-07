module MathGame
  
  class Player

    attr_reader :name, :lives_remaining

    def initialize(name, lives=3)
      @name = name
      @lives = lives
      @lives_remaining = lives
    end

    def take_life
      @lives_remaining = @lives_remaining-1
      nil
    end
  
  end

end
