@extends('layouts.main')
@section('main-section')
                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->
                        <div class="container-xxl flex-grow-1 container-p-y">
                            <div class="row">
                               
                               
                                <!-- table -->
                                
                                <div class="card mb-4">
                                    <div class="card-body">
                                        <div class="d-flex justify-content-between">
                                            <h5 class="card-header m-0 me-2 pb-3">Top 30 Search</h5>
                                            <button type="button" data-toggle="modal" data-target="#userpopup" class="btn btn-primary" onclick="openPopup();" >Add New User</button>
                                        </div>
                                        <br>
                                        <div class="table-responsive">
                                            <table class="table ">
                                                <thead>
                                                  <tr class="table-secondary">
                                                    <th scope="col">#</th>
                                                    <th scope="col">User Full Name</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Password</th>
                                                    
                                                  </tr>
                                                </thead>
                                                <tbody>
                                                  <tr>
                                                    <th scope="row">1</th>
                                                    <td>Sanjay Kumar</td>
                                                    <td>sanjay@gmail.com</td>
                                                    <td>Sanjay@123</td>
                                                  </tr>
                                                  <tr>
                                                    <th scope="row">2</th>
                                                    <td>Deepak Sharma</td>
                                                    <td>deepak@gmail.com</td>
                                                    <td>Deepak@123</td>
                                                  </tr>
                                                 

                                                  
                                                  
                                                </tbody>
                                                </table>
                                        </div>
                                        
                                    </div>  
                                </div>
                                
                            </div>
                            
                        </div>
                        <!-- / Content -->
                        


        <div class="modal fade" id="userpopup" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLongTitle">Add New User</h5>
                  <button type="button" class="close" data-dismiss="modal" onclick="closePopup();" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="name">Full Name</label>
                            <input type="text" class="form-control" id="name" aria-describedby="name" placeholder="Enter name">
                            
                          </div>
                        <div class="form-group">
                          <label for="email">Email address</label>
                          <input type="email" class="form-control" id="email" aria-describedby="email" placeholder="Enter email">
                          
                        </div>
                        <div class="form-group">
                          <label for="password">Password</label>
                          <input type="password" class="form-control" id="password" placeholder="Password">
                        </div>
                        <div class="form-check">
                          <input type="checkbox" class="form-check-input" id="exampleCheck1">
                          <label class="form-check-label" for="exampleCheck1">Status</label>
                        </div>
                       
                      </form>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="closePopup();">Cancel</button>
                  <button type="submit" class="btn btn-primary">Save</button>
                </div>
              </div>
            </div>
          </div>






          <script>
           function openPopup() {
                $('#userpopup').modal('show');
            }

            function closePopup(){
                $('#userpopup').modal('hide');
            }
           
          </script>
@endsection