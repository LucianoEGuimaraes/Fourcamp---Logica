programa
{
	
	funcao inicio()
	{
		inteiro numero, mtp
	
		escreva("Digite o número para visualizar a tabuada: \n")
		leia(numero)
	
		para(inteiro cont = 1; cont <=10; cont++){
			mtp = numero * cont
			escreva (numero, " x ", cont," = ", mtp ,"\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */