def endgame(points)
   if (points >= 10)
       puts "You win!"
       return true
   end
   if (points <= -10)
       puts "You lose!"
       return true
   end
   return false
end

words = File.readlines('noun_dictionary.txt').each {|x| x.chomp!.downcase}
points = 0

num = rand(words.length)
word = words[num]
words = words.select{|x| x != word}
flag = false
while (words.length != 0 && !flag)
    puts "Word: #{word.capitalize}"
    last = word[-1]
    puts "Points: #{points}"
    print "Your word: "
    user_word = gets.chomp.downcase
    while((user_word[0] != last || !words.include?(user_word)) && !flag)
        points = points - 1
        flag = endgame(points)
        if !flag
            puts "Points: #{points}"
            print "Your word: "
            user_word = gets.chomp.downcase
        end
    end
    if !flag
        points = points + 1
        words = words.select{|x| x != user_word}
    end
    flag = endgame(points)
    last = user_word[-1]
    l_words = words.select{|x| x[0] == last}
    if (l_word.length == 0)
        points = 10
        flag = endgame(points)
    else
        word = (l_words)[rand(l_words.length)]
        words = words.select{|x| x != word}
    end
end
