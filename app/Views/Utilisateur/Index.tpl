@include('Partials/Navbar')

<h1>Page de {{$user->username}}</h1>

    <h2>Mes Chansons</h2>
    <div class="list">
    @include('Welcome/ListSongs')
    </div>
    
    
    <h2>Mes Playlist</h2>
    <div class="list">
    @include('Welcome/Playlists')
    </div>
</div>