#dados = [{:nome => "Paulo", :idade => 4}, {:nome => "Camilla", :idade => 3}]

dados = Array.new()

while true
   print "Novo Cadastro (s/n): "
   continue = gets.chomp
   break if continue == 'n'

   c = {}
   print "Nome: "
   nome = gets.chomp
   c[:nome] = nome

   print "Idade: "
   idade = gets.chomp
   c[:idade] = idade

   dados << c
end

maior_idade = 0
dados.each do |i|
        minha_idade = i[:idade].to_i
        if minha_idade > maior_idade
           maior_idade = minha_idade
           @nome = i[:nome]
           @idade = minha_idade
        end
end

puts "O mais veinho é o #{@nome} com idade de #{@idade}"
