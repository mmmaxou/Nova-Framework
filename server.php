<?php

// This file allows us to emulate Apache's "mod_rewrite" functionality from the built-in PHP web server.
// Provides a convenient way to test the application without having installed a "real" web server software.

// Usage:
// php -S localhost:8080 -t webroot/ server.php


$publicPath = 'webroot/';

$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

$uri = urldecode($uri);

$requested = $publicPath .$uri;

if (($uri !== '/') && file_exists($requested)) {
    return false;
}

require_once $publicPath .'index.php';


/*
PASSWORD :
A1z2e3r4t5y6u7i8o9
*/