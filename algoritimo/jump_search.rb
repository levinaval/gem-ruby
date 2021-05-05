def jump_search( arr , x , n )
     
    step = Math.sqrt(n)
     
    # Encontrar o bloco onde o elemento está
    # presente (se estiver presente)
    prev = 0
    while arr[[step, n].min-1] < x
        prev = step
        step += Math.sqrt(n)
        if prev >= n
            return -1
        end
    end
     
    # Fazendo uma pesquisa linear por x em
    # bloco começando com anterior.
    while arr[prev] < x
        prev += 1
         
        # Se chegarmos ao próximo bloco ou fim
        # da matriz, o elemento não está presente.
        if prev == [step, n].min
            return -1
        end
    end
     
    # Se o elemento for encontrado
    if arr[prev.to_i] == x
        return prev
    end
     
    return -1
end 
# Código do driver para testar a função
arr = [ 0, 1, 1, 2, 3, 5, 8, 13, 21,
    34, 55, 89, 144, 233, 377, 610 ]
x = 1
n = arr.length
 
# Encontre o índice de 'x' usando Jump Search
index = jump_search(arr, x, n)
 
# Imprime o índice onde 'x' está localizado
puts("Number  #{x} is at index #{index}")
 
# Este código é uma contribuição de "Sharad_Bhardwaj".