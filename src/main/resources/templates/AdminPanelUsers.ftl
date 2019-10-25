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
  <style media="screen">
    tr td .edit-mode {
      display: none;
    }
    tr.editing td .edit-mode {
      display: block;
    }
    tr.editing td .view {
      display: none;
    }
  </style>
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
                          <td scope="row">${user.getId()}</td>
                          <td scope="col">
                            <span class="view">${user.getName()}</span>
                            <input id="name${user.getId()}" class="edit-mode form-control" type="text" value="${user.getName()}">
                          </td>
                          <td scope="col">
                            <span class="view">${user.getMail()}</span>
                            <input id="mail${user.getId()}" class="edit-mode form-control" type="text" value="${user.getMail()}">
                          </td>
                          <td scope="col">
                            <span class="view">${user.getPassword()}</span>
                            <input id="password${user.getId()}" class="edit-mode form-control" type="text" value="${user.getPassword()}">
                          </td>
                          <td scope="col">
                            <span class="view">${user.isAdminString()}</span>
                            <input id="isAdmin${user.getId()}" class="edit-mode form-control" type="text" value="${user.isAdminString()}">
                          </td>
                          <td scope="col"><a toggle-edit class="view btn btn-outline-warning waves-effect Mybtn-warning-hover-effect"><i class="fas fa-edit"></i></a></td>
                          <td scope="col">
                            <a href="/deleteUser" data-selected="delete ${user.getId()}" class="view btn btn-outline-danger waves-effect Mybtn-danger-hover-effect"><i class="fas fa-trash-alt"></i></a>
                            <a href="/editUser" data-selected="edit ${user.getId()}" class="edit-mode btn btn-outline-primary waves-effect Mybtn-primary-hover-effect"><i class="fas fa-save"></i></a>
                          </td>
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
<script src="/js/EditUser.js"></script>
<script src="/js/DeleteUser.js"></script>
<script src="/js/AdminPanelUsersSearch.js"></script>
</body>

</html>