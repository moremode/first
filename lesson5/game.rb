require './player.rb'
require './piece.rb'

class Game
   
    def initialize(pl1, pl2, first)
        @player1 = pl1
        @player2 = pl2
        @first_move = first
        
        @player1.set_sequence first
        @player2.set_sequence !first
        
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
    
    
    def start_game
        puts "Начало игры"
    end
    
    def move(x1, y1, x2, y2)
        puts "Ход фишкой"
        p2 = @pieces.find {|x| x.pos_x == x1 && x.pos_y == y1 && !x.is_defeat?}
        p = @pieces.find {|x| x.pos_x == x1 && x.pos_y == y1 && !x.is_defeat?}
        if (p2 == nil || (p1.get_owner != p2.get_owner))  
            p.set_x x2
            p.set_y y2
            if (p2 != nil)
                p2.defeat
            end
        end
    end
    
    def change_moving_player
        puts "Смена хода"
        if victory_check == 1
            @player1.victory
            @player2.defeat
        elsif victory_check == 2
            @player2.victory
            @player1.defeat
        end
    end
    
    def victory_check
       puts "Проверка, поставил ли один другому мат, возвращает 1, если победил первый игрок, 2 - если второй"
       return 0
    end
    
    def info
       puts "player1 - Переменная первого игрока"
       puts "player2 - Переменная второго игрока"
       puts "first_move - если true, то первым ходит pl1"
       puts "pieces - описание всех фишек на поле"
    end
end
