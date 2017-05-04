@include('Partials/Navbar')


<div id="main">    
    
    <h2>Toutes les Chansons</h2>
    <div class="list">
    @include('Welcome/ListSongs')
    </div>
    
    
    <h2>Mes Playlist</h2>
    <div class="list">
    @include('Welcome/Playlists')
    </div>
    
</div>

<div id="form-playlist">
<form method="post" id="postPlaylist">
    <h1>Ajouter une playlist</h1>
    Nom : <input type="text" id="nom" name="nom">
    <input type="submit" class="submit">
</form>
</div>

<div id="form-chanson" style="display:none;">
<form method="post" enctype="multipart/form-data" id="postChanson">
    
    <h1>Ajouter une chanson</h1>
    
    <div class="form-group">
        <label for="nom">Nom :</label>
        <input type="text" class="form-control" id="nom" name="nom">
    </div>
    
    
    <div class="form-group">        
        
        <label for="duree">Duree :</label>    
        <input type="time" id="duree" class="form-control" name="duree">
        <label for="style">Style :</label>  
        <input type="text" id="style" class="form-control" name="style">
        
    </div>
        
    <label for="fichier">Fichier :</label>
    <input type="file" name="fichier" id="fichier" class="btn btn-primary btn-block">
    <!-- On limite le fichier à 5Mo -->
    <input type="hidden" name="MAX_FILE_SIZE" value="5000000">
    <progress></progress>
    <div id='etat'></div>
    
    
    <input type="submit" class="submit btn btn-primary btn-block">
</form>
</div>

<div id="audio-player">
    <div class="wrapper">
        <a class="reduce">reduce</a>
        <h3 class="song-title">Choisi une musique</h3>
        <div class="link-bar">
            <a class="song-link" href="#">Voir</a>
            |
            <select style="display:none;" class="add-to-playlist-select">
            @foreach ( $playlists as $playlist )
                <option value="{{$playlist->nom}}">
                {{$playlist->nom}}
                </option>
            @endforeach
            </select>
            <a style="display:none;" class="btn btn-default add-to-playlist-btn" href="#">Ajouter à la playlist</a>
        </div>
        <audio controls>
            <source class="song-src" src="">
        </audio>
    </div>
</div>
<div id='body-overlay' style="display:none;"></div>
<!--A1z2e3r4t5y6u7i8o9-->