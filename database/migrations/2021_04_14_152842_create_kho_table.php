<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKhoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kho', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idcongty');
            $table->bigInteger('idtaikhoan');
            $table->string('tenkho');
            $table->string('diachikho');
            $table->integer('taitrongkho');
            $table->integer('dientichkho');
            $table->integer('sonhanvienkho');
            $table->text('ghichukho');
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
        Schema::dropIfExists('kho');
    }
}
