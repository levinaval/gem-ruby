array = [23, 27, 59, 24, 71, 1, 75, 27, 23, 44]
x = 100

def linear_search(array, number)
  for i in 0..array.size
    return i if array[i] == number
  end
  return -1
end

result = linear_search(array, x)
puts result == -1 ? "Não existe esse número no array" : "O número está no índice #{result}"