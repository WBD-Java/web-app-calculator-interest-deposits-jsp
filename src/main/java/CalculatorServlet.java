import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/interest")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float deposits = Float.parseFloat(request.getParameter("deposits"));
        float monthly_interest_rate = Float.parseFloat(request.getParameter("rate"));
        int months = Integer.parseInt(request.getParameter("months"));

        if (deposits <= 0 || monthly_interest_rate <= 0 || months <= 0) {
            request.setAttribute("error","Deposits or monthly interest rate or months invalid");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request,response);

        } else {
            double interest_money = deposits * monthly_interest_rate * months * 0.01;
            request.setAttribute("interest_money",interest_money);
            RequestDispatcher dispatcher = request.getRequestDispatcher("interest.jsp");
            dispatcher.forward(request,response);

        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
