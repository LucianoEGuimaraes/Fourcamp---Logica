programa
{
	
	funcao inicio()
	{
		inteiro lata, garrafa_seiscentos, garrafa_dois
		real litros

		escreva("Comprou quantas latas? \n")
		leia (lata)

		escreva("Comprou quantas garrafas de 600ml? \n")
		leia (garrafa_seiscentos)

		escreva("Comprou quantas garrafas de 2 litros? \n")
		leia (garrafa_dois)

		litros = (lata * 0.35) + (garrafa_seiscentos * 0.6) + (garrafa_dois * 2)
		escreva(litros)
	}
}
