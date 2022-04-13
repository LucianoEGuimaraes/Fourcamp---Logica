programa
{
	
	funcao inicio()
	{
		inteiro animal
		
		escreva("Escolha uma opção de animal que traduziremos! \n")
		escreva("(1) Gato, (2) Cachorro, (3) Crocodilo, (4) Leão! \n")
		leia(animal)

		escolha(animal){

			caso 1:
				escreva("Cat!")
				pare
			caso 2: 
				escreva("Dog!")	
				pare
			caso 3: 
				escreva("Crocodile!")	
				pare	
			caso 4: 
				escreva("Lion!")	
				pare
				}
		se (animal < 0 ou animal > 4){
			escreva ("Opção inválida!")
		}
	}
}
