/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
import java.math.BigDecimal;

import entidade.Transaction;
import entidade.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.userDAO;

/**
 *
 * @author marcia yumi
 */
@WebServlet(name = "ControladorTransacao", urlPatterns = {"/ControladorTransacao"})
public class ControladorTransacao extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("Transferir".equals(action)) {

            String userIdDestinoStr = request.getParameter("useriddestino");
            String tipo = request.getParameter("tipo");
            String userIdOrigemStr = request.getParameter("useridorigem");
            String valorStr = request.getParameter("valor");

            int userIdDestino = Integer.parseInt(userIdDestinoStr);
            int userIdOrigem = Integer.parseInt(userIdOrigemStr);
            BigDecimal valor = new BigDecimal(valorStr);

            Transaction newTransfer = new Transaction();
            newTransfer.setUserIdOrigem(userIdOrigem);
            newTransfer.setUserIdDestino(userIdDestino);
            newTransfer.setTipo(tipo);
            newTransfer.setValor(valor);
            
            userDAO userDAO = new userDAO();
            userDAO.insertTransaction(newTransfer);

            response.sendRedirect("index.jsp");
        }
    }
}


