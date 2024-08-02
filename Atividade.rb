loop do 
    vetor = [] # criei o vetor vazio
    puts "Digite quantos elementos vai ter seu vetor"
    n = gets.chomp.to_i

    for i in 1..n   
    puts"Escreva um numero inteiro para o vetor"
    numero = gets.chomp.to_i # input para pega o numero digitado

    vetor << numero # adiciona o numero digitado ao vetor 
    puts "Vetor: #{vetor}" # imprime o vetor com o numero adicionado
    end

    for i in 0...n-1
        for j in 0...n-i-1
           # puts" i = #{vetor}"
            if vetor[j] > vetor[j+1] # Verifica se o elemento atual é maior que o próximo
                temp = vetor[j] # Armazena o valor atual em uma variável temporária
                #puts "valor guardado #{temp}"
                vetor[j] = vetor[j+1] # Troca o valor atual pelo próximo valor
                vetor[j+1]= temp # Coloca o valor temporário na posição do próximo valor
            end
        end
    end

    puts"Números em ordem Crescente: "
    for i in 0...n
        print "#{vetor[i]}  " " "
    end
    puts "\nDeseja ordenar outro vetor? (s/n)"
    resposta = gets.chomp.downcase
    break if resposta == 'n'
end









