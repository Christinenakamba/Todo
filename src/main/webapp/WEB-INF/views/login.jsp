<%@ page import = "jared.simpledatabase.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en"

<head>
    <meta charset="UTF-8">
    <title>Registration </title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">

    <link href="/css/login.css" rel="stylesheet"  type="text/css">

     <head/>

     <body>
       <div class="container">
         <div class="row">
           <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
             <div class="card border-0 shadow rounded-3 my-5">
               <div class="card-body p-4 p-sm-5">
                 <h5 class="card-title text-center mb-5 fw-light fs-5">Login</h5>
                 <form action="/login" method="POST">

                   <div class="form-outline mb-4">
                     <input type="email" class="form-control" id="username" name="username" placeholder="Username">

                   </div>
                   <div class="form-outline mb-4">
                     <input type="password" class="form-control" name="password" id="Password" placeholder="Password">

                   </div>


                   <div class="d-grid">
                     <button class="btn btn-facebook btn-login text-uppercase fw-bold" type="submit">
                       <i class="fab fa-facebook-f me-2"></i> Login
                     </button>
                     <div class="container" >

                        <p class="text-center text-muted mt-5 mb-0">Do not have an account? <a href="/registerForm"
                        class="fw-bold text-body"><u>Sign Up</u></a></p>
                               </div>
                   </div>
                 </form>
               </div>
             </div>
           </div>
         </div>
       </div>
     </body>
     </html>