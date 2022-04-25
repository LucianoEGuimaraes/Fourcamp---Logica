programa
{
	
	funcao inicio()
	{
		cadeia nome
		logico opcao = verdadeiro

		enquanto(opcao == verdadeiro){
			escreva ("Digite seu nome: ")
			leia (nome)

			se (nome == ""){
				opcao = verdadeiro
				escreva("Por favor, digite um nome!! \n")	
				}
			senao{
				opcao = falso
				}	
		}
	}
}
