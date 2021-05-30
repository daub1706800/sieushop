<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('so', function (Blueprint $table) {
            $table->id();
            $table->string('tenso');
            $table->string('diachiso');
            $table->string('emailso');
            $table->string('dienthoaiso')->nullable();
            $table->string('faxso')->nullable();
            $table->string('webso');
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
        Schema::dropIfExists('so');
    }
}
