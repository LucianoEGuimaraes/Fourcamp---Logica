programa
{
	
	funcao inicio()
	{
		real altura, peso, imc
				
		escreva("Qual a sua altura? \n")
		leia(altura)

		escreva("Qual o seu peso? \n")
		leia(peso)

		imc = peso / (altura*altura)

		se (imc > 18.5 e imc < 25){
			escreva("Está dentro do intervalo")
			}	
		senao{
			escreva("Está fora do intervalo")	
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 15; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */