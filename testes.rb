=begin
puts 175 == 175
puts 175 != 174
puts "175" != 175
puts "175".to_i == 175
puts "175" != "174"

puts 150 > 170
puts 150 < 50
puts 150 >= 150
puts 150 <= 60



for dedos in 1..3
    puts "Contando " + dedos.to_s
end


chutes = [176, 175, 480, 96, 4]
chutes[3] = 300
puts chutes[0]
puts chutes[1]
puts chutes[3]

chute = 176
tentativa = 1
chutes[tentativa - 1] = chute
puts chutes[0]

for chute in chutes
    puts chute
end

chute = 176
tentativa = 1
chutes << chute #colocar na última posição

puts chutes.size #retorna o tamanho do array


nome = gets.strip
puts "#{nome} tem #{nome.size} caracteres" #colocar valores dentro de uma string
                                           #interpolar valores em uma string tornado-a maior
#puts "Resultado: " + nome.size.to_s

chutes = [50, 150, 300]
for chute in chutes
    puts chute
end
=end

numero = 5
numero += 1
numero -= 2
numero *= 2
numero /= 4
numero *= 13
numero %= 10
puts numero 

        #unless pontos_perdidos > 0 #a não ser que
        #      pontos_perdidos *= -1
        #end