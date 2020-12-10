<%--
  Created by IntelliJ IDEA.
  User: z1754
  Date: 2020/12/2
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="jquery-3.4.1.min.js"></script>
<html>
<head>

    <title>网上聊天室</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="content-type" content="text/html; charset=gb2312">
    <meta http-equiv="description" content="This is my page">
    <title>网上聊天室</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="content-type" content="text/html; charset=gb2312">
    <meta http-equiv="description" content="This is my page">
</head>
<body>
<div id="header">
    <form>
        <table  width="100%" height="79" border="0" cellpadding="0"
                cellspacing="0" align=center>
            <tr>
                <td bgcolor="aqua" valign="top">
                    <table width="100%" height="50" border="0" align="center"
                           cellpadding="0" cellspacing="0" bgcolor="FBEAD0">
                        <tr>
                            <td align="center" style="font-size:40px;">
                                chat
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="aqua" valign="top">
                    <table width="100%" border="0" align="center" cellpadding="0"
                           cellspacing="0">
                        <tr>
                            <td align="center" style="font-size:20px" valign="middle">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</div>
<div id="menu"  style="background-color: azure;float: right;width: 20%;"  >
    <h1>
        我的好友</h1>
    <p>
        <a href="index.jsp">张富军</a><br/><br/>
        <a href="index.jsp">fxy</a><br/><br/>
        <a href="index.jsp">范小蝇</a><br/><br/>
        <br><br><br><br><br><br><br><br><br><br><br><br>


    </p>
    </p>

</div>
<div id="con"style="background-color: azure;float: left ;width: 80%">
    <form action="/test/chat" method=post>
        <textarea readonly="readonly" id="sa"cols="105" rows="25" name="show"
                  style=" background-color:azure;width: 1100px;"   >

             <%= (String) request.getAttribute("input")
             %>

        </textarea>
        <br>
        </form>
</div>
<div style="width: 80%">
        <form action="/test/chat" method=post>
        <textarea id="text" cols="105" rows="5"  name="input"style="width: 100%" ></textarea><br>

        <input type="submit" value="发送" name="send"
               style="width: 100px; height: 40px;font-size: 25px;float: right"><br>

    </form>
</div>
<script type="text/javascript">

        setInterval(function () {
                $("#con").load(location.href + " #con");
        }, 1000);


</script>
</body>
</html>

