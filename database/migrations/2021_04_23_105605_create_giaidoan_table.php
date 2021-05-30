<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGiaidoanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('giaidoan', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idsanpham');
            $table->bigInteger('idtaikhoan');
            $table->string('tengiaidoan');
            $table->timestamp('thoigiantao');
            $table->string('motagiaidoan');
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
        Schema::dropIfExists('giaidoan');
    }
}
