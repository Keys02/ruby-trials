def f_with_commas(number)
  num_groups = number.to_s.chars.to_a.reverse.each_slice(3)
  num_groups.map(&:join).join(',').reverse
end

author_age_in_s = 1_390_000_000
age_after_book_first_edition = 800_000_000

puts "Result: " + (f_with_commas(author_age_in_s - age_after_book_first_edition)).to_s