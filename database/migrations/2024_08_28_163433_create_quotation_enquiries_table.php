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
        Schema::create('quotation_enquiry', function (Blueprint $table) {
            $table->id();
            $table->String("job_id")->nullable();
            $table->Integer("user_id")->nullable();
            $table->String("date")->nullable();
            $table->String("source")->nullable();
            $table->String("destination")->nullable();
            $table->String("container")->nullable();
            $table->String("commodity")->nullable();
            $table->String("departure_time")->nullable();
            $table->String("arrival_time")->nullable();
            $table->String("get_in_deadline")->nullable();
            $table->String("quotation_price")->nullable();
            $table->String("estimation_arrival")->nullable();
            $table->String("estimation_destination")->nullable();
            $table->String("shipping_company")->nullable();
            $table->String("shipping_company_website")->nullable();
            $table->String("shipping_status")->nullable();
            $table->String("shipping_remarks")->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('quotation_enquiry');
    }
};
