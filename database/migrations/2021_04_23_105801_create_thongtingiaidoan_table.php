<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateThongtingiaidoanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('thongtingiaidoan', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idgiaidoan');
            $table->string('tencongviec');
            $table->text('motacongviec');
            $table->date('thoigianbatdau');
            $table->integer('thoigiandukien');
            $table->date('thoigianhoanthanh');
            $table->integer('trehan')->default('0');
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
        Schema::dropIfExists('thongtingiaidoan');
    }
}
