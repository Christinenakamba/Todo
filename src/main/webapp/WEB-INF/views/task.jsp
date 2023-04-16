<%@ page import = "jared.simpledatabase.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en"

<head>
    <meta charset="UTF-8">
    <title>Task </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
          <link href="/css/nav.css" rel="stylesheet">
</head>
<body>
<header>

    <div class="logosec">
        <div class="logo">TO-DO APP
        </div>

    </div>

    <div class="message">
        <div class="circle"></div>
        <a href="/logout"<a class="list-group-item hidden-arrow d-flex align-items-center"><span>Logout</span></a>
    </div>

</header>

<div class="main-container">
    <div class="navcontainer">
        <nav class="nav">
            <div class="nav-upper-options">

                 <div class="option2 nav-option">

                  <h3><a class="navbar-brand" href="/home">Dashboard</a></h3>
                </div>
                <div class="option2 nav-option">

                       <h3><a class="navbar-brand" href="todo/addTask">Add Task</a></h3>
              </div>
              <div class="option2 nav-option">

                       <h3><a class="navbar-brand" href="/home">Edit Task</a></h3>
             </div>


        </nav>



                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>

