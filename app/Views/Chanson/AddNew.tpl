<div class="page-header">
    <h1>{{ $title }}</h1>
</div>

<form method="post" action="insertChanson" enctype="multipart/form-data">
    <h1>Ajouter une chanson</h1>
    Nom : <input type="text" id="nom" name="nom">
    Duree : <input type="time" id="duree" name="duree">
    Style : <input type="text" id="style" name="style">
    Fichier : <input type="file" name="fichier" id="fichier">
    <!-- On limite le fichier à 5Mo -->
    <input type="hidden" name="MAX_FILE_SIZE" value="5000000">
    <input type="submit">
</form>