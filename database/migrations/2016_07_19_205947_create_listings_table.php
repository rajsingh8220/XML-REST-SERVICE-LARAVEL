<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateListingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('listings', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('ListPrice');
            $table->string('ListingURL');
            $table->string('Bedrooms');
            $table->string('Bathrooms');
            $table->string('PropertyType');
            
            $table->string('ListingKey');
            $table->string('ListingCategory');
            $table->string('ListingStatus');
            $table->text('ListingDescription');
            
            $table->unique('ListingKey');
            
            $table->timestamps();
            
            
        });
        
       
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('listings');
    }
}
