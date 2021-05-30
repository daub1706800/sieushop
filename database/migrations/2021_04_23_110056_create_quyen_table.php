<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuyenTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quyen', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('parent_id');
            $table->string('tenquyen')->unique();
            $table->string('motaquyen');
            $table->smallInteger('trangthai')->default('0')->comment('0-off, 1-on');
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
        Schema::dropIfExists('quyen');
    }
}
