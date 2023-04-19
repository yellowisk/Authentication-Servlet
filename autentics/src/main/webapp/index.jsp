<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Accounts</title>
</head>
<body>
    
    <%
    String message = "";
    if (session.getAttribute("message")!=null){
        message = (String)session.getAttribute("message");
        session.removeAttribute("message");
    %>
    <h2><%=message %></h2>
    <%
        }
    %>

    <div class="container">
        <h1>Create a person and a user</h1>
        <form action="verifies" method="post">
            <div class="row">
                <label for="name">Name</label>
            </div>
            <input type="text" id="name" name="name" placeholder="Your name..."/>
            <div class="row">
                <label for="sex">Sexo</label>
            </div>
            <input type="text" id="sex" name="sex" placeholder="Your sex..."/>
            <div class="row">
                <label for="password">Senha</label>
            </div>
            <input type="text" id="password" name="password" placeholder="Your password..."/>
            <div class="row">
                <input type="submit" value="Send" name="btn_ok"/>
            </div>
            <div class="row">
                <input type="submit" value="Authenticate" name="btn_ok" onclick="window.location='status.jsp'"/>
            </div>
        </form>
    </div>

</body>
</html>
