(1..100).each_with_index do |i|
    if i % 2 == 0 && i % 5 ==0
      puts "#{i} - FizzBuzz"
    elsif(i % 2 == 0)
      puts "#{i} - Fizz"
    else
      puts "#{i} - Buzz"
    end
end