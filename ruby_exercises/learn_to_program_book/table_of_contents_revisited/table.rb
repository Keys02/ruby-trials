chapters = ["Chapter 1: Numbers", "Chapter 2: Letters", "Chapter 3: Variables"]

line_width = 60
puts "Table of contents".center(line_width)

chapters.each_with_index do |chapter, index|
  puts chapter.ljust(line_width / 2) + ("page #{index + 1}").rjust(line_width / 2)
end
