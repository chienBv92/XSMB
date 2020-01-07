<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateXoso extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_xoso', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('province_id')->default(0);
            $table->integer('NgayMoThuongValue')->default(0);
            $table->dateTime('NgayMoThuong')->nullable();
            $table->integer('Giai')->nullable();
            $table->string('Number')->nullable();

            $table->string('loto')->nullable();
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
        Schema::dropIfExists('tbl_xoso');
    }
}
