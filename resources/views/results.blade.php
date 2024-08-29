@extends('layouts.main')
@section('main-section')
                <!-- Content wrapper -->
                <div class="content-wrapper">
                    <!-- Content -->
                    <div class="container-xxl flex-grow-1 container-p-y">
                    <div class="card mb-4">
                                    <div class="card-body">
                                        <h5 class="card-header m-0 me-2 pb-3">Result</h5>
                                        <div class="table-responsive">
                                            <table class="table ">
                                                <thead>
                                                  <tr class="table-info">
                                                    <th scope="col">#</th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Source Port</th>
                                                    <th scope="col">Destination Port</th>
                                                    
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <th scope="row">1</th>
                                                    <td>27 Aug 2024</td>
                                                    <td>BRPOA</td>
                                                    <td>BRVIX</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">2</th>
                                                    <td>27 Aug 2024</td>
                                                    <td>BNKUB</td>
                                                    <td>BNMUA</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">3</th>
                                                    <td>27 Aug 2024</td>
                                                    <td>KHPNH</td>
                                                    <td>CMDLA</td>
                                                  </tr>

                                                  <tr>
                                                    <th scope="row">3</th>
                                                    <td>26 Aug 2024</td>
                                                    <td>BRVIX</td>
                                                    <td>CMDLA</td>
                                                  </tr>

                                                  <tr>
                                                    <th scope="row">3</th>
                                                    <td>25 Aug 2024</td>
                                                    <td>KHPNH</td>
                                                    <td>BRVIX</td>
                                                  </tr>
                                                </tbody>
                                                </table>
                                        </div>
                                        
                                    </div>  
                                </div>

                    </div>
                    <!-- / Content -->
                    @endsection