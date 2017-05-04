<?php
/**
 * Welcome controller
 *
 * @author David Carr - dave@novaframework.com
 * @version 3.0
 */

namespace App\Controllers;

use App\Models\Chanson as ModelChanson;
use App\Models\Playlist as ModelPlaylist;
use App\Models\Contien
use App\Core\Controller;

use Nova\Support\Facades\Auth;

use App\Controllers\MP3File;
use View;


/**
 * Sample controller showing 2 methods and their typical usage.
 */
class Welcome extends Controller
{

    /**
     * Create and return a View instance.
     */
    public function index()
    {
        $u = Auth::user(); 
        $id = Auth::id();
        
        $chansons = ModelChanson::all();
        $playlists = ModelPlaylist::whereRaw('utilisateur_id=?', array($id))->get();
        
        return View::make('Welcome/Welcome')
            ->shares('title', __('Welcome'))
            ->with('user', $u)
            ->with('chansons', $chansons)
            ->with('playlists', $playlists);
            
    }

    /**
     * Create and return a View instance.
     */
    public function subPage()
    {
        $message = __('Hello, welcome from the welcome controller and subpage method! <br/>
This content can be changed in <code>/app/Views/Welcome/SubPage.php</code>');

        return $this->getView()
            ->shares('title', __('Subpage'))
            ->withWelcomeMessage($message);
    }
    
    
    public function about()
    {
        
        $message = __('Hello World');
        
        return View::make('Welcome/Welcome')
            ->shares('title', __('Welcome'))
            ->with('welcomeMessage', $message);  
    }
    
    public function upload() {
        if(isset($_FILES['fichier'])) {
            
            $dossier = 'assets/uploads/';
            $fichier = basename($_FILES['fichier']['name']);
            
//            dump($dossier . $fichier);
//            dump($_FILES['fichier']);
            
            if(move_uploaded_file($_FILES['fichier']['tmp_name'], $dossier . $fichier)) //Si la fonction renvoie TRUE, c'est que ça a fonctionné...
     {
        echo 'Upload effectué avec succès !';
        
     }
     else //Sinon (la fonction renvoie FALSE).
     {
         echo 'Echec de l\'upload !';
     }
        }
    }
    
    public function insert () {
        
        $nom = $_POST['nom'];
        $duree = $_POST['duree'];
        $style = $_POST['style'];
        $id = Auth::id();
        
        //DATE
        date_default_timezone_set('Europe/Paris');
        $date = date_create();        
        $date = date_format($date, 'Y-m-d H:i:s');  
                
        $chanson = new ModelChanson;
        $chanson->nom = $nom;
        $chanson->duree = $duree;
        $chanson->style= $style;
        $chanson->post_date = $date;
        $chanson->utilisateur_id = $id;
        
        if(isset($_FILES['fichier'])) {
            
            $dossier = 'assets/uploads/';
            $fichier = basename($_FILES['fichier']['name']);
            
//            $mp3file = new MP3File($dossier . $fichier);
//            $duration = $mp3file->getDuration();
//            $chanson->duree = MP3File::formatTime($duration);
            
//            dump($duration);
//            dump($mp3file);
            
//            dump($dossier . $fichier);
//            dump($_FILES['fichier']);
            
            $chanson->fichier = $dossier . $fichier;  
        }      
        
        $chanson->save();
        
        if(\Nova\Support\Facades\Request::ajax()) {
            $chansons = ModelChanson::all();
            return View::fetch('Welcome/ListSongs', array('chansons'=>$chansons));
        }
    }
    
    public function insertPlaylist () {
        
        $nom = $_POST['nom'];
        $id = Auth::id();
        
        $playlist = new ModelPlaylist;
        $playlist->nom = $nom;
        $playlist->utilisateur_id = $id;        
        
        $playlist->save();
        
        if(\Nova\Support\Facades\Request::ajax()) {
            $playlists = ModelPlaylist::all();
            return View::fetch('Welcome/Playlists', array('playlists'=>$playlists));
        }
        
    }
    
    public function addToPlaylist () {
        
        $chanson = $_POST['chanson'];
        $playlist = $_POST['playlist'];
        
        
    }
}