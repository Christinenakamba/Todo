
<%@ page import = "jared.simpledatabase.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en"

<head>
    <meta charset="UTF-8">
    <title>Register</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
           <link href="/css/login.css" rel="stylesheet">
 </head>

 <body>
       <div class="container">
         <div class="row">
           <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
             <div class="card border-0 shadow rounded-3 my-5">
               <div class="card-body p-4 p-sm-5">
                 <h5 class="card-title text-center mb-5 fw-light fs-5">Register</h5>

                 <form action="/register" method="POST">

                   <div class="form-outline mb-4">
                     <input
                       type="text" id="fname" name="firstName"  placeholder= "first Name" required
                      class="form-control form-control-lg"/>

                   </div>
                   <div class="form-outline mb-4">
                     <input type="text"  id="lname" name="lastName" placeholder="Last Name" required
                      class="form-control form-control-lg"/>

                   </div>
                   <div class="form-outline mb-4">
                      <input type="email"  id="username" name="username" placeholder="Email" required
                         class="form-control form-control-lg"/>

                         </div>

                    <div class="form-outline mb-4">
                     <input type="password"  id="password" name="password" placeholder="Password" required
                    class="form-control form-control-lg"/>

                    </div>

                     <div class="d-grid">
                         <button class="btn btn-facebook btn-login text-uppercase fw-bold" type="submit" value="user">
                           <i class="fab fa-facebook-f me-2"></i> Register
                         </button>
                     </div>
                        <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="login"
                        class="fw-bold text-body"><u>Login here</u></a></p>
                   </div>
                 </form>
               </div>
             </div>
           </div>
         </div>
       </div>
     </body>



</html>