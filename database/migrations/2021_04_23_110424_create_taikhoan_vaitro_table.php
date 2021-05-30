<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTaikhoanVaitroTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('taikhoan_vaitro', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idtaikhoan');
            $table->bigInteger('idvaitro');
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
        Schema::dropIfExists('taikhoan_vaitro');
    }
}
