<!DOCTYPE html>
<html lang="en" ng-app="">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Rock | Paper | Sizer</title>
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
            <li class="nav-item active">
                <a class="nav-link" href="/home">Game
                    <span class="sr-only">(current)</span>
                </a>
             </li>
            <li class="nav-item">
                <a class="nav-link" href="/statistics">Statistics</a>
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
<main class="container" style="height: 70.9vh;">
    <div class="row pt-3 justify-content-center">
      <h1>Let's play the game!</h1>
    </div>
    <div class="row">
      <div class="col-md-8">
        <div class="row justify-content-center">
          <h3 class="mb-0">Choose one</h3>
        </div>
        <div class="row">
          <div class="col-md-4">
            <button type="button" class="btn MyButtonRockPaperSizer" data-selected="rock">
                <img class="img-fluid" src="/img/Rock.png" alt="Rock">
            </button>
          </div>
          <div class="col-md-4">
            <button type="button" class="btn MyButtonRockPaperSizer" data-selected="paper">
                <img class="img-fluid" src="/img/Paper.png" alt="Paper">
            </button>
          </div>
          <div class="col-md-4">
            <button type="button" class="btn MyButtonRockPaperSizer" data-selected="sizer">
                <img class="img-fluid" src="/img/Sizer.png" alt="Sizer">
            </button>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="row justify-content-center">
          <h3 class="mb-0">PC choice</h3>
        </div>
        <div class="row">
          <img id="pcChoice" class="img-fluid" src="/img/mysteryCard.png" alt="Mystery card" style="max-width: 250px!important;">
        </div>
      </div>
    </div>
    <div class="row pt-5 justify-content-center">
      <h3 id="result"></h3>
    </div>
</main>
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
<script src="/js/rockPaperSizer.js"></script>
</body>
</html>