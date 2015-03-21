package br.com.caelum.estoque;

import java.util.List;

import br.com.caelum.estoque.dao.ProdutoDAO;

public class GerenciadorDeProduto {
	private ProdutoDAO produtoDao;
	
	public GerenciadorDeProduto(ProdutoDAO produtoDao) {
		this.produtoDao = produtoDao;
	}
	
	public void novoProduto(Produto produto) {
		System.out.println("Salvando Produto.");
		this.produtoDao.salvar(produto);
	}
	
	public List<Produto> getProdutos() {
		return produtoDao.listar();
	}
}
