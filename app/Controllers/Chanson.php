<?php
/**
 * Films controller
 *
 * @author David Carr - dave@novaframework.com
 * @version 3.0
 */

namespace App\Controllers;
use App\Core\Controller;
use App\Models\Chanson as ModelChanson;
use View;
use SMVC;
use Form;


/**
 * Sample controller showing 2 methods and their typical usage.
 */
class Chanson extends Controller
{

    /**
     * Create and return a View instance.
     */
    public function index($id) {
        $message = __('Hello, welcome from the welcome controller! <br/>
this content can be changed in <code>/app/Views/Welcome/Welcome.php</code>');
        
        $chanson = ModelChanson::find($id);
        
        // Code d'audemard
        /* 
        if(\Nova\Support\Facades\Request::ajax()) {
            $playlists = Playlist::whereRaw('utilisateur_id=?', array(Auth::id()))->get();
            return View::fetch('Welcome/playlists', array('playlists'=>$playlists));
        }
        */

        return View::make('Chanson/Chanson')
            ->shares('title', "Musique")
            ->with('welcomeMessage', "Hello Musique world")
            ->with('id', $id)
            ->with('chanson', $chanson);
    }

    public function addNew() {
        
        
        return View::make('Chanson/AddNew')
            ->shares('title', "Musique");
        
    }
    
    public function insert() {
        
        $nom = $_POST['nom'];
        $duree = $_POST['duree'];
        $style = $_POST['style'];
        
        //DATE
        date_default_timezone_set('Europe/Paris');
        $date = date_create();        
        $date = date_format($date, 'Y-m-d H:i:s');  
                
        $chanson = new ModelChanson;
        $chanson->nom = $nom;
        $chanson->duree = $duree;
        $chanson->style= $style;
        $chanson->post_date = $date; 
        
        
        //FICHIER
        if(isset($_FILES['fichier'])) {
            
            $dossier = 'assets/uploads/';
            $fichier = basename($_FILES['fichier']['name']);
            
            dump($dossier . $fichier);
            dump($_FILES['fichier']);
            if(move_uploaded_file($_FILES['fichier']['tmp_name'], $dossier . $fichier)) //Si la fonction renvoie TRUE, c'est que ça a fonctionné...
     {
        echo 'Upload effectué avec succès !';
        $chanson->fichier = $dossier . $fichier;
        $chanson->save();  
     }
     else //Sinon (la fonction renvoie FALSE).
     {
         echo 'Echec de l\'upload !';
     }
        }
        
//        $chanson->save();  
        /*
        return View::make('Chanson/Inserted')
            ->shares('title', "Musique");        
        */
    }
    
    public function testAjax() {
        $data["test"] = 232323;
        $this->renderAjax('Chanson/Chanson',"yes", $data);
    }
    
    public function renderAjax($path, $msg ,$data = false, $error = false) {
        require SMVC."app/Views/$path.tpl";
        $c = ob_get_contents();
        ob_clean();
        $d["toprint"] = $c;
        $d["message"] = $msg;
        header("Cache-Control: no-cache, must-revalidate", true); # HTTP/1.1
        header("Expires: Sat, 26 Jul 1997 05:00:00 GMT", true);   # Date in the past
        header("Content-Type: application/x-json; charset=utf-8", true);
        echo json_encode($d);die(1);
    }
    
}


// HELPERS
function dump ($obj) {
    echo '<pre>';
    var_dump($obj);
    echo '</pre>';
}