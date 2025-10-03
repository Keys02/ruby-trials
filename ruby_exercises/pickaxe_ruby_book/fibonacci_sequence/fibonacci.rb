def fibonacci_up_to(max)
  v1, v2 = 1,1

  while(v1 <= max)
    print v1, " "
    # This Parallel assignment is key
    v1, v2 = v2, v1 + v2
  end
end

fibonacci_up_to(5)