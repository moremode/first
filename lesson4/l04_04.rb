words = File.readlines('noun_dictionary.txt').each {|x| x.chomp!}
arr = Hash.new(0).tap { |h| words.each { |word| h[word] += 1 } }

puts "All words: #{words.length}"
puts "Unique words: #{arr.length}"

simbs = Hash.new(0).tap { |h| words.each { |word| h[word[0].downcase] += 1 } }

simbs.each {|x, y| puts "#{x} #{'*'*(y/300 + 1)}"}

puts ''

simbs1 = Hash.new(0).tap { |h| words.each { |word| word.chars.each {|c| h[c.downcase] += 1 } } }

simbs1.each {|x, y| puts "#{x} #{'*'*(y/2220 + 1)}"}
