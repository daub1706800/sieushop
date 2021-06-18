<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTintucTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tintuc', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idchuyenmuc');
            $table->bigInteger('idcongty');
            $table->bigInteger('idtaikhoan');
            $table->timestamp('ngaydangtintuc');
            $table->string('tieudetintuc');
            $table->text('tomtattintuc');
            $table->text('noidungtintuc');
            $table->string('hinhanhtintuc');
            $table->string('videotintuc')->nullable();
            $table->smallInteger('loaitintuc')->default('0')->comment('1-nổi bật, 0-không nổi bật');
            $table->smallInteger('duyettintuc')->default('0')->comment('1-đã duyệt, 0-chưa duyệt');
            $table->smallInteger('xuatbantintuc')->default('0')->comment('1-duyệt xuất bản, 0-chưa được xuất bản');
            $table->timestamp('ngayxuatban')->nullable();
            $table->smallInteger('lydogo')->default('0')->comment('1-có, 0-không');
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
        Schema::dropIfExists('tintuc');
    }
}
