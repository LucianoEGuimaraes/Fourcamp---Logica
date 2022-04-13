programa {
	funcao inicio() {

	    inteiro b, h, area

		escreva("Digite lado B: ")
		leia(b)
		
		escreva("Digite lado H: ")
		leia(h)
		
		area = b*h
		
		escreva("A área do retangulo (b*h) é: ",area)
		
		se(b==h){
		    escreva("\nÉ um quadrado")
		}senao{
		    escreva("\nNão é um quadrado")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */