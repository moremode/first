require './player.rb'

class Piece
   
    def initialize(owner, x, y, type)
        @owner = owner
        @x = x
        @y = y
        @type = type
        @defeat = false
    end
    
    def is_defeat?
        puts "Уничтожена ли фигура"
        return @defeat
    end
    
    def pos_x
        return @x
    end
    
    def pos_y
        return @y
    end
    
    def defeat
        puts "Уничтожение"
        @defeat = true
    end
    
    def set_x(x)
        puts "Перемещение по X"
        if (x >= 9)
            x = 8
        elsif (x <= 0)
            x = 1
        end
        @x = x
    end
    
    def set_y(y)
        puts "Перемещение по Y"
        if (y >= 9)
            y = 8
        elsif (y <= 0)
            y = y
        end
        @y = y
    end
    
end
