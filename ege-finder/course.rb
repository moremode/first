class Course
   
    def initialize(name, small_description, full_description, legal_entity, website)
        @name = name
       @adresses = %w()
       @full_description = full_description
       @small_description = small_description
       @phones = %w()
       @rate = %w()
       @subjects = %w()
       @legal_entity = legal_entity
       @website = website
       @responses = %w()
    end
    
    def get_small_description
        return @small_description
    end
    
    def get_full_description
        return @full_description
    end
    
    def get_legal_entity
        return @legal_entity
    end
    
    def get_website
        return @website
    end
    
    def get_name
        return @name
    end
    
    def get_adresses
        return @adresses
    end
    
    def get_phones
        return @phones
    end
    
    def get_rate
        return @rate
    end
    
    def get_subjects
        return @subjects
    end
    
    def get_responses
        return @responses
    end
    
    def add_adress(adress)
        @adresses[@adresses.length] = adress
    end
    
    def add_phone(phone)
        @phones[@phones.length] = phone
    end
    
    def add_rate(rate)
       @rate[@rate.length] = rate
    end
    
    def add_subject(subject)
        @subjects[@subjects.length] = subject
    end
    
    def add_response(response)
        @responses[@responses.length] = response
    end
    
    def info
       puts "adresses - адреса центров"
       puts "full_description - полное описание"
       puts "small_description - небольшое описание"
       puts "phones = телефоны"
       puts "rate - рейтинг"
       puts "subjects - предметы, которые преподают в учебном заведении"
       puts "legal_entity - юридическое лицо"
       puts "website - сайт"
       puts "responses - отзывы"
    end
    
end
