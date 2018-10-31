require "google/cloud/translate"

# Your Google Cloud Platform project ID
project_id = "translation-01-220716"
key_file = "My Project-cf8c099f9b91.json"

# Instantiates a client
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file

arr = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}

num = rand(arr.length)

# The text to translate
text = arr[num].downcase

# The target language
target = "ru"

# Translates some text into Russian
translation = translate.translate text, to: target

if (text.chomp != translation.to_s.chomp.downcase)
    puts text
    puts "Перевод: #{translation}"
    now = "*" * text.length
    used = ""
    while now.include? "*"
        puts now
        puts "Used: #{used}"
        simb = gets.chomp
        if text.include? simb
            i = 0
            while i < text.length
            if text[i] == simb
                now[i] = simb
            end
            i+=1
            end
        elsif simb.length == 1
            used += simb
        end
        if simb.chomp == text.chomp
            now = ""
        end
    end
    puts "Good Luck, Have Fun, You Win!"
else
    puts "You Unlucky, try one more time"
end
