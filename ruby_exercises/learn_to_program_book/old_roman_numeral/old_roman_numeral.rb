def old_roman_numeral(num)
  roman_numeral = ""
  # The modulus (%) takes of the division we have already performed 
  roman_numeral << "M" * (num / 1000)
  roman_numeral << "D" * ((num % 1000) / 500)
  roman_numeral << "C" * ((num % 500) / 100)
  roman_numeral << "L" * ((num % 100) / 50)
  roman_numeral << "X" * ((num % 50) / 10)
  roman_numeral << "V" * ((num % 10) / 5)
  roman_numeral << "I" * ((num % 5) / 1)
  roman_numeral
end

puts old_roman_numeral(1999)