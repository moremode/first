require "./course.rb"

class Search
   
    def initialize(courses)
        @courses = courses
    end
    
    def search_by_course_name(name)
        return @courses.find {|c| c.get_name == name}
    end
    
    def search_by_course_subjects(subjects)
        return @courses.select {|c| !(c.get_subject & subjects).empty?}
    end
    
    def search_by_course_rate(min_rate)
        return @courses.select{|c| c.get_rate.inject(0){ |result, elem| result + elem } / c.get_rate.length.to_f > min_rate}
    end
    
    def info
       puts "courses - все курсы, имеющиеся на сайте" 
    end
end
