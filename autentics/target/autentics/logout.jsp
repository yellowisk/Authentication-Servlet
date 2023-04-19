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
        <%
        if (password.equals(user.get(j).getPassword()) && name.equals(user.get(j).getUser())) {
            if (people.contains(user.get(j).getPerson())) {
        %>
        <h1>You're logged in</h1>
        <%
            }
        else {
        %>
        <h1>User unexistent</h1>
        <%
            }
        %>
        <button onclick="window.location='index.jsp'">Log Out</button>
    </div>

</body>
</html>