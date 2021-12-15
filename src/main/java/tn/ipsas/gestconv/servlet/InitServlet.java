package tn.ipsas.gestconv.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import tn.ipsas.gestconv.db.connection.DatabaseConnectionFactory;

@WebServlet(value="/initServlet", name = "init", loadOnStartup=1)
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public InitServlet() {
        super();
    }

}