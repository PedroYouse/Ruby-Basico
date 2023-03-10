#PRIMEIRO PROGRAMA TESTE EM RUBY; AGENDA SIMPLES.
#FUNCOES DA AGENDA; ADICIONAR, REMOVER E EDITAR CONTATOS

#Abrindo o arquivo de texto e mandando para a @agenda


#Salva os contatos
@agenda =  [
    {nome:"Laura", telefone: "11111111"},
    {nome:"Pedro", telefone: "11111112"}
]

#Função de exibir os contatos existentes na tela.
def contatos
    puts "---------------------------------------------------------------------------"
    @agenda.each do |contato|
        puts"#{contato[:nome]} - #{contato[:telefone]}"  
    end
    puts "---------------------------------------------------------------------------"
end

#Função para adicionar novos contatos, usando nome e telefone
def adicionar_contatos
    puts "---------------------------------------------------------------------------"
    print("Nome:")
    nome = gets.chomp
    print("Telefone:")
    telefone = gets.chomp
    @agenda << {nome:nome, telefone:telefone}
    puts "---------------------------------------------------------------------------"
end

#Função para exibir um contato, buscando pelo nome.
def ver_contato
    puts "---------------------------------------------------------------------------"
    print("Digite o nome do contato: ")
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            puts"#{contato[:nome]} - #{contato[:telefone]}"
        end
    end
    puts "---------------------------------------------------------------------------"
end

#Função para editar um contato já existente
def editar_contato
    print("Qual contato deseja editar: ")
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            print("Digite o novo nome: (Para manter o atual, aperte ENTER)")
            novo_nome = contato[:nome]
            contato[:nome] = gets.chomp
            contato[:nome] = contato[:nome].empty? ? novo_nome : contato[:nome]

            print("Digite o novo numero de telefone: (Para manter o atual, aperte ENTER)")
            novo_telefone = contato[:telefone]
            contato[:telefone] = gets.chomp
            contato[:telefone] = contato[:telefone].empty? ? novo_nome : contato[:telefone]
        end
    end 
end

#Função para remover um contato da lista
def remover_contato
    print("Qual contato deseja remover: ")
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase.include?(nome.downcase)
            indice = @agenda.index(contato)
            @agenda.delete_at(indice)
            break
        end
    end
end

#Inicio do programa
loop do
    puts "1. Contatos\n2. Adicionar Contato\n3. Ver contato\n4. Editar contato\n5. Remover contato\n0. sair"
    codigo = gets.chomp.to_i

    case 
    when codigo == 0
        puts = "Até Mais!"
        break
    when codigo == 1
        contatos
    when codigo == 2
        adicionar_contatos
    when codigo == 3
        ver_contato
    when codigo == 4
        editar_contato
    when codigo == 5
        remover_contato
    when codigo == 6
        adicionar_contatos2
    else
        puts("Função não exite! Insira uma função válida!")
    end
end