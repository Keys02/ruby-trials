words = []

while true
    puts "Enter something"
    input = gets.chomp

    if input == ""
      puts words.sort
      break
    else
        words.push(input)
    end
end