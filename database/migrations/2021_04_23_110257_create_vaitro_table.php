<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVaitroTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vaitro', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idcongty')->nullable();
            $table->string('tenvaitro');
            $table->text('motavaitro');
            $table->smallInteger('loaivaitro')->nullable()->comment('1-administrator, 2-company');
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
        Schema::dropIfExists('vaitro');
    }
}
