programa
{
	
	funcao inicio()
	{
		inteiro numero_mes
		
		escreva("Escolha um número de 1 a 12 e informaremos qual o mês corresponde ao número escolhido! \n")
		leia(numero_mes)

		escolha(numero_mes){

			caso 1:
				escreva("Janeiro!")
				pare
			caso 2: 
				escreva("Fevereiro!")	
				pare
			caso 3: 
				escreva("Março!")	
				pare	
			caso 4: 
				escreva("Abril!")	
				pare
			caso 5: 
				escreva("Maio!")	
				pare
			caso 6: 
				escreva("Junho!")	
				pare	
			caso 7: 
				escreva("Julho!")	
				pare	
			caso 8: 
				escreva("Agosto!")	
				pare	
			caso 9: 
				escreva("Setembro!")	
				pare	
			caso 10: 
				escreva("Outubro!")	
				pare	
			caso 11: 
				escreva("Novembro!")	
				pare	
			caso 12: 
				escreva("Dezembro!")	
				pare	
				}
		
		se (numero_mes == 0 ou numero_mes > 12){
			escreva ("Número fora do intervalo de escolha!")
		}
	}
}
