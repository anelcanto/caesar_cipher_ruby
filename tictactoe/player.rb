class Player
    
    def initialize(mark)
        @Mark = mark
    end
    def select_space()
        return gets.to_i
    end
    def mark()
        return @Mark
    end
end

# player2 = Player.new('I')
# p  player2.@Mark



