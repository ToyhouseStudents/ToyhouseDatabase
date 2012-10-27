<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Prototype of search</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="bootstrap/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="bootstrap/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="bootstrap/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="bootstrap/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="bootstrap/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Prototype of search</a>
        </div>
      </div>
    </div>

    <div class="container">

    <form class="form-search">
        <select name="type" class="input-small">
          <option value="all">All</option>
          <option value="user">User</option>
          <option value="wiki">Wiki</option>
          <option value="question">Question</option>
        </select>
      <input type="text" name="q" class="input-medium search-query">
      <button type="submit" class="btn">Search</button>
    </form>

<?php
if(isset($_GET['q'])){
    $con = mysql_connect("localhost","iedb","iedb");
    if (!$con)
      {
      die('Could not connect: ' . mysql_error());
      }

    mysql_select_db("toyhouse", $con);

    $q=$_GET['q'];
    $type=$_GET['type'];

    $where="WHERE MATCH (title,content) AGAINST ('$q' IN BOOLEAN MODE)";

    if($type!='all')
        $where.=" AND type='$type'";

    $sql="SELECT * FROM search_index ".$where;
    //echo $sql;
    $result = mysql_query($sql);

    while($row = mysql_fetch_array($result))
      {
      echo '<div class="row-fluid"><div class="span12">';
      echo "<h2>{$row['title']}</h2>";
      echo "<p><em>#{$row['orig_id']}, {$row['type']}<em></p>";
      echo "<p>".substr($row['content'],0,100)."</p>";
      echo '</div></div>';
      
      }

    mysql_close($con);
}
?>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="bootstrap/js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap-transition.js"></script>
    <script src="bootstrap/js/bootstrap-alert.js"></script>
    <script src="bootstrap/js/bootstrap-modal.js"></script>
    <script src="bootstrap/js/bootstrap-dropdown.js"></script>
    <script src="bootstrap/js/bootstrap-scrollspy.js"></script>
    <script src="bootstrap/js/bootstrap-tab.js"></script>
    <script src="bootstrap/js/bootstrap-tooltip.js"></script>
    <script src="bootstrap/js/bootstrap-popover.js"></script>
    <script src="bootstrap/js/bootstrap-button.js"></script>
    <script src="bootstrap/js/bootstrap-collapse.js"></script>
    <script src="bootstrap/js/bootstrap-carousel.js"></script>
    <script src="bootstrap/js/bootstrap-typeahead.js"></script>

  </body>
</html>
