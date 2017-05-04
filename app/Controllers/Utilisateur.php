<?php
/**
 * Films controller
 *
 * @author David Carr - dave@novaframework.com
 * @version 3.0
 */

namespace App\Controllers;
use App\Core\Controller;
use App\Models\User;

use App\Models\Chanson as ModelChanson;
use App\Models\Playlist as ModelPlaylist;

use View;

/**
 * Sample controller showing 2 methods and their typical usage.
 */
class Utilisateur extends Controller
{

    /**
     * Create and return a View instance.
     */
    public function index($id) {
        $u = User::find($id);
        
        $chansons = ModelChanson::whereRaw('utilisateur_id=?', array($id))->get();
        $playlists = ModelPlaylist::whereRaw('utilisateur_id=?', array($id))->get();
        
        return View::make('Utilisateur/Index')
            ->shares('title', "Musique")
            ->with('user', $u)
            ->with('chansons', $chansons)
            ->with('playlists', $playlists);
    }

}


// HELPERS
function dump ($obj) {
    echo '<pre>';
    var_dump($obj);
    echo '</pre>';
}