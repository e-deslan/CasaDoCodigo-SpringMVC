package org.casadocodigo.loja.controllers;

import javax.transaction.Transactional;

import org.casadocodigo.loja.daos.ProdutoDAO;
import org.casadocodigo.loja.models.BookType;
import org.casadocodigo.loja.models.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Transactional
public class ProductsController {

	@Autowired
	private ProdutoDAO produtoDAO;
	
	@RequestMapping("/produtos")
	public String save(Product product){
		System.out.println("Salvando o produto: " + product);
		produtoDAO.save(product);
		return "produtos/ok";
	}
	
	@RequestMapping("/form")
	public ModelAndView form(){
		ModelAndView mv = new ModelAndView("produtos/form");
		mv.addObject("types",BookType.values());
		return mv;
	}
}
