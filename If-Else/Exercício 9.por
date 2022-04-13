programa
{
	
	funcao inicio()
	{
		real peso, altura, imc
		
		escreva("Informe seu peso: ")
		leia(peso)

		escreva("Informe sua altura: ")
		leia(altura)

		imc = peso / (altura*altura)

		se (imc < 18.5){
			escreva("Você está abaixo do peso! Seu IMC é: " + imc)
			}
		senao se (imc > 18.5 e imc <24.9){
			escreva("Você está com peso normal! Seu IMC é: " + imc)
			}
		senao se (imc > 25 e imc < 29.9){
			escreva("Você está acima do peso! Seu IMC é: " + imc)
			}
		senao se (imc > 30 e imc < 34.9 ){
			escreva("Você está com obesidade grau I! Seu IMC é: " + imc)
			}	
		senao se (imc > 35 e imc < 39.9 ){
			escreva("Você está com obesidade grau II! Seu IMC é: " + imc)
			}	
		senao se (imc >= 40){
			escreva("Você está com obesidade grau III ou Mórbida! Seu IMC é: " + imc)
			}			
		
	}
}
