programa {
	funcao inicio() {
        inteiro num_um, num_dois, resultado
        caracter pergunta = 's'
        
        enquanto(pergunta == 's' ou pergunta == 'S'){
                
            escreva("Informe o número um: ")
            leia(num_um)
            
            escreva("Informe o número dois: ")
            leia(num_dois)
            
            resultado = num_um + num_dois
            escreva("Resultado: ",resultado)
            
            escreva("\nDeseja calcular novamente? (S/N): ")
            leia(pergunta)
        }
	}
}
