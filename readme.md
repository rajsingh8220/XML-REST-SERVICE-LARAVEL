# REST&XML PARSING

## REST API End Points
####1) Route::get('/all-listings', 'HomeController@getAllListings');
####2) Route::get('/listing-by-order/{filter}/{order}', 'HomeController@getListingByFilterOrder');
####3) Route::get('/listing/toggle-status/{id}', 'HomeController@updateStatusByID');
1) Example
http://localhost/REST-XML/public/all-listings
2) Example
http://localhost/REST-XML/public/listing-by-order/ListPrice/asc
http://localhost/REST-XML/public/listing-by-order/ListPrice/desc
http://localhost/REST-XML/public/listing-by-order/ListingDate/desc
http://localhost/REST-XML/public/listing-by-order/ListingDate/asc
http://localhost/REST-XML/public/listing-by-order/photos
3) Example
http://localhost/REST-XML/public/listing/toggle-status/2


## No any authentication implemented for API like OAuth or any other

Authentication needs to be implemented

## Cront Job Needd to be added to Laravel Task scheduler and one entry into cron job pointing to laravel scheduler.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
