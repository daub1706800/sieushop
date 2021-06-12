<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sanpham', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idloaisanpham');
            $table->bigInteger('idcongty');
            $table->bigInteger('idtaikhoan');
            $table->bigInteger('idkho');
            $table->string('tensanpham');
            $table->text('thongtinsanpham');
            $table->string('hinhanhsanpham');
            $table->string('videosanpham')->nullable();
            $table->string('xuatxu');
            $table->string('chungloaisanpham');
            $table->integer('dongiasanpham');
            $table->integer('khoiluongsanpham');
            $table->string('donvitinhsanpham');
            $table->text('mavachsanpham');
            $table->text('qrcode')->nullable();
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
        Schema::dropIfExists('sanpham');
    }
}
