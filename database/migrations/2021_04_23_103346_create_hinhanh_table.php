<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHinhanhTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hinhanh', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idsanpham')->nullable();
            $table->bigInteger('iddanhgia')->nullable();
            $table->string('dulieuhinh');
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
        Schema::dropIfExists('hinhanh');
    }
}
