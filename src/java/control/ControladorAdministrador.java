package control;


import entidade.User;
import java.io.IOException;
import javax.servlet.ServletException;
import model.userDAO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="ControladorAdministrador",urlPatterns={"/ControladorAdministrador"})
public class ControladorAdministrador extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
          throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("Cadastrar".equals(action)) {
            System.out.println("cadasrto como action");
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String senha = request.getParameter("senha");
            String endereco = request.getParameter("endereco");

            User newUser = new User();
            newUser.setNome(nome);
            newUser.setCpf(cpf);
            newUser.setSenha(senha);
            newUser.setEndereco(endereco);

            userDAO userDAO = new userDAO();
            userDAO.insert(newUser);

            
            response.sendRedirect("index.jsp");

        }else if ("Login".equals(action)) {
            String cpf = request.getParameter("cpf");
            String senha = request.getParameter("senha");

            userDAO userDAO = new userDAO();
            User authenticatedUser = userDAO.getUserByCPF(cpf);

            if (authenticatedUser != null && authenticatedUser.getSenha().equals(senha)) {
                
                HttpSession session = request.getSession();
                session.setAttribute("authenticatedUser", authenticatedUser);
                response.sendRedirect("views/cliente.jsp");
            } else {
                
                response.getWriter().println("Authentication falhou. Invalid CPF or password.");
            }
        }
       
    }
}