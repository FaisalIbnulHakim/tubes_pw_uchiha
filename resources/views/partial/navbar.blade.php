<nav class="navbar navbar-expand-lg  bg-opacity-0 position-absolute">
    <div class="container">
      <a class="navbar-brand fw-bold" href="#">Uchiha Tech</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link fw-bold {{($title === "Home") ? '' : ''}}" aria-current="page" href="/"><i class="bi bi-house"></i>Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "Brand") ? '' : ''}}" href="/brand"><i class="bi bi-dropbox"></i>Brand</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "Category") ? '' : ''}}" href="/category"><i class="bi bi-shop-window"></i>Category</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fw-bold{{($title === "About") ? '' : ''}}" href="/about"><i class="bi bi-file-earmark-person"></i>About</a>
          </li>
          </ul>
          <ul>
          </ul>
      </div>
      <ul>

      <div class="nav-item justify-between fw-bold">
              <a href="/login" class="nav-link 'active' : ''}}"><i class="bi bi-box-arrow-in-right"></i> Login</a>
      </div>
      </ul>
  </nav>