programa
{
	
	funcao inicio()
	{
		inteiro cavalos
		real total, valor_final
		
		escreva("Quantos cavalos precisam de ferraduras? \n")
		leia(cavalos)

		total = (cavalos * 4) * 9.90

		se (total > 100){
			valor_final = total * 0.90
			escreva ("R$ " + valor_final)
			}	
		senao{
			escreva("R$ " + total)
			}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 326; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */