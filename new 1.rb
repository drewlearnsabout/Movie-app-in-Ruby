movies = {
	Moana: 4.5,
  Frozen: 4
  }

puts "What would you like to do? "

choice = gets.chomp.downcase

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil?
  puts "What rating would you give it? "
  rating = gets.chomp
  movies [title.to_sym] = rating.to_i
    puts "Added #{title} with a rating of #{movies[title.to_sym]}."
    else
    puts "#{title} exists already. The rating is #{movies[title.to_sym]}."
  end

when "update"
  puts "Which movie? "
title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie doesn't exist. Try adding it instead?"
    else
    puts "What's the new rating? "
    rating = gets.chomp
    movies [title.to_sym] = rating.to_i
    puts "Added a new rating of #{movies[title.to_sym]} to the movie #{title}."
  end
    
when "display"
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when "delete"
  puts "Which movie would you like to delete? "
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie doesn't exist. Maybe try adding a movie instead?"
  else
  movies.delete(title)
  puts "Movie deleted."
  end

  
else
  puts "Error!"
end