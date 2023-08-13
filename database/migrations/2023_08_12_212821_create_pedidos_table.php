<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePedidosTable extends Migration
{
    public function up()
    {
        Schema::create('pedidos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->string('direccion');
            $table->integer('cantidad');
            $table->unsignedBigInteger('medicamento_id');
            $table->string('nombre_medicamento');
            $table->decimal('precio_medicamento', 10, 2);
            $table->decimal('total', 10, 2);
            $table->timestamps();

                 });
    }

    public function down()
    {
        Schema::dropIfExists('pedidos');
    }
}

