<%@ page import = "jared.simpledatabase.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include  file="partials/header.html" %>
<body>

<%@include  file="partials/navbar.html" %>

<section class="vh-100" style="background-color: #eee;">
<div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-50">

   <div class="row">
    <div class="col-6 mx-auto">

            <h3 class="text-center my-3 pb-3 ">New Task</h3>
      <form action="/todo/saveTask" method="POST">

       <div class="form-group">
           <label for="">Task Name</label>
             <input type="text" class="form-control form-control-lg" id="task" name="task" required>
       </div>

        <div class="form-group">
            <label for="">Description</label>
               <textarea class="form-control form-control-lg" id="description" name="description" rows="4" cols="50" required></textarea>
        </div>

            <div class="d-grid">
           <button class="btn btn-facebook btn-login text-uppercase fw-bold" id="submit-task" type="submit">
                  <i class="fab fa-facebook-f me-2"></i> Submit
               </button>
                     <div class="container" >
                     </div>
    </form>


</div>
  </div>
    </div>
         </div>
    </section>
    <script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
    <script type="text/javascript src="<c:url value="/assets/js/addTask.js" />"></script>

    <script>
    let $task = $('#task');
    let $description = $('#description');

    $("input").change(function(){
      alert("The text has been changed.");
    });

    function submitTask() {

     let taskFormData = $task.val();
     let descriptionFormData = $description.val();


    }
    </script>

<%@include  file="partials/footer.html" %>
</body>
</html>



