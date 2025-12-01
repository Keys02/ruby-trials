def palindrome(word)
  lcase_word = word.downcase
  reversed_word = lcase_word.reverse
  puts (lcase_word == reversed_word) ? "#{word} is a palindrome" : "#{word} is not a palindrome" 
end

palindrome('Hannah')
palindrome('Master')
palindrome('Racecar')