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

def divide(first_num, second_num)
    first_num / second_num
end

# Main calculator controller method
def calculator_controller()
  while true
    puts "What operation would you like to perform"
    puts "+) Addition"
    puts "-) Subtraction"
    puts "*) Multiply"
    puts "/) Division"
    puts "q) quit"

    command_operations = ["+", "-", "*", "/", "q"]

    print "input> "
    command_operation = gets.chomp

    if command_operation.downcase == "q"
      puts "Goodbye!!"
      break
    end

    if !command_operations.include?(command_operation)
      puts "I don't understand that command operation"
      next
    end

    puts "Enter the first number"
    print "input> "
    first_num = gets.chomp.to_f

    puts "Enter the second number"
    print "input> "
    second_num = gets.chomp.to_f

    if (command_operation == "+")
      puts " Result: #{add(first_num, second_num)}"
      break
    elsif (command_operation == "-")
      puts " Result: #{subtract(first_num, second_num)}"
      break
    elsif (command_operation == "*")
      puts " Result: #{multiply(first_num, second_num)}"
      break
    else 
      puts " Result: #{divide(first_num, second_num)}"
      break
    end
  end
end