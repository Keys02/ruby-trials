count = 0
while true
  puts "Say something"
  print "> "
  something = gets.chomp

  if something == "BYE"
    count = count + 1
    if count == 3
      break
    end
  elsif something == something.upcase
    puts "NO, NOT SINCE #{rand(1930..1950)}"
  else 
    puts "HUH?! SPEAK UP, SONNY"
  end
end