package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.UsuarioBean;

/**
 *
 * @author ggois
 */
public class EfetuaLogin extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet EfetuaLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EfetuaLogin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session;
        Cookie cookieLogin, cookieSenha;
        RequestDispatcher dispatcher;
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        boolean lembrar_me = Boolean.getBoolean(request.getParameter("remember_me"));
        
        if (login.equals("admin") && senha.equals("12345678")) {
            UsuarioBean usuarioBean = new UsuarioBean();
            usuarioBean.setLogin(login);
            usuarioBean.setSenha(senha);
            
            session = request.getSession();
            session.setAttribute("USUARIO", usuarioBean);
            
            if (lembrar_me) {
                cookieLogin = new Cookie("LOGIN", login);
                cookieLogin.setMaxAge(24 * 60 * 60);
                cookieLogin.setSecure(true);
                cookieLogin.setComment("Login do usuário.");
                
                cookieSenha = new Cookie("SENHA", senha);
                cookieSenha.setMaxAge(24 * 60 * 60);
                cookieSenha.setSecure(true);
                cookieSenha.setComment("Senha do usuário.");
                
                response.addCookie(cookieLogin);
                response.addCookie(cookieSenha);
            }
            
            dispatcher = request.getRequestDispatcher("Home");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("mensagem", "Usuário ou senha inválidos.");
            
            dispatcher = request.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
