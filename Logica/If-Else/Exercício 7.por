programa
{
	
	funcao inicio()
	{
		real altura, peso, imc
				
		escreva("
Qual a sua altura? \n")
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
