while true
  puts "Say something"
  print "> "
  something = gets.chomp
  if something == "BYE"
    break
  elsif something == something.downcase
    puts "HUH?! SPEAK UP, SONNY"
  elsif something == something.upcase
    puts "NO, NOT SINCE #{rand(1930..1950)}"
  end
end
