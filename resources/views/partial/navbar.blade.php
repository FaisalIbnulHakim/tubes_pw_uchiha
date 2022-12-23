  <nav class="navbar navbar-expand-lg bg-opacity-0 position-absolute" style="width:100vw">
    <div class="container">
      <a class="navbar-brand fw-bold " href="#"><img class="image" src="img/logo.png"  width="50px" style="margin: 1px;padding: 10px color:white;"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link fw-bold {{($title === "Home") ? 'title' : ''}}" aria-current="page" href="/"><i class="bi bi-house"></i>Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "Brand") ? 'title' : ''}}" href="/brand"><i class="bi bi-dropbox"></i>Brand</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "Category") ? 'title' : ''}}" href="/category"><i class="bi bi-shop-window"></i>Category</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "About") ? '' : ''}}" href="/about"><i class="bi bi-file-earmark-person"></i>About</a>
          </li>
        </ul>
        <ul class="navbar-nav ms-auto" >
         @auth
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Welcome back, {{auth()->user()->name}}
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar-reverse"></i>My Dashboard</a></li>
                <li><hr class="dropdown-divider"></li>
                <li>
                  <form action="/logout" method="post">
                    @csrf
                    <button type="submit" class="dropdown-item" ><i class="bi bi-box-arrow-right"></i>Logout</button>
                  </form>
              </ul>
            </li>
            @else
            <li class="nav-item">
              <a href="/login" class="nav-link fw-bold'active' : ''}}"><i class="bi-box-arrow-in-right"></i> Login</a>
            </li>
          @endauth
        </ul>
      </div>
    </div>
  </nav>