def palindrome(word)
  lcase_word = word.downcase
  reversed_word = lcase_word.reverse

  if lcase_word == reversed_word
    puts "#{word} is a palindrome"
  else
    puts "#{word} is not a palindrome"
  end
end

palindrome("Hannah")