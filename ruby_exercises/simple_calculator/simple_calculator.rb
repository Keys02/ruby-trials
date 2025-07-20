# Arithmetic operation methods
def add(first_num, second_num)
    first_num + second_num
end

def subtract(first_num, second_num)
   first_num - second_num 
end

def multiply(first_num, second_num)
    first_num * second_num
end

def divide(fiirst_num, second_num)
    first_num / second_num
end

# Main calculator controller method
def calculator_controller(first_num, second_num, operation)
  puts "Enter the first number"
  print "input> "
  first_num = gets.chmod.to_f

  puts "Enter the second number"
  print "input> "
  second_num = gets.chmod.to_f

  puts "What operation would you like to perform"
  puts "+) Addition"
  puts "-) Subtraction"
  puts "*) Multiply"
  puts "/) Division"

  print "input> "
  operation = gets.chmod

  if (operation == "+")
    add(first_num, second_num)
  elsif (operation == "-")
    subtract(first_num, second_num)
  elsif (operation == "*")
    multiply(first_num, second_num)
  else 
    divide(first_num, second_num)
  end
end