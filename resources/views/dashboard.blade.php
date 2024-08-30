@extends('layouts.main')
@section('main-section')

                <!-- Content wrapper -->
                <div class="content-wrapper">
                    <!-- Content -->
                    <div class="container-xxl flex-grow-1 container-p-y">
                        <div class="row">
                           
                            <!-- <div class="col-lg-4 col-md-4 order-1"> -->
                            <!-- <div class="row"> -->
                            <div class="col-lg-4 col-md-12 col-sm-12 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title d-flex align-items-start justify-content-between">
                                            <div class="avatar flex-shrink-0">
                                                <img src="assets/img/icons/unicons/chart-success.png" alt="chart success"
                                                    class="rounded">
                                            </div>

                                        </div>
                                        <span class="fw-semibold d-block mb-1">Search</span>
                                        <h3 class="card-title mb-2">{{$searchcount}}</h3>
                                        {{-- <small class="text-success fw-semibold">
                                            <i class="bx bx-up-arrow-alt"></i>
                                            +72.80%
                                        </small> --}}
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12 col-sm-12 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title d-flex align-items-start justify-content-between">
                                            <div class="avatar flex-shrink-0">
                                                <img src="assets/img/icons/unicons/wallet-info.png" alt="Credit Card"
                                                    class="rounded">
                                            </div>

                                        </div>
                                        <span>Quotation</span>
                                        <h3 class="card-title text-nowrap mb-1">{{$quotationcount}}</h3>
                                        {{-- <small class="text-success fw-semibold">
                                            <i class="bx bx-up-arrow-alt"></i>
                                            +28.42%
                                        </small> --}}
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-12 col-sm-12 mb-4">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="card-title d-flex align-items-start justify-content-between">
                                            <div class="avatar flex-shrink-0">
                                                <img src="assets/img/icons/unicons/wallet-info.png" alt="Credit Card"
                                                    class="rounded">
                                            </div>
                                        </div>
                                        <span>Sales</span>
                                        <h3 class="card-title text-nowrap mb-1">$0</h3>
                                        {{-- <small class="text-success fw-semibold">
                                            <i class="bx bx-up-arrow-alt"></i>
                                            +28.42%
                                        </small> --}}
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-4">
                                <div class="card-body">
                                    <h5 class="card-header m-0 me-2 pb-3">Recent Searches</h5>
                                    <div class="table-responsive">
                                        <table class="table ">
                                            <thead>
                                                <tr class="table-info">
                                                    <th scope="col">#</th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Source Port</th>
                                                    <th scope="col">Destination Port</th>
                                                    <th scope="col">Container</th>
                                                    <th scope="col">Commodity</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Agent</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($quotations as $quotation)
                                                    <tr>
                                                        <td>{{$loop->iteration}}</td>
                                                        <td>{{ \Carbon\Carbon::parse($quotation->date)->format('d-m-Y') }}</td>
                                                        <td>{{$quotation->source}}</td>
                                                        <td>{{$quotation->destination}}</td>
                                                        <td>{{$quotation->container}}</td>
                                                        <td>{{$quotation->commodity}}</td>
                                                        <td>{{$quotation->status}}</td>
                                                        <td>{{$quotation->full_name}}</td>
                                                    </tr>
                                                @endforeach
                                                
                                            </tbody>
                                        </table>
                                    </div>

                                </div>
                            </div>
                          
                           
                        </div>
                        
                    </div>
                    <!-- / Content -->
                    
@endsection
