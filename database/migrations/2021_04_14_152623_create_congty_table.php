<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCongtyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('congty', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idso');
            $table->bigInteger('idlinhvuc');
            $table->string('tencongty');
            $table->string('diachicongty');
            $table->string('emailcongty');
            $table->string('dienthoaicongty');
            $table->string('faxcongty');
            $table->string('webcongty');
            $table->string('sdkkdcongty');
            $table->date('ngaycapdkkdcongty');
            $table->string('noicapdkkdcongty');
            $table->string('masothuecongty');
            $table->date('ngaythanhlapcongty');
            $table->string('subdomain')->nullable();
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
        Schema::dropIfExists('congty');
    }
}
