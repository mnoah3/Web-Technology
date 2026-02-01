package auca.ac.rw;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get username and password from the form
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Set response content type
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            // Generate HTML response
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Login Result</title>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; padding: 20px; }");
            out.println(".success { color: green; font-size: 18px; }");
            out.println(".warning { color: orange; font-size: 18px; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");

            // Check if password is weak (less than 8 characters)
            if (password.length() < 8) {
                out.println("<p class='warning'>Hello " + username + ", your password is weak. Try a strong one.</p>");
            } else {
                out.println("<p class='success'>Welcome " + username + "</p>");
            }

            out.println("<br/><a href='LoginPage.jsp'>Back to Login</a>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }
}
