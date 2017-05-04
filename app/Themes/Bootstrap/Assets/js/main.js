$(document).ready(function(){
        
    $('#fichier').change(function(){
        var formData = new FormData($('form')[0]);
        console.log(formData)
        
        $.ajax({
            url: '/upload',  //Server script to process data
            type: 'POST',
            xhr: function() {  // Custom XMLHttpRequest
                var myXhr = $.ajaxSettings.xhr();
                if(myXhr.upload){ // Check if upload property exists
                    myXhr.upload.addEventListener('progress',progressHandlingFunction, false); // For handling the progress of the upload
                }
                return myXhr;
            },
            //Ajax events
            success: function(data, textStatus, jqXHR) {
                $("#etat").html("Upload terminé " + data);

            },
            // Form data
            data: formData,
            //Options to tell jQuery not to process data or worry about content-type.
            cache: false,
            contentType: false,
            processData: false
        });
    })
    
    $('#postChanson .submit').click(function(e){
        e.preventDefault()
        var formData = new FormData($('#postChanson')[0])
        
        $.ajax({
            url: '/insert',  //Server script to process data
            type: 'POST',
            xhr: function() {  // Custom XMLHttpRequest
                var myXhr = $.ajaxSettings.xhr();
                
//                console.log(myXhr)
                
                return myXhr;
            },
            //Ajax events
            success: function(data, textStatus, jqXHR) {
                $(".list:nth-child(2)").html(data);
                $('#add').click()
                linkSongClick()

            },
            // Form data
            data: formData,
            //Options to tell jQuery not to process data or worry about content-type.
            cache: false,
            contentType: false,
            processData: false
        });
    })
    
    $('#postPlaylist .submit').click(function(e) {
        console.log("ok")
        e.preventDefault()
        
        var formData = new FormData($('#postPlaylist')[0])
        
         $.ajax({
            url: '/insertPlaylist',  //Server script to process data
            type: 'POST',
            xhr: function() {  // Custom XMLHttpRequest
                var myXhr = $.ajaxSettings.xhr();
                
//                console.log(myXhr)
                
                return myXhr;
            },
            //Ajax events
            success: function(data, textStatus, jqXHR) {
                $(".list:nth-child(4)").html(data);
                
                var value = $('#form-playlist input[type="text"]').val();
                
                
                $('#audio-player .add-to-playlist-select').append("<option value="+value+">"+value+"</option>")
                
                
            },
            // Form data
            data: formData,
            //Options to tell jQuery not to process data or worry about content-type.
            cache: false,
            contentType: false,
            processData: false
        })        
        
    })
    
    
    /* -----------------------------------
    Affichage
    */
    
    $('#add').click(function(){
        $('#form-chanson').fadeToggle()
        blur()
        if ($(this).text() == "+") {
            $(this).text("-")
        } else {
            $(this).text("+")
        }
        
    })
    
    $('.reduce').click(function(){
        $('#audio-player h3').fadeToggle();
        $('#audio-player audio').fadeToggle();
        if ( $('.reduce').text() == "reduce") {
            $('.reduce').text("increase")
        } else {
            $('.reduce').text("reduce")
        }
    })
    
    linkSongClick()
})

function linkSongClick() {
    
    $('.song').click(function(){
        var href = $(this).attr("data-href")
        var nom = $(this).children('.song-name').text()
        var file = $(this).attr("data-file")
        
        console.log(href, nom, file);
        
        $('#audio-player .song-title').text(nom)
        $('#audio-player .song-src').attr("src", file)
        $('#audio-player .song-link').attr('href', href)
        
        var audio = document.querySelector('#audio-player audio');
        audio.load()
        audio.play()
        
        var value;
        $('#audio-player .add-to-playlist-select')
            .fadeIn()        
        $('#audio-player .add-to-playlist-btn')
            .fadeIn()
        
        
    })
}

function blur () {
    a = $('#body-overlay');
    if ( a.hasClass("hidden")) {
        $('#main').css('filter','blur(5px)');
    } else {
        $('#main').css('filter','none');        
    }
    a.fadeToggle()
}

function executeAjax(myurl,thediv) {
     var div = $(thediv);    
     $.ajax({
         url: myurl,
         type: "POST",
         success : function(data, textStatus, jqXHR) {
         // Succes. On affiche un message de confirmation
             div.html(data.toprint);
             alert('bite')
            },
         error : function(jqXHR, textStatus, errorThrown) {
             console.log(jqXHR)
             console.log(textStatus)
             console.log(errorThrown)
         }
    });
    return false;
}

function progressHandlingFunction(e){
    if(e.lengthComputable){
        $('progress').attr({value:e.loaded,max:e.total});
    }
}