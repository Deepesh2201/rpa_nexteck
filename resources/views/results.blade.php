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
                                                    <th scope="col">Action</th>
                                                    
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <th scope="row">1</th>
                                                    <td>27 Aug 2024</td>
                                                    <td>BRPOA</td>
                                                    <td>BRVIX</td>
                                                    <td><button class="btn btn-sm btn-primary" onclick="changeStatus();">Change Status</button></td>
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


                    <div class="modal fade" id="changeStatus" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
            aria-hidden="true">
            <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
                <div class="modal-content ">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Change Status</h5>

                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12">
                                <label for=""> dummy text</label>
                                <select class="form-control">
                                    <option>--Select--</option>
                                </select>
                            </div>
                        </div>
                       
                    </div>

                    <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="closeModal();">Cancel</button>
                  <button type="submit" class="btn btn-primary">Save</button>
                </div>

                </div>
            </div>
        </div>

                    <script>
                      

                      function changeStatus() {
                          $('#changeStatus').modal('show');
                      }

                      function closeModal() {
                          $('#changeStatus').modal('hide');
                      }
                    </script>
                    @endsection