# A program to convert the temperature from Degree Celcius to Fahrenheit

puts "Is the temperature unit in Degree Celcius of Fahrenheit"
print "input> "
unit = gets.chomp

if unit.downcase != "f" || unit.downcase != "d" 
    puts "You entered the wrong unit, please try again"
elsif unit.downcase == "f"
    puts "Enter temperature"
    temperature = gets.chomp
    puts "Temperature in Fahrenheit: " + (temperature - 32) * 5/9
else
    puts "Enter temperature"
    temperature = gets.chomp
    puts "Temperature in Degree Celcius: " + (temperature * 9/5) +32
end