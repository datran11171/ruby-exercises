def substrings(word, dictionary)
  res = Hash.new(0)
  word_downcase = word.downcase

  dictionary.each do |substring|
    substring_downcase = substring.downcase

    count = word_downcase.scan(substring_downcase).length
    res[substring] += count if count > 0
  end

  puts res
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)

substrings("Howdy partner, sit down! How's it going?", dictionary)

