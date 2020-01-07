<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProvince extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_province', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('parent_id')->default(0);
            $table->integer('type')->nullable(0);
            $table->string('provinceCode', 50);
            $table->string('provinceName', 250);
            $table->string('meta_title', 250);

            $table->string('layoutView')->nullable();
            $table->string('layoutRegist')->nullable();
            $table->decimal('NgayMoThuongSet')->nullable();
            $table->string('GioMoThuongSet')->nullable();
            $table->integer('created_by_user')->nullable();
            $table->integer('updated_by_user')->nullable();

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
        Schema::dropIfExists('tbl_province');
    }
}
