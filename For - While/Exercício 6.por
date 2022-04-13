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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 79; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */