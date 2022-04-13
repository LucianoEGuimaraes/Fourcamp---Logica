programa {
	
	funcao inicio() {
	    
	    real numero, i, fat
		
		escreva("Digite o número: ")
		leia(numero)
		fat = numero
		
		para(i=numero; i>1; i--){
		    fat = fat * (i-1)
		}
		
		escreva("O fatorial do número ",numero," é: ",fat)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 92; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */