programa
{
	
	funcao inicio()
	{
		real valor_compra, total
		cadeia forma_pgto
		
		escreva("Qual o valor da compra? \n")
		leia(valor_compra)

		escreva("Qual a forma de pagamento, a vista ou a prazo? \n")
		leia(forma_pgto)

		se(forma_pgto == "a vista"){
			total = valor_compra * 0.90
			escreva(total)
			}
		senao se(forma_pgto =="a prazo"){
			total = valor_compra * 0.95
			escreva(total)
			}	
		senao{
			escreva("Informe um meio de pagamento válido")
			}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */