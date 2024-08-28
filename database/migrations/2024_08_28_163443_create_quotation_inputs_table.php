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
        Schema::create('quotation_input', function (Blueprint $table) {
            $table->id();
            $table->String("shipping_remarks")->nullable();
            $table->String("user_id")->nullable();
            $table->String("date")->nullable();
            $table->String("source")->nullable();
            $table->String("destination")->nullable();
            $table->String("container")->nullable();
            $table->String("commodity")->nullable();
            $table->String("status")->nullable();
            $table->String("remarks")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('quotation_input');
    }
};
