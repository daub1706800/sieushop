<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVideotintucTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('videotintuc', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('idchuyenmuc');
            $table->bigInteger('idcongty');
            $table->bigInteger('idtaikhoan');
            $table->string('tieudevideo');
            $table->text('tomtatvideo');
            $table->string('hinhdaidienvideo');
            $table->string('dulieuvideotintuc');
            $table->string('nguonvideotintuc');
            $table->smallInteger('loaivideotintuc')->default(0)->comment('1-nổi bật, 0-không nổi bật');
            $table->smallInteger('duyetvideotintuc')->default(0)->comment('1-đã duyệt, 0-chưa duyệt');
            $table->smallInteger('xuatbanvideotintuc')->default(0)->comment('1-xuất bản, 0-chưa xuất bản');
            $table->timestamp('ngayxuatban')->nullable();
            $table->smallInteger('trangthaithuhoi')->default(0)->comment('1-có, 0-không');
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
        Schema::dropIfExists('videotintuc');
    }
}
