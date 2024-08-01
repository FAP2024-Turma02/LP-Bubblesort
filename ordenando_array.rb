def limpar_tela
  system("cls") || system("clear")
end

loop do
  array = Array.new() #Cria um array vazio

  loop do
    indice = array.length

    limpar_tela

    print "Digite o #{indice + 1}° valor: "
    array << gets.chomp.to_i

    puts "\n"

    print "Deseja digitar mais um número(S/N): "
    resp = gets.chomp.to_s

    if resp == "N" || resp == "n"
      break
    end

    limpar_tela
  end

  limpar_tela
  print "Numeros digitados: #{array}"

  def ordenar_array(array)

    array.each do |i|
      (array.length - 1).times do |j|
        if array[j] > array[j + 1]
          array[j], array[j + 1] = array[j + 1], array[j]
        end
      end
    end
  end

  ordenar_array(array)

  puts "\nNumeros ordenados: #{array}"

  print "Deseja criar outro vetor? (S/N)"
  recriar = gets.chomp
  if recriar == "N" || recriar == "n"
    break
  end
end
