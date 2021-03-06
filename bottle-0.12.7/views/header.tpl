<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" type="text/css" href="bootstrap.css"/>
  <link rel="stylesheet" type="text/css" href="dingo.css"/>
</head>

<body>

  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">

      <div class="navbar-header padded-right">
        <img src="Dingo.jpeg" alt="DingoLogo">
      </div>

      <div class="navbar-header">
        <a class="navbar-brand" href="#">Dingo</a>
      </div>

      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        %if title != 'PinBoard':
          <form id="searchForm" class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" name="words" class="form-control">
            </div>
            <button type="submit" class="btn btn-default">Search</button>
          </form>

          %if user_email != '':
            <form name="pinBoard" class="navbar-form navbar-left" method="post" action="pinboard">
              <button type="submit" id="pinBoardButton" class="btn btn-warning">My Pinboard</button>
            </form>
          %end
        %else:
          <form name="Home" class="navbar-form navbar-left" method="get" action="/">
            <button type="submit" id="homeButton" class="btn btn-warning">Home</button>
          </form>
        %end

        %if user_email == '':
          <form name="signInForm" class="navbar-form navbar-right" method="get" action="signin">
            <button type="submit" id="signInButton" class="btn btn-warning">Sign In</button>
          </form>
        %else:
          <form name="signInForm" class="navbar-form navbar-right" method="get" action="signout">
            <div class="form-group user-email">{{user_email}}</div>
            <button type="submit" id="signInButton" class="btn btn-warning">Sign Out</button>
          </form>
        %end

      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
