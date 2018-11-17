require './player.rb'
require './piece.rb'

class Game
   
    def initialize(pl1, pl2, first)
        @player1 = pl1
        @player2 = pl2
        @first_move = first
        
        @pieces = Piece[]
        if (first)
            for index in 0.15
                @pieces[index] = Piece.new(pl1, index % 8 + 1, index / 8 + 1, "type")
            end
            for index in 16.31
                @pieces[index] = Piece.new(pl2, 8 - index % 8, 8 - index / 8, "type")
            end
        else
            for index in 0.15
                @pieces[index] = Piece.new(pl2, index % 8 + 1, index / 8 + 1, "type")
            end
            for index in 16.31
                @pieces[index] = Piece.new(pl1, 8 - index % 8, 8 - index / 8, "type")
            end                         
        end
    end
    
end
