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
