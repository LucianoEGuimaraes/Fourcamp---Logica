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
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 557; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */