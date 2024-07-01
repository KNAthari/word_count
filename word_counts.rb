def word_count(word)
  words = word.scan(/\b\w+(?:'\w+)?\b/)
  words_count = []

  words.each do |word|
    count = words.count(word)
    unless words_count.include?("#{word}: #{count}")
      words_count << "#{word}: #{count}"
    end
  end

  words_count.each do |word_count|
    puts word_count
  end
end

word = "That's the password: 'PASSWORD 123'!,\" cried the Special Agent.\nSo I fled."

count = word_count(word)
puts count