def remove_duplicate(list)
  for i in 0..(list.length - 1) do
      for j in i+1..(list.length - 1) do
          if list[j] == list[i]
            list.delete_at(j)
          end
      end
  end
  return list
end

puts remove_duplicate([2, 3, 8, 3, 4, 2, 2, 1, 1])