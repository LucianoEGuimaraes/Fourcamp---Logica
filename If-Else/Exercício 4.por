programa
{
	
	funcao inicio()
	{
		real primeiro_valor, segundo_valor, terceiro_valor, soma
		
		escreva ("Informe o Primeiro valor: \n")
		leia (primeiro_valor)
		
		escreva ("Informe o Segundoo valor: \n")
		leia (segundo_valor)

		escreva ("Informe o Segundoo valor: \n")
		leia (terceiro_valor)

		soma = primeiro_valor + segundo_valor 

		se (soma > terceiro_valor){
			escreva("O Primeiro mais o Segundo valor é maior que o Terceiro valor")
			}	
		senao{
			escreva("O Terceiro valor é maior que os dois primeiros somados")
			}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 231; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */