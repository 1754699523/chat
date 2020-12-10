
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * @author z1754
 */
@SuppressWarnings("serial")
@WebServlet(name="test",urlPatterns = {"/test"})
public class Myser extends HttpServlet {
    public Myser() {
        super();
    }
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
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String userName = request.getParameter("username");
        String passWord = request.getParameter("password");
        String checkBox = request.getParameter("save_password");
        //账号存到session中
        request.getSession().setAttribute("name",userName);
        String[] name_one = {"zfj","fxy","张富军","范小蝇"};
        String[] pwd_one = {"123","123","456","456"};
        String name_two = "";
        String pwd_two = "";
        boolean login_test = false;
        for(int i=0;i<4;i++){
            name_two = name_one[i];
            pwd_two = pwd_one[i];
            if(userName.equals(name_two) && passWord.equals(pwd_two)) {
                login_test = true;
            }
        }
        if(login_test) {
            if ("save".equals(checkBox)) {
                //Cookie存取时用URLEncoder.encode进行编码(PS:读取时URLDecoder.decode进行解码)
                String name = URLEncoder.encode(userName,"UTF-8");
                //创建两个Cookie对象
                Cookie nameCookie = new Cookie("username", name);
                //设置Cookie的有效期为3天
                nameCookie.setMaxAge(60 * 60 * 24 * 3);
                String pwd = URLEncoder.encode(passWord,"UTF-8");
                Cookie pwdCookie = new Cookie("password", pwd);
                pwdCookie.setMaxAge(60 * 60 * 24 * 3);
                response.addCookie(nameCookie);
                response.addCookie(pwdCookie);
            }
            request.getRequestDispatcher("chats.jsp").forward(request, response);
        }
        else{
            response.sendRedirect("index.jsp");
            // request.getRequestDispatcher("loginFail.jsp").forward(request, response);
        }

    }
    @Override
    public void init() throws ServletException {
    }

}