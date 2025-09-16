puts "Starting year"
starting_year = gets.chomp
puts "Ending year"
ending_year = gets.chomp

while starting_year.to_i <= ending_year.to_i

  if((starting_year % 4 == 0) && (starting_year % 100 != 0 || starting_year % 400 == 0)) 
      puts starting_year
  end

  starting_year = starting_year.to_i + 1
end