<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Admin Panel Users</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles  -->
  <link rel="stylesheet" href="/css/main.css">
</head>

<body>

<!-- Start your project here-->
<!--Navbar -->
<nav class="mb-1 navbar navbar-expand-lg navbar-dark primary-color">
  <a class="navbar-brand" href="/admin">Admin Panel</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
          aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
          <a class="nav-link" href="/admin">Home</a>
      </li>
      <li class="nav-item active">
          <a class="nav-link" href="/AdminPanelUsers">Users
            <span class="sr-only">(current)</span>
          </a>
      </li>
    </ul>
    <!-- Links -->
    <ul class="navbar-nav ml-auto nav-flex-icons">
        <li class="nav-item">
            <a class="nav-link waves-effect waves-light">
                <i class="fab fa-twitter"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link waves-effect waves-light">
                <i class="fab fa-google-plus-g"></i>
            </a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-user"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right dropdown-default"
                 aria-labelledby="navbarDropdownMenuLink-333">
                <a class="dropdown-item" href="/logout">Logout</a>
            </div>
        </li>
    </ul>
  </div>
</nav>
<!--/.Navbar -->

<!-- main -->
<div class="container" style="height: 88.3vh;">
    <div class="row">
        <div class="col-md-12 d-flex justify-content-end">
            <!-- Search -->
            <div class="md-form">
              <i class="fas fa-search prefix"></i>
              <input type="text" id="inputIconEx2" class="form-control myInput">
              <label for="inputIconEx2">Search.....</label>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="z-depth-2">
                <table class="table table-striped mb-0">
                  <thead class="primary-color white-text">
                    <tr>
                      <th scope="col">ID</th>
                      <th scope="col">Name</th>
                      <th scope="col">Email</th>
                      <th scope="col">Password</th>
                      <th scope="col">IsAdmin</th>
                      <th scope="col">Edit</th>
                      <th scope="col">Delete</th>
                    </tr>
                  </thead>
                </table>
                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                  <table class="table table-striped mb-0">
                      <tbody id="myTable">
                        <#list allUsers as user>
                        <tr>
                          <th scope="row">${user.getId()}</th>
                          <th scope="col">${user.getName()}</th>
                          <th scope="col">${user.getMail()}</th>
                          <th scope="col">${user.getPassword()}</th>
                          <th scope="col">${user.isAdminString()}</th>
                          <th scope="col"><a href="#" data-selected="edit ${user.getId()}" class="btn btn-outline-warning waves-effect Mybtn-warning-hover-effect"><i class="fas fa-edit"></i></a></th>
                          <th scope="col"><a href="/deleteUser" data-selected="delete ${user.getId()}" class="btn btn-outline-danger waves-effect Mybtn-danger-hover-effect"><i class="fas fa-trash-alt"></i></a></th>
                        </tr>
                        </#list>
                      </tbody>
                  </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.main-->

<!-- Footer -->
<footer class="page-footer font-small primary-color">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="/admin">RockPaperSizerGame.com</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->
<!-- /Start your project here-->

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/js/mdb.min.js"></script>
<!-- Angular -->
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js"></script>
<!-- Your custom js -->
<script src="/js/AdminPanelUsersSearch.js"></script>
<script src="/js/DeleteUser.js"></script>
</body>

</html>