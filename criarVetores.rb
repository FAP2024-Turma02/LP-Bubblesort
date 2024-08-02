def continuar
    puts "\nPressione qualquer tecla para continuar..."  # Pede ao usuário para pressionar uma tecla para continuar
    gets  # Espera pela entrada do usuário
    system("clear")
end

# Criar um vetor com 5 elementos
vetor = [1, 2, 3, 4, 5]

# Acessar e modificar elementos
puts "-------- Acessar e Modificar Elementos --------"  # Imprime título da seção
puts "Primeiro elemento: #{vetor[0]}"  # Imprime o primeiro elemento do vetor
vetor[0] = 10  # Modifica o primeiro elemento do vetor para 10
puts "Primeiro elemento modificado: #{vetor[0]}"  # Imprime o primeiro elemento modificado
continuar


# Adicionar e remover elementos
puts "-------- Adicionar e Remover Elementos --------"  # Imprime título da seção
vetor << 6  # Adiciona o elemento 6 ao final do vetor
vetor.push(7)  # Adiciona o elemento 7 ao final do vetor
puts "Vetor após adições: #{vetor}"  # Imprime o vetor após as adições
vetor.pop  # Remove o último elemento do vetor
puts "Vetor após remoção do último elemento: #{vetor}"  # Imprime o vetor após a remoção do último elemento
vetor.shift  # Remove o primeiro elemento do vetor
puts "Vetor após remoção do primeiro elemento: #{vetor}"  # Imprime o vetor após a remoção do primeiro elemento
continuar 

# Métodos úteis
puts "-------- Métodos Úteis --------"  # Imprime título da seção
puts "Tamanho do vetor: #{vetor.size}"  # Imprime o tamanho do vetor
puts "Vetor está vazio? #{vetor.empty?}"  # Verifica e imprime se o vetor está vazio
continuar 

# Iterar sobre elementos
puts "-------- Iterar Sobre Elementos --------"  # Imprime título da seção
vetor.each { |elemento| puts "Elemento: #{elemento}" }  # Itera sobre cada elemento do vetor e o imprime
continuar

# Somar todos os elementos
puts "-------- Somar Todos os Elementos --------"  # Imprime título da seção
soma = vetor.reduce(0) { |acumulador, elemento| acumulador + elemento }  # Calcula a soma dos elementos do vetor
puts "Soma dos elementos: #{soma}"  # Imprime a soma dos elementos
continuar

# Filtrar elementos maiores que 3
puts "-------- Filtrar Elementos Maiores que 3 --------"  # Imprime título da seção
maiores_que_3 = vetor.select { |elemento| elemento > 3 }  # Seleciona elementos do vetor que são maiores que 3
puts "Elementos maiores que 3: #{maiores_que_3}"  # Imprime os elementos que são maiores que 3
continuar

# Vetor misto
puts "-------- Vetor Misto --------"  # Imprime título da seção
vetor_misto = [1, "dois", 3.0, :quatro, [5, 6], { chave: "valor" }, true]  # Cria um vetor com elementos de diferentes tipos

vetor_misto.each do |elemento|
    puts "Elemento: #{elemento} (Tipo: #{elemento.class})"  # Itera sobre cada elemento do vetor misto e imprime o elemento e seu tipo
end
continuar
