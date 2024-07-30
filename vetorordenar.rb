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

# Função de ordenação crescente
def ordenar_numeros_crescente(array)
  (1...array.length).each do |posicao_atual|
    elemento_atual = array[posicao_atual]
    posicao_anterior = posicao_atual - 1

    while posicao_anterior >= 0 && array[posicao_anterior] > elemento_atual
      array[posicao_anterior + 1] = array[posicao_anterior]
      posicao_anterior -= 1
    end
    array[posicao_anterior + 1] = elemento_atual
  end
  array
end

# Ordena os números em ordem crescente usando a função ordenar_numeros_crescente
numeros_ordenados = ordenar_numeros_crescente(numeros)

# Imprime os números em ordem crescente
puts "\nNúmeros em ordem crescente: #{numeros_ordenados.inspect}"
# Imprime os números em ordem inversa (ou seja decrescente)
puts "\nNúmeros em ordem decrescente: #{numeros_ordenados.reverse.inspect}"
