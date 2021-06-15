<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHinhanhquangcaoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hinhanhquangcao', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idquangcao');
            $table->string('dulieuhinhanhquangcao');
            $table->smallInteger('loaibanner')->default(0)->comment('0-dọc; 1-ngang; 2-vuông');
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
        Schema::dropIfExists('hinhanhquangcao');
    }
}
