package br.com.caelum.estoque.service;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import br.com.caelum.estoque.Grupo;

@Component
public class LoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest req,
			HttpServletResponse res, Authentication authentication) throws IOException,
			ServletException {
		
		Collection<GrantedAuthority> roles = authentication.getAuthorities();
		
	    Grupo g = new Grupo();
	    
	    g.setNome("ROLE_ADMIN");
	    
	    if (roles.contains(g)) {
	    	res.sendRedirect("produtos/form");
	    } else {
	    	res.sendRedirect("produtos/listar");
	    }
	}

}
