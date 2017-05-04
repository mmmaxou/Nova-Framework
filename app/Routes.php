<?php
/**
 * Routes - all standard Routes are defined here.
 *
 * @author David Carr - dave@daveismyname.com
 * @author Virgil-Adrian Teaca - virgil@giulianaeassociati.com
 * @version 3.0
 */


/** Define static routes. */

// The default Routing
Route::get('/',       'Welcome@index');
Route::get('subpage', 'Welcome@subPage');

/** End default Routes */

Route::get('about', 'Welcome@about');
Route::any('chanson/{id}', 'Chanson@index')
    ->where('id', '[0-9]+');
Route::get('newChanson', 'Chanson@addNew');
Route::post('insertChanson', 'Chanson@insert');
Route::post('upload', 'Welcome@upload');
Route::post('insert', 'Welcome@insert');
Route::post('insertPlaylist', 'Welcome@insertPlaylist');
Route::get('testAjax','Chanson@testAjax');
Route::get('utilisateur/{id}', 'Utilisateur@index')
    ->where('id', '[0-9]+');