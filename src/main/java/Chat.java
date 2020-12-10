
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "chat",urlPatterns = {"/chat"})
@SuppressWarnings("serial")
public class Chat extends HttpServlet {
    //定义聊天记录变量，此处为全局变量
    public String record = "";
    //shijian
    public String data="";
    /**
     * Constructor of the object.
     */
    public Chat() {
        super();
    }

    /**
     * Destruction of the servlet. <br>
     */
    @Override
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }


    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request,response);
    }


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        String input = request.getParameter("input");
        Date now = new Date();
        String S=" ";
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = dateFormat.format(now);
        String t = (String) request.getSession().getAttribute("name");

        if (input==null) {
            request.setAttribute("input",record);
            request.getRequestDispatcher("chats.jsp").forward(request, response);
        }
      else  {
            System.out.println(input);
            record += t + ":   " + time + "\n" + input + "\n";
            request.setAttribute("input", record);
            request.getRequestDispatcher("chats.jsp").forward(request, response);
        }
    }

    /**
     * Initialization of the servlet. <br>
     *
     * @throws ServletException if an error occurs
     */
    @Override
    public void init() throws ServletException {
        // Put your code here
    }

}