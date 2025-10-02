def fibonacci_up_to(max)
  # parallel assignment
  i1, i2 = 1, 1

  while i1 <= max
    # yield i1
    print i1, " "
    i1, i2 = i2, i1 + i2
  end
end

# fibonacci_up_to(95) {}
fibonacci_up_to(95)