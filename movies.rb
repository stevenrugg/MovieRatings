movies = {
  StarWars: 4.8, 
  Divergent: 4.7
  }

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  
  if movies[title.to_sym].nil? 
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when "update"
  puts "What movie woud you like to update? "
  title = gets.chomp.to_sym
  if movies[title.to_sym].nil?
    puts "This movie is not added!"
  else
    puts "What is the new rating of #{title}? "
    rating = gets.chomp.to_i
    movies[title.to_sym] = rating.to_i
  end
when "display"
  movies.each {|key, value| puts "#{key}: #{value}"}
when "delete"
  puts "What movie do you want to delete? "
  title = gets.chomp.to_sym
  if movies[title].nil?
    puts "That movie isn't added"
  else
    movies.delete(title.to_sym)
  end
else
  puts "Error!"
end
