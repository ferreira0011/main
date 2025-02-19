/*
 * 2011475 - ANA BEATRIZ FERREIRA PESSOA
 * 2011138 - CEDRIC ARNAUD SAGANG PFEMBI
 * 2011825 - JOÃO VICTOR DE MACÊDO SANTOS
 * 2010106 - MICHAEL YUSEF MORAIS DIAS
 * 2011258 - VICTOR ALVES FERREIRA
 * 
 * Projeto de software do empréstimo financeiro SAC (Sistema de Amortização Constante)
 * OBJETIVO: Realizar o cálculo de um empréstimo no sistema SAC, apresentando ao usuário
 * os valores iniciais, finais e totais da Amortização, Juros e Prestações.
 */

programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//Variáveis.
		real saldo_devedor, parcelas, taxa_juros, primeira_prestacao, juros, amortizacao, i; 
		real prestacao_final = 0, juros_final = 0, total_prestacao = 0, total_juros = 0, total_amortizacao = 0;

		
		//Dados de entrada (Fornecidos pelo usuário).
		escreva("Insira o valor do empréstimo: \n"), leia(saldo_devedor);
		escreva("Insira o período de pagamento (anos): \n"), leia(parcelas);
		escreva("Insira a taxa de juros (ex.: 0.00): \n"), leia(taxa_juros);
		escreva("\n");


		//Cálculo do 1º período de prestações.

		//Amortização.
		amortizacao = (saldo_devedor / parcelas);

		//Juros.
		juros = (saldo_devedor * taxa_juros);

		//1º Período de Prestações.
		primeira_prestacao = (amortizacao + juros);

		//Apresentação dos valores iniciais.
		escreva("Valor inicial da Amortização é: ", mat.arredondar(amortizacao,2) + "\n");
		escreva("Valor inicial dos Juros é: ", mat.arredondar(juros,2) + "\n");
		escreva("Valor inicial das Prestações é: ", mat.arredondar(primeira_prestacao,2) + "\n");
		escreva("\n");
		
		
		//Prestações Seguintes até o final do período depois do período 1.
		//Estrutura de repetição.
		para (i = 0; i < parcelas - 1; i++){

		prestacao_final = (saldo_devedor - amortizacao);
		
		saldo_devedor = prestacao_final;

		juros_final = (saldo_devedor * taxa_juros);

		prestacao_final = (juros_final + amortizacao);

		//Resultado final dos Juros e Prestações seguintes a partir do período 1.
		total_juros = (total_juros + juros_final);
		
		total_prestacao = (total_prestacao + prestacao_final);
		
		}

		//Cálculo do total de Amortização
		total_amortizacao = (amortizacao * parcelas);

		//Apresentação dos valores finais
		escreva("Valor final da Amortização é: ", mat.arredondar(amortizacao,2) + "\n");
		escreva("Valor final dos Juros é: ", mat.arredondar(juros_final,2) + "\n");
		escreva("Valor final das Prestações é: ", mat.arredondar(prestacao_final,2) + "\n");
		escreva("\n");

		//Apresentação dos valores totais
		escreva("Valor total da Amortização é: ", mat.arredondar(total_amortizacao,2) + "\n");
		escreva("Valor total dos Juros é: ", mat.arredondar((total_juros+juros),2) + "\n");
		escreva("Valor total das Prestações é: ", mat.arredondar((total_prestacao + primeira_prestacao),2) + "\n");
		escreva("\n");
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2618; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */