programa
{
	
	funcao inicio()
	{
		real altura, peso_ideal
		caracter sexo
		
		escreva("
Qual a sua altura? \n")
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
