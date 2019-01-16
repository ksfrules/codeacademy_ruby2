print "Please, print your idea"
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
  user_input.gsub!(/s/,"th")
  puts "Here is the transcription --- #{user_input}"
else
  puts "there are no s in the string"
end
