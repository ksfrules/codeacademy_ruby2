movies = {
  lybov: 4.5,
  morkov: 4.7,
  ogurets: 4.0,
  backlagan: 4.3
  }

puts "Please, enter your choice"
choice = gets.chomp

case choice
  when "add"
    puts "Please, enter movie title"
    title = gets.chomp.to_sym
    puts "Please, enter movie rating"
    rating = gets.chomp.to_i
    if movies[title] == nil
      movies[title] = rating
    else
      puts "The movie already exist!"
    end
  when "update"
    puts "Please, enter movie title"
    title = gets.chomp.to_sym
    if movies[title] == nil
      puts "The movie doesn't exist!"
    else
      puts "Please, enter movie rating"
      rating = gets.chomp.to_i
      movies[title] = rating
    end
  when "display"
    movies.each {|key,value|
      puts "#{key}: #{value}"}
  when "delete"
    puts "Please, enter movie title"
    title = gets.chomp.to_sym
    if movies[title] == nil
      puts "The movie doesn't exist!"
    else
      movies.delete(title) 
    end
  else
    puts "Error!"
end
