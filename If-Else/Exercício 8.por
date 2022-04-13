programa
{
	
	funcao inicio()
	{
		cadeia nome, email, rg, cpf
				
		escreva("Digite seu nome \n")
		leia(nome)

		escreva("Digite seu e-mail \n")
		leia(email)

		escreva("Digite seu RG \n")
		leia(rg)

		escreva("Digite seu CPF \n")
		leia(cpf)

		se(nome == ""){
			escreva("Campo nome não foi preenchido \n")
		}
		se(email == ""){
			escreva("Campo e-mail não foi preenchido \n")
		}
		se(rg == ""){
			escreva("Campo RG não foi preenchido \n")
		}
		se(cpf == ""){
			escreva("Campo CPF não foi preenchido \n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 319; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */