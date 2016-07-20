<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMlsDetailsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mls_details', function (Blueprint $table) {
            $table->increments('id');
            $table->string('MlsId');
            $table->integer('lid');
            $table->string('MlsName');
            $table->string('MlsNumber');
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
        Schema::drop('mls_details');
    }
}
