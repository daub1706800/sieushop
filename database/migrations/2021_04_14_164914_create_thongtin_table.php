<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateThongtinTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('thongtin', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idtaikhoan');
            $table->string('hothanhvien')->nullable();
            $table->string('tenthanhvien')->nullable();
            $table->smallInteger('gioitinhthanhvien')->nullable();
            $table->string('hinhanhthanhvien')->nullable();
            $table->date('namsinh')->nullable();
            $table->string('diachi')->nullable();
            $table->string('dienthoai')->nullable();
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
        Schema::dropIfExists('thongtin');
    }
}
