<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String inputUsername = request.getParameter("username");

    Cookie cookieUsername = new Cookie("inputUsername", inputUsername);
    response.addCookie(cookieUsername);

    String inputPassword = request.getParameter("password");
    Cookie cookiePassword = new Cookie("inputPassword", inputPassword);
    response.addCookie(cookiePassword);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
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
                        <div class="card-body text-center">
                            <h4>Hello, <%= inputUsername %>! Welcome to ICS2609.</h4>
                            <form action="logout" method="GET">
                                <div class="d-grid gap-2">
                                    <button type="submit" class="btn btn-danger w-40 mx-auto">Logout</button>
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

