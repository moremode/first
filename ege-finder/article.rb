class Article
   
    def initialize
        @text = ""
    end
    
    def add_header(text)
        @text = @text + "\n[h1]" + text
        puts "Добавление заголовка"
    end
    
    def add_text(text)
        @text = @text + "\n" + text
        puts "Добавление текста"
    end
    
    def get_text
        return @text
    end
    
    def info
        puts "text - текст статьи"
    end
end
