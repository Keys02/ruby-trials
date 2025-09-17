bear = 99

while true
  if bear == 0 
    break
  elsif bear == 1
    puts "#{bear} bottle of beer on the wall, #{bear} bottle of bear."
    puts "Take one down and pass it around, no more bottle of beer on the wall."
    break
  end
  puts "#{bear} bottles of beer on the wall, #{bear} bottles of bear."
  puts "Take one down and pass it around, #{bear - 1} bottles of beer on the wall."
  bear = bear - 1
end

