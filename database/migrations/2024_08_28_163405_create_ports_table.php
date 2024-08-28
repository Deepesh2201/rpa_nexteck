<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('ports', function (Blueprint $table) {
            $table->id();
            $table->String("port_code")->nullable();
            $table->String("city")->nullable();
            $table->String("country")->nullable();
            $table->String("port_hapag")->nullable();
            $table->String("port_maersk")->nullable();
            $table->String("port_cma_cgm")->nullable();
            $table->String("port_freight_smart")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('ports');
    }
};
