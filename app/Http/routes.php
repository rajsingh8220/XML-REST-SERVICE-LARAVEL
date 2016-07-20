<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/


Route::group(['middleware' => ['web']], function () {
   
    Route::get('/', [
        'uses'=>'HomeController@getHome',
        'as'=>'home'

    ]);
    
    Route::post('/upload-data', [
        'uses'=>'HomeController@processXML',
        'as'=>'upload.data'

    ]);
    
    Route::get('/listings', [
        'uses'=>'HomeController@getListings',
        'as'=>'listings'

    ]);
    
    Route::get('/all-listings', 'HomeController@getAllListings');
    Route::get('/listing-by-order/{filter}/{order?}', 'HomeController@getListingByFilterOrder');
    Route::get('/listing/toggle-status/{id}', 'HomeController@updateStatusByID');
    
    

});