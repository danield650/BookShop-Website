<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?php echo $title; ?></title>

    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="./bootstrap/css/jumbotron.css" rel="stylesheet">
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">CCC BookShop</a>
        </div>

        
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
              
              <li><a href="publisher_list.php"><span class="glyphicon glyphicon-paperclip"></span>&nbsp; Editori</a></li>
              
              <li><a href="books.php"><span class="glyphicon glyphicon-book"></span>&nbsp; Carti</a></li>
              
              <li><a href="contact.php"><span class="glyphicon glyphicon-phone-alt"></span>&nbsp; Contact</a></li>
              
              <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; Cosul meu</a></li>
            </ul>
        </div>
      </div>
    </nav>
    <?php
      if(isset($title) && $title == "Index") {
    ?>
    
    <div class="jumbotron">
      <div class="container">
        <h1 align="center">Welcome to Online CCC BookShop</h1>
        <p class="lead"></p>
        <p></p>
      </div>
    </div>
    <?php } ?>
    
    <div class="container" id="main">