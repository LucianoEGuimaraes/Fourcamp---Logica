programa
{
	
	funcao inicio()
	{
		inteiro um_centavo, cinco_centavos, dez_centavos, vinteecinco_centavos, cinquenta_centavos, um_real
		real total
			
		escreva("Quantas moedas de 1 centavo? \n")
		leia(um_centavo)

		escreva("Quantas moedas de 5 centavos? \n")
		leia(cinco_centavos)

		escreva("Quantas moedas de 10 centavos? \n")
		leia(dez_centavos)
		
		escreva("Quantas moedas de 25 centavos? \n")
		leia(vinteecinco_centavos)

		escreva("Quantas moedas de 50 centavos? \n")
		leia(cinquenta_centavos)

		escreva("Quantas moedas de 1 Real? \n")
		leia(um_real)

		total = (um_centavo * 0.01) + (cinco_centavos * 0.05) + (dez_centavos * 0.10) + (vinteecinco_centavos * 0.25) + (cinquenta_centavos * 0.50) + um_real
		escreva(total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 152; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */