puts "Which year were you born?"
print "> "
year = gets.chomp.to_i

puts "Which month were you born?"
print "> "
month = gets.chomp.to_i

puts "Which day were you born?"
print "> "
day = gets.chomp.to_i

age = 1

while Time.local(year + age, month, day) <= (Time.new)
  puts "🙂 - #{age}"
  # if the 2002/05/14 was provided as input for the year, month and day the while loop will run 23 times and on the last iteration the increment will still occur so we have to account for that.
  if Time.local(year + age, month, day).year === (Time.new).year
   break
  end

  age = age + 1
end

puts "You are #{age} years old" 