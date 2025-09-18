def old_roman_numeral(num)
  roman_numeral = ""
  # The modulus (%) takes of the division we have already performed 
  roman_numeral << "M" * (num / 1000).to_i
  roman_numeral << "D" * ((num % 1000) / 500).to_i
  roman_numeral << "C" * ((num % 500) / 100).to_i
  roman_numeral << "L" * ((num % 100) / 50).to_i
  roman_numeral << "X" * ((num % 50) / 10).to_i
  roman_numeral << "V" * ((num % 10) / 5).to_i
  roman_numeral << "I" * ((num % 5) / 1).to_i
end

puts old_roman_numeral(1999)