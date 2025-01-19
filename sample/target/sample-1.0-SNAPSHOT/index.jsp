<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String inputUsername = request.getParameter("username");
    Cookie cookieUsername = new Cookie("inputUsername",inputUsername);
    response.addCookie(cookieUsername);
    
    String inputPassword = request.getParameter("password");
    Cookie cookiePassword = new Cookie("inputPasswrd",inputPassword);
    response.addCookie(cookiePassword);
%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>Login</title>
        <link href="css/welcome.css" rel="stylesheet" />
        <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous"
        />
    </head>
    <body class="d-flex justify-content-center align-items-center" style="height: 100vh; background-color: #f8f9fa;">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-4 col-sm-6 col-12">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h2 class="card-title text-center mb-4"><strong>Login</strong></h2>
                            <form action="login" method="GET">
                                <div class="mb-3">
                                    <label for="username" class="form-label">Username:</label>
                                    <input type="text" id="username" name="username" class="form-control" required />
                                </div>
                                <div class="mb-3">
                                    <label for="password" class="form-label">Password:</label>
                                    <input type="password" id="password" name="password" class="form-control" required />
                                </div>
                                <div class="d-grid gap-2">
                                    <input type="submit" value="Login" class="btn btn-primary w-40 mx-auto" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

