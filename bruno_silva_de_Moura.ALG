Algoritmo "Viajar.com"
//
//
// Descrição   : Cadastro de clientes, cadastro de destino, consulta ao cadastro de clientes, consulta ao cadastro de destinos.
// Autor(a)    : Bruno Silva de Moura
// Data atual  : 28/06/2022

Var
// Seção de Declarações das variáveis
nome: vetor [0..3] de caractere
destino: vetor [0..3] de caractere
cont, encontrouNome, encontrouDestino: inteiro
pesquisaNome, pesquisaDestino: caractere
opcao: inteiro
codigo: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...

escreval("***CADASTRO DE CLIENTES E DESTINOS***")
repita
escreval("          Selecione uma opcao para continuar"          )
    escreval("-------------------------------------------------------")
    escreval("1 - Cadastro de cliente e destino")
    escreval("2 - Consulta de clientes")
    escreval("3 - Consulta de destinos")
    escreval("4 - sair")
    escreval("-------------------------------------------------------")
leia(codigo)
limpatela
se (codigo = 1) entao
     para cont de 1 ate 4 faca
        escreval("Escreva o nome do CLIENTE a ser cadastrado: ", cont, ".")
        leia(nome[cont-1])
        escreval("Escreva o nome do DESTINO a ser cadastrado: ", cont, ".")
        leia(destino[cont-1])
        limpatela
     fimpara
senao
se (codigo = 2) entao
     escreval
     escreval("*****Consulte o CLIENTE*****")
        encontrouNome <- 0
        escreval("Escreva o nome do CLIENTE a ser consultado: ")
        leia(pesquisaNome)
        escreval
        para cont de 1 ate 4 faca

        se (nome[cont-1] = pesquisaNome) entao
        escreval ("O nome consta na posição ", cont-1, " de nosso sistema")
        encontrouNome <- 1
        fimse
     fimpara
senao
se (codigo = 3) entao
     escreval
     escreval("*****Consulte o DESTINO*****")
        encontrouDestino <- 0
        escreval("Escreva o nome do DESTINO a ser consultado: ")
        leia(pesquisaDestino)
        escreval
        para cont de 1 ate 4 faca

        se (destino[cont-1] = pesquisaDestino) entao
        escreval ("O destino consta em nosso cadastro na posição ", cont-1, " de nosso sistema")
        encontrouDestino <- 1
        fimse
     fimpara
fimse
fimse
fimse

     se (encontrouNome = 0) entao
     escreval ("Nome não encontrado")
     senao
     se (encontrouDestino = 0) entao
     escreval ("destino não encontrado")
     fimse
     fimse
     
ate (codigo=4)
escreval
escreval("*****Obrigado por usar o programa*****")
Fimalgoritmo