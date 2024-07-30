# Debug da execução do algoritmo de ordenação
# AprendendoRuby\apresentar\vetordebug.rb

system('cls')
numeros = []

puts "Digite números inteiros (positivos ou negativos) um a um. Para encerrar, digite qualquer caractere não numérico."

loop do
  print "Digite um número: "
  entrada_digitada = gets.chomp

  # Verifica se a entrada digitada é um número inteiro (positivo ou negativo)
  if entrada_digitada.match?(/^-?\d+$/)
    numeros << entrada_digitada.to_i
  else
    break
  end
end

# Imprime os números digitados na ordem em que foram digitados
puts "\nNúmeros digitados: #{numeros.inspect}"

# Função de ordenação crescente com logs detalhados
def ordenar_numeros_crescente(array)
  (1...array.length).each do |posicao_atual|
    elemento_atual = array[posicao_atual]
    posicao_anterior = posicao_atual - 1
    
    puts "\nPosição atual: #{posicao_atual}, Elemento atual: #{elemento_atual}"
    puts "Estado inicial do array: #{array.inspect}"

    while posicao_anterior >= 0 && array[posicao_anterior] > elemento_atual
      puts "Comparando elemento #{array[posicao_anterior]} (posição #{posicao_anterior}) com #{elemento_atual}"
      array[posicao_anterior + 1] = array[posicao_anterior]
      puts "Movendo elemento #{array[posicao_anterior]} para a posição #{posicao_anterior + 1}"
      posicao_anterior -= 1
      puts "Array intermediário: #{array.inspect}"
    end
    array[posicao_anterior + 1] = elemento_atual
    puts "Inserindo elemento #{elemento_atual} na posição #{posicao_anterior + 1}"
    puts "Estado do array após a inserção: #{array.inspect}"
  end
  array
end

# Ordena os números em ordem crescente usando a função ordenar_numeros_crescente
numeros_ordenados = ordenar_numeros_crescente(numeros)

# Imprime os números em ordem crescente
puts "\nNúmeros em ordem crescente: #{numeros_ordenados.inspect}"
# Imprime os números em ordem inversa (ou seja decrescente)
puts "\nNúmeros em ordem decrescente: #{numeros_ordenados.reverse.inspect}"
