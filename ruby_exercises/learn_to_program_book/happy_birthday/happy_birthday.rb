puts "Which year were you born?"
print "> "
year = gets.chomp.to_i

puts "Which month were you born?"
print "> "
month = gets.chomp.to_i

puts "Which day were you born?"
print "> "
day = gets.chomp.to_i

birth_date = Time.new(year, month, day)
current_date = Time.new

age = current_date.year - birth_date.year

if (birth_date.month > current_date.month) || (birth_date.month == current_date.month && birth_date.day < current_date.day)
  age -= 1
end

puts "You are #{age} year old"
puts "🙂" * age