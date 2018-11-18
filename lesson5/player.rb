class Player
   
    def initialize(sq, name, level = 0, wins = 0, loses = 0)
        @sequence = sq
        @level = level
        @name = name
        @wins = wins
        @loses = loses
    end
    
    def ready_to_start
		puts "Сообщает на сервер (и/или другим игрокам) о том, что игрок готов начинать игру, как только появится соперник"
	end
    
    def set_sequence(sq)
        puts "Установка: ходит ли игрок первым"
        @sequence = sq
    end
    
    def get_sequence
        puts "Ходит ли игрок первым"
        return @sequence
    end
    
    def up_level
        puts "Повышение уровня игрока"
        @level = @level + 1
    end
    
    def defeat
        puts "Поражение в игре"
        @loses = @loses + 1
    end
    
    def victory
        puts "Победа в игре"
        @wins = @wins + 1
    end
    
    def move_start
       puts "Запуск таймера на ход, оповещение об этом пользователя" 
    end
    
    def move_done
        puts "Отправка на сервер результата хода"
    end
    
    def info
       puts "sequence - ходит ли игрок первым"
       puts "level - уровень игрока"
       puts "name - имя игрока"
       puts "wins - колличество побед"
       puts "loses - колличество поражений"
    end
    
end
