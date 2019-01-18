puts "Input your text, please"
text = gets.chomp
puts "Input the word to redact. please"
redact = gets.chomp
words = text.split(" ")
words.each {|word|
  if word == redact
    print "REDACTED "
  else
    print "#{word} "
  end
  }
