
<aside>
  <div class="top">
    <div class="logo">
      <a href="/"><h2>UCHIHA<span>TECH</span></h2></a>
    </div>
    <div class="close" id="close-btn">
      <span class="material-symbols-outlined">close</span>
    </div>
  </div>
    <div class="sidebar">
      <a href="/dashboard" class="{{Request::is('dashboard')?'active':''}}">
        <span class="material-symbols-outlined">space_dashboard</span>
        <h3>Dashboard</h3>
      </a>
      {{-- Request::is('dashboard/list/create')?'active':'' --}}
      <a href="/dashboard/list" class="{{Request::is('dashboard/list')?'active':'' }}">
      {{-- <a href="/dashboard/list" class="{{Request::is('dashboard/list/create')?'active':''}}"> --}}
        <span class="material-symbols-outlined ">database</span>
        <h3>Data Review</h3>
      </a>
      <a href="/dashboard/account/{{auth()->user()->id}}/koreksi" class="{{Request::is("dashboard/account/3/koreksi")?'active':''}}">
        <span class="material-symbols-outlined">manage_accounts</span>
        <h3>Account Setting</h3>
      </a>
      <form action="/logout" method="POST">
        @csrf
        <button type="submit">
            <span class="material-symbols-outlined">logout</span>
            <h3>Logout</h3>
        </button>
      </form>
      {{-- <form action="/logout" method="post">
        @csrf
        <button type="submit"><a href=""><span class="material-symbols-outlined">logout</span><h3>Logout</h3></a></button>
      </form> --}}
    </div>
</aside>