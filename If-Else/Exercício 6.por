programa
{
	
	funcao inicio()
	{
		real altura, peso_ideal
		caracter sexo
		
		escreva("Qual a sua altura? \n")
		leia(altura)

		escreva("Qual o seu sexo? M para masculino e F para feminino. \n")
		leia(sexo)

		se (sexo == 'M'){
			peso_ideal = (72.7 * altura) - 58
			escreva ("Seu peso ideal é: " + peso_ideal + " KG")				
			}
		senao se(sexo == 'F'){
			peso_ideal = (62.1 * altura) - 44.7
			escreva ("Seu peso ideal é: " + peso_ideal + " KG")
			}	
		senao{
			escreva("Digite M ou F para selecionar o sexo")	
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 463; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */