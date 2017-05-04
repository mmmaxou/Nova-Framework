@foreach ( $playlists as $playlist )
<a href="playlist/{{$playlist->id}}">
<div class='playlist'>
    <p>{{$playlist->nom}}</p>
</div>
</a>
@endforeach