<%@ page import="java.util.*" %>
<%                    List styles = (List) request.getAttribute("styles");
                    Iterator it = styles.iterator();
%>
<html>
    <head>
        <style>
            body {
                background-image: url('./Images/bgmain.jpg');
                background-repeat: no-repeat;  
                background-position: center center;
                background-size:cover;
            }
            div.transbox
            {
                <%
                String check;
                check = new String((String)it.next());
                if(check.equals("action")){
                    out.print("background-image: url('./Images/action.jpg');");
                }
                else if(check.equals("comedy")){
                    out.print("background-image: url('./Images/comedy.jpg');");
                }
                else if(check.equals("scifi")){
                    out.print("background-image: url('./Images/scifi.gif');");
                }
                else if(check.equals("drama")){
                    out.print("background-image: url('./Images/drama.gif');");
                }
                %>
                background-position: left center;
                background-repeat: no-repeat;
                background-size:18%;

                margin-top: 30px;

                float: center;
                margin-left: auto;
                margin-right: auto;
                background-color: #ffffff;
                border: 2px solid black;
                opacity:0.85;
                filter:alpha(opacity=85); /* For IE8 and earlier */
                align: center;
            }
            div.transbox p
            {
                margin: 5%;
                font-weight: bold;
                color: #000000;
            }
        </style>
    </head>
    <body>
    <center>
        <div class="transbox">
            <h1 align="center">Movie Recommendation JSP View</h1>
            <p>

                <%
                    out.print("<center>");
                    int i=1;
                    while (it.hasNext()) {
                        out.print("<br>" + i + ". " + it.next());
                        i++;
                    }
                    out.print("</center>");
                %>
            </p>
        </div>
    </center>
</body>
</html>