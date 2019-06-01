<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateReportsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reports', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->integer('vendor_id');
            $table->string('order_code');
            $table->string('message');
            $table->enum('complain',['Not-Deliver','late-Deliver','Broken']);
            $table->enum('stauts',['Customer-Contact','Reship-Order','Return-Order' , 'Pinding' , 'Unactive-Vendor' , 'Order-Cancel']);
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
        Schema::dropIfExists('reports');
    }
}