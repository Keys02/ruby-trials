# A program which prompts the user to enter their interest and then it adds it to a list

interests = [];

  puts "Enter your interest"
  print "input> "
  user_interest = gets.chomp.downcase;
  
  if user_interest != "q"
    interests.push(user_interest)
  end 

while user_interest != "q"
    puts "Enter your interest"
    print "input> "
    user_interest = gets.chomp.downcase;

    if user_interest != "q"
      interests.push(user_interest)
    end
end

interest_builder = "["

interests.each do |interest|
    interest_builder += "#{interest}, "
end

interest_builder += "]"

puts interest_builder;