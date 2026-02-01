package auca.ac.rw;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet("/RedirectServlet")
public class RedirectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the search query from the input field
        String query = request.getParameter("searchQuery");

        if (query != null && !query.trim().isEmpty()) {
            // Encode the query for URL
            String encodedQuery = URLEncoder.encode(query, "UTF-8");
            // Redirect to Google with the search query
            String redirectUrl = "https://www.google.com/search?q=" + encodedQuery;
            response.sendRedirect(redirectUrl);
        } else {
            // If no query provided, redirect to Google homepage
            response.sendRedirect("https://www.google.com");
        }
    }
}
