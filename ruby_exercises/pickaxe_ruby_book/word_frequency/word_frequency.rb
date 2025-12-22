def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

ctext  = 'The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count.'

words = words_from_string(text)

# =====================================================================================
# Problem
# Our only problem is what to do when we encounter a word for the first time. If we try to increment the entry for that word, there won’t be one, so our program will fail. 
# If we encounter a word for the first time, we check whether the word exists as a ke in the hash before doing the increment
# =====================================================================================
# Solution 1

counts = {}

words.each do |next_word|
  if counts.key?(next_word) 
    counts[next_word] += 1
  else
    counts[next_word] = 1
  end
end

puts 'Solution 1'
counts = counts.sort_by{|word, count| count}.reverse.to_h
p counts

# Solution 2
def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each {|word| counts[word] += 1}
  counts
end


puts
puts 'Solution 2'
decreasing_order_sort_count = count_frequency(words).sort_by {|word, count| count}.reverse.to_h
p decreasing_order_sort_count

# Solution 3
sorted_tallied_list = words_from_string(text).tally.sort_by {|word, count| count}.reverse.tap {|result| puts "Reverse from highest to lowest: #{result}"}
sorted_tallied_list
# puts
# puts "Solution 3"
# puts sorted_tallied_list