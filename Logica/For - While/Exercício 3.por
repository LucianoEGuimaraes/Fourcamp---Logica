programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro i
		
		escreva("Escreva seu nome: \n")
		leia(nome)

		para (i = 1; i <= 15; i++)
			escreva("\n" + i + ". " + nome)
	}
}
