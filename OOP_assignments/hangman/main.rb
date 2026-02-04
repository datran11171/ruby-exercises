filename = "google-10000-english-no-swears.txt"

lines = File.readlines(filename)

# Optional: remove newline characters from each line using `map` and `chomp`
lines.map!(&:chomp)


random_index = rand(lines.length)
random_word = lines[random_index]

puts "The random index is: #{random_index}"
puts "The random word is: #{random_element}"


