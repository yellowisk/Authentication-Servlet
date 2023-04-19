<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Status</title>
</head>
<body>

    
    <div class="container">
        <%
    String message = "";
    if (session.getAttribute("message")!=null){
        message = (String)session.getAttribute("message");
        session.removeAttribute("message");
    %>
    <h1><%=message %></h1>
    <%
        }
    %>
        <button class="back" onclick="window.location='index.jsp'">Go Home</button>
    </div>

</body>
</html>