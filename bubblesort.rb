def bubble_sort(array)
    n = array.length
    loop do
      swapped = false
  
      (n-1).times do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
          puts "Ordenando: #{array}"
          sleep(1)
        end
      end
  
      break unless swapped
    end
    array
  end
  
  numbers = []
  
  
  loop do
    puts "Digite um número para adicionar ao vetor. Digite 'fim' para finalizar."
    input = gets.chomp
    break if input.downcase == 'fim'
    if input.to_i.to_s == input || input.to_f.to_s == input
      numbers << input.to_f
    else
      puts "Por favor, insira um número válido."
    end
  end
  
  puts "Vetor original: #{numbers}\n"
  sorted_numbers = bubble_sort(numbers)
  puts "\nVetor ordenado: #{sorted_numbers}"
  