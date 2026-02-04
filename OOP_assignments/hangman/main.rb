filename = "google-10000-english-no-swears.txt"

lines = File.readlines(filename)

# Optional: remove newline characters from each line using `map` and `chomp`
lines.map!(&:chomp)


random_index = rand(lines.length)
random_word = lines[random_index]

puts "The random index is: #{random_index}"
puts "The random word is: #{random_word}"

lives = 7
finished = false
guessed = Array.new(random_word.length, "_")
puts "HANGMAN"
puts "Guess the word within 7 incorrect guesses."
puts guessed.join
turn = 1
until finished
  puts "Turn #{turn}"
  puts guessed.join
  print "Enter your guess: "
  guess = gets.chomp
  indices = Array.new()
  random_word.each_char.with_index do |char, index|
    indices << index if char == guess
  end

  indices.each do |i|
    guessed[i] = guess
  end

  if indices.empty?
    lives -= 1
    puts "Wrong guess! Lives remaining: #{lives}"
  end

  if guessed.join == random_word
    finished = true
    puts "Congrats you finished the game, the word was #{random_word}"
  end
  
  if lives == 0
    finished = true
    puts "Game over! The word was #{random_word}"
  end

  turn += 1
end
