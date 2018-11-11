def contains(word, chars)
    word.chars.each do |x|
       return false unless chars.include? x 
    end
    return true
end

words = File.readlines('noun_dictionary.txt').each {|x| x.chomp!}

chars = gets.chomp

conts = words.select {|x| contains(x, chars)}

el = ''
max = 0
conts.each do |x|
    if x.length > max
       max = x.length
       el = x
    end
end

puts el
