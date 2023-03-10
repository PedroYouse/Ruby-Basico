def ler_agenda
    agenda = File.read('agenda.txt')
    puts "Seus contatos:\n#{agenda}"
end

def adicionar_contatos
    puts "----------------------------------------------"
    print("Insira o nome:\n")
    nome = gets.chomp
    print("Insira o telefone:\n")
    telefone = gets.chomp
    File.open('agenda.txt', 'a') do |out|
        out.puts "nome: #{nome}\ntelefone: #{telefone}\n--------------------------------------"
    end
end

loop do
    puts "1. Contatos\n2. Adicionar Contato\n3. Ver contato\n4. Editar contato\n5. Remover contato\n0. sair"
    codigo = gets.chomp.to_i

    case
    when codigo == 0
        puts "ate mais"
        break
    when codigo == 1
        ler_agenda
    when codigo == 2
        adicionar_contatos
    else
        'codigo nao existe'
    end
end