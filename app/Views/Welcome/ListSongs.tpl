@foreach ( $chansons as $chanson )
<div 
     class='song'
     data-href="chanson/{{$chanson->id}}"
     data-file="{{$chanson->fichier}}">
    
    <a class="song-name">{{$chanson->nom}}</a>    
    <div class='song-style'>
        <p>{{$chanson->style}}</p>
    </div>
    <!--
        <audio controls>
            <source src=" {{$chanson->fichier}} ">
        </audio>
    -->
</div>
@endforeach