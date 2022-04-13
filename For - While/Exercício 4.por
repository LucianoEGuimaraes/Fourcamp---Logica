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

