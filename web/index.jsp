<%--
  Created by IntelliJ IDEA.
  User: z1754
  Date: 2020/11/30
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>$Title$</title>
  </head>
  <body style="background-color: cornflowerblue">

  <p font="24" align="center">
    chat登录界面
  </p>
  <form method = "get" action="/test/test">
  <table width="50%" border="2" align="center">
    <tr bgcolor="#f0f8ff">
      <td align="center" width="43%">
        <div align="center">
          用户名：
        </div>
      </td>
      <td width="57%">
        <div align="left">
          <input type="text" name="username">
        </div>
      </td>
    </tr>
    <tr bgcolor="#f0f8ff">
      <td align="center" width="43%">
        <div align="center">
          密码：
        </div>
      </td>
      <td width="57%">
        <div align="left">
          <input type="password" name="password">
        </div>
      </td>
    </tr>
  </table>

  <tr bgcolor="#f0ffff">
    <td align="center" width="50%">
      <div align="center">
        <button type="submit">
          登录
        </button>

       <a href="register.jsp" target="_blank">
         注册
       </a>
      </div>
    </td>
  </tr>
  </form>
  </body>
</html>
