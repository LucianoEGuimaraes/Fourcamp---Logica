programa
{
	
	funcao inicio()
	{
		inteiro numero_dia
		
		escreva("Escolha um número de 0 a 6 e informaremos qual o dia corresponde ao número escolhido! \n")
		leia(numero_dia)

		escolha(numero_dia){

			caso 0:
				escreva("Domingo!")
				pare
			caso 1:
				escreva("Segunda-Feira!")
				pare
			caso 2: 
				escreva("Terça-Feira!")	
				pare
			caso 3: 
				escreva("Quarta-Feira!")	
				pare	
			caso 4: 
				escreva("Quinta-Feira!")	
				pare
			caso 5: 
				escreva("Sexta-Feira!")	
				pare
			caso 6: 
				escreva("Sábado!")	
				pare					
				}
		
		se (numero_dia > 6){
			escreva ("Número fora do intervalo de escolha!")
		}
	}
}
