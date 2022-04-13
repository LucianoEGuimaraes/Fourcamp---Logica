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
