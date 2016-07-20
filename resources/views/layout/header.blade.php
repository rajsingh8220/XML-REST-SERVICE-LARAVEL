<header>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">REST & XML</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="{{ Request::path() == '/' ? 'active' : '' }}"><a href="{{ url('/') }}">Home <span class="sr-only">(current)</span></a></li>
        <li class="{{ Request::path() == 'listings' ? 'active' : '' }}"><a href="{{ url('/listings') }}">Show Listings</a></li>
      </ul>
        
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
            <input id="searchBox" type="text" style="width: 300px;" class="form-control" placeholder="Search Listings">
        </div>
      </form>
        
     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</header>