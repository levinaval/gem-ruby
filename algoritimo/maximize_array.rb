def maximize(array, k)

	(k).times do
      min, min_index = array.each_with_index.min
	  break if min == 0

	  array[min_index] = -array[min_index]
    end
		
  array.sum
end 

puts maximize([-2, 0, 5, -1, 2], 4)
puts maximize([9, 8, 8, 5], 3)