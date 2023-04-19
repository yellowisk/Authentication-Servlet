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
        <h1>Authenticate</h1>
        <form action="verifies" method="get">
            <div class="row">
                <label for="name">Name</label>
            </div>
            <input type="text" id="name" name="name" placeholder="Your name..."/>
            <div class="row">
                <label for="password">Senha</label>
            </div>
            <input type="text" id="password" name="password"/ placeholder="Your password...">
            <div class="row">
                <input type="submit" value="Send" name="btn_okdookie"/>
            </div>
        </form>
        <button class="mid"><a href="http://localhost:8080/autentics/">Go Home</a></button>
    </div>

</body>
</html>