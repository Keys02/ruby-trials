# A program to convert the temperature from Degree Celcius to Fahrenheit
while true
    print "\n"
    puts "Is the temperature unit in Degree Celcius or Fahrenheit"
    print "input> "
    unit = gets.chomp
    
    if unit.downcase == "exit"
      puts "Goodbye!!👋🏽"
      break
    end

    if unit.downcase != "f" && unit.downcase != "d" 
        puts "You entered the wrong unit"
        next
    elsif unit.downcase == "f"
        puts "Enter temperature (Fahrenheit)"
        print "input> "
        temperature = gets.chomp.to_f
        puts "Temperature in Degree Celcius: " + (((temperature - 32) * 5/9)).round(4).to_s
        next
    elsif unit.downcase == "d"
        puts "Enter temperature (Degree Celcius)"
        print "input> "
        temperature = gets.chomp.to_f.round(4)
        puts "Temperature in Fahrenheit: " + (((temperature * 9/5) +32)).round(4).to_s
        next
    end
end