programa
{
	
	funcao inicio()
	{
		inteiro cavalos
		real total, valor_final
		
		escreva("Quantos cavalos precisam de ferraduras? \n")
		leia(cavalos)

		total = (cavalos * 4) * 9.90

		se (total > 100){
			valor_final = total * 0.90
			escreva ("R$ " + valor_final)
			}	
		senao{
			escreva("R$ " + total)
			}	
	}
}
