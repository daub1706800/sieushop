<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLogtintucTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('logtintuc', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idtintuc');
            $table->bigInteger('idtaikhoan');
            $table->string('noidungdanhgia');
            $table->timestamp('thoigian');
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
        Schema::dropIfExists('logtintuc');
    }
}
