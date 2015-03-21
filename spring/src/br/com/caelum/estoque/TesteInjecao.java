package br.com.caelum.estoque;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TesteInjecao {

	public static void main(String[] args) {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		GerenciadorDeProduto gerenciador = context.getBean("gerenciadorProduto", GerenciadorDeProduto.class);
		
		Produto produto = new Produto();
		
		produto.setDescricao("Livro Spring in Action");
		
		produto.setQuantidade(10);
		
		gerenciador.novoProduto(produto);
		
		for(Produto p : gerenciador.getProdutos()) {
			System.out.println("Descricao: " + p.getDescricao());
			System.out.println("Quantidade: " + p.getQuantidade());
		}
	}
	
}
