<!DOCTYPE html>
<html lang="en" ng-app="">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Home</title>
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
<nav class="mb-1 navbar navbar-expand-lg navbar-dark default-color">
  <a class="navbar-brand" href="/home">Rock | Paper | Sizer</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
          aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
    <!-- Links -->
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
          <a class="nav-link" href="/home">Game</a>
      </li>
      <li class="nav-item active">
          <a class="nav-link" href="/statistics">Statistics
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
<div class="container" style="height: 70.9vh;">
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
                  <thead class="default-color white-text">
                    <tr>
                      <th scope="col">ID</th>
                      <th scope="col">Name</th>
                      <th scope="col">PlayedGame</th>
                      <th scope="col">Win</th>
                      <th scope="col">Lost</th>
                      <th scope="col">Draw</th>
                    </tr>
                  </thead>
                </table>
                <div class="table-wrapper-scroll-y my-custom-scrollbar">
                  <table class="table table-striped mb-0">
                      <tbody id="myTable">
                        <#list allStatistics as statistic>
                        <tr>
                          <th scope="row">${statistic.getUser().getId()}</th>
                          <th scope="col">${statistic.getUser().getName()}</th>
                          <th scope="col">${statistic.getCountPlayGame()}</th>
                          <th scope="col">${statistic.getCountWin()}</th>
                          <th scope="col">${statistic.getCountLost()}</th>
                          <th scope="col">${statistic.getCountDraw()}</th>
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
<footer class="page-footer font-small cyan darken-3">
  <!-- Footer Elements -->
  <div class="container">
    <!-- Grid row-->
    <div class="row">
      <!-- Grid column -->
      <div class="col-md-12 py-5">
        <div class="mb-5 flex-center">
          <!-- Facebook -->
          <a class="fb-ic">
            <i class="fab fa-facebook-f fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!-- Twitter -->
          <a class="tw-ic">
            <i class="fab fa-twitter fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!-- Google +-->
          <a class="gplus-ic">
            <i class="fab fa-google-plus-g fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!--Linkedin -->
          <a class="li-ic">
            <i class="fab fa-linkedin-in fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!--Instagram-->
          <a class="ins-ic">
            <i class="fab fa-instagram fa-lg white-text mr-md-5 mr-3 fa-2x"> </i>
          </a>
          <!--Pinterest-->
          <a class="pin-ic">
            <i class="fab fa-github fa-lg white-text fa-2x"> </i>
          </a>
        </div>
      </div>
      <!-- Grid column -->
    </div>
    <!-- Grid row-->
  </div>
  <!-- Footer Elements -->
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2018 Copyright:
    <a href="/home">RockPaperSizerGame.com</a>
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
<script src="/js/StatisticsSearch.js"></script>
</body>

</html>