# A program which prompts the user to enter their interest and then it adds it to a list and then prints to the screen
interests = [];

puts 'Enter your interest'
print 'input> '
user_interest = gets.chomp;

if user_interest.downcase != 'q' && user_interest.downcase != 'quit'
  interests.push(user_interest)
end

while user_interest.downcase != 'q' && user_interest.downcase != 'quit'
    puts 'Enter your interest'
    print 'input> '
    user_interest = gets.chomp

    if user_interest.downcase != 'q' && user_interest.downcase != 'quit'
      interests.push(user_interest)
    end
end

interest_builder = "\nInterests: [" + interests.join(", ") + "]"

puts interest_builder;
