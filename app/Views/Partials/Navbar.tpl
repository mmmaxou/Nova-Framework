<nav>
    <div id='home'>
        <a href="/">Homepage</a>
    </div>
    <div id="user">
    @if ( $user == null)
    <a href='/login'>Se connecter</a>
    @else
    <a href='/utilisateur/{{$user->id}}'>{{$user->username}}</a>
    <button id="add">+</button>
    @endif
    </div>
    
</nav>