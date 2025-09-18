file = "myfile.txt"

File.open(file, "w") do |f|
    puts "Type something to add to file"
    f.write(gets.chomp)
end
puts
puts "============= What is read from the file ============="
content = File.read(file)
puts content
