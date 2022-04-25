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
