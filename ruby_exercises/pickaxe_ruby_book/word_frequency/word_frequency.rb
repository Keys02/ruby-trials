def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

words = words_from_string("The quick brown fox jumped over the lazy dog")

counts = {}
# =====================================================================================
# Problem
# Our only problem is what to do when we encounter a word for the first time. If we try to increment the entry for that word, there won’t be one, so our program will fail. 
# If we encounter a word for the first time, we check whether the word exists as a ke in the hash before doing the increment
# =====================================================================================
# Solution 1
words.each do |next_word|
  if counts.key?(next_word) 
    counts[next_word] += 1
  else
    counts[next_word] = 1
  end
end

puts "Solution 1"
p counts

# Solution 2
def count_frequency(word_list)
  counts = Hash.new(0)
  word_list.each do |word|
    counts[word] += 1
  end
  counts
end

puts
puts "Solution 2"
p count_frequency(words)