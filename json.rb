require "json"

test_array = ["Give Quick A chance", "Mutants Out!", "Chamelonic Life-Forms, No Thanks", ["Ruby", "Python", "JavaScript", [true, false]]]


test_string = test_array.to_json
puts test_string

my_file = "my.json"

File.open(my_file, "w") do |f|
  f.write(test_string)
end

read_string = File.read(my_file)
puts read_string

read_array = JSON.parse(read_string)

puts read_string == test_string
puts read_array == test_array
