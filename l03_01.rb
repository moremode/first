require "google/cloud/translate"

# Your Google Cloud Platform project ID
project_id = "translation-01-220716"
key_file = "My Project-cf8c099f9b91.json"

# Instantiates a client
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file

flag = true
points = 0
puts "Rules: for every new letter you get three points, for wrong answer -1 point, for all word - every '*' 4 point, and then -1"
puts "You have 3 attempts to guess all word, then penalty -5 points"
while flag
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
        trying = 3
        puts "Перевод: #{translation}"
        now = "*" * text.length
        used = ""
        while now.include? "*"
            puts now
            puts "Used: #{used}"
            puts "All word attempts: #{trying}"
            simb = gets.chomp
            if (simb.length != 1)
                if (trying > 0)
                    trying -= 1
                else
                    points -= 5
                end
            elsif text.include? simb
                i = 0
                if (simb.length == 1)
                    points += 3
                end
                while i < text.length
                if text[i] == simb
                    now[i] = simb
                end
                i+=1
                end
            elsif simb.length == 1
                used += simb
                points -= 1
            end
            if simb.chomp == text.chomp
                points += now.count('*') * 4 - 1
                now = ""
            end
        end
        puts "Good Luck, Have Fun, You Win!"
        puts "Your points: #{points}"
        flag1 = true
        while flag1
            puts "Continue? (+/-)"
            answer = gets.chomp
            if (answer == "+")
                flag1 = false
            elsif (answer == "-")
                flag1 = false
                flag = false
            else
                puts "Incorrect"
            end
        end
    end

end
