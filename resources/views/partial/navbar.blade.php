<nav class="navbar navbar-expand-lg fixed-top">
    <div class="container">
      <a class="navbar-brand fw-bold" href="/">UCHIHA<span>TECH</span></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link fw-bold {{($title === "Home") ? '' : ''}}" aria-current="page" href="/"><i class="bi bi-house"></i> Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "Products") ? '' : ''}}" href="/products"><i class="bi bi-archive"></i> Produk</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "Category") ? '' : ''}}" href="/category"><i class="bi bi-columns-gap"></i> Category</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "About") ? '' : ''}}" href="/about"><i class="bi bi-person"></i> About</a>
          </li>
          @auth
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Welcome back, {{auth()->user()->name}}
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              @if(auth()->user()->user_type)
              <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar-reverse"></i> Dashboard Publisher</a></li>
              <li><hr class="dropdown-divider"></li>
              @endif
              <li>
                <form action="/logout" method="post">
                  @csrf
                  <button type="submit" class="dropdown-item" ><i class="bi bi-box-arrow-right"></i>Logout</button>
                </form>
            </ul>
          </li>
          @else
          <li class="login-nav">
            <a href="/login" class="nav-link 'active' : ''}}"><i class="bi bi-box-arrow-in-right"></i> Login</a>
          </li>
          @endauth
        </ul>
      </div>
    </div>
  </nav>