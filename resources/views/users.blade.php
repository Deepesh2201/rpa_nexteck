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
                        @if (session('error'))
                            <div class="alert alert-danger">
                                {{ session('error') }}
                            </div>
                        @endif

                        <!-- Check for success message -->
                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif
                        <div class="d-flex justify-content-between">
                            <h5 class="card-header m-0 me-2 pb-3">Users List</h5>
                            <button type="button" data-toggle="modal" data-target="#userpopup" class="btn btn-primary"
                                onclick="openPopup();">Add New User</button>
                        </div>
                        <br>
                        <div class="table-responsive">
                            <table class="table ">
                                <thead>
                                    <tr class="table-secondary">
                                        <th scope="col">#</th>
                                        <th scope="col">User Full Name</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">User Role</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Change Password</th>
                                        <th scope="col">Change Status</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($users as $user)
                                        <tr>
                                            <td>{{ $loop->iteration }}</td>
                                            <td>{{ $user->full_name }}</td>
                                            <td>{{ $user->email }}</td>
                                            @if($user->user_role == 1)
                                            <td>Admin</td>
                                            @else
                                            <td>Agent</td>
                                            @endif
                                            @if($user->active == 1)
                                            <td style="color: green">Active</td>
                                            @else
                                            <td style="color: red">Inactive</td>
                                            @endif
                                            <td><button class="btn btn-sm btn-primary"
                                                    onclick="changePassword({{ $user->id }});">Change Password</button>
                                            </td>
                                            <td>
                                              <form action="changeuserstatus/{{$user->id}}" method="GET">
                                                @csrf
                                              <button class="btn btn-sm btn-primary" type="submit">Change Status</button>
                                              </form>
                                      </td>
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



        <div class="modal fade" id="userpopup" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Add New User</h5>

                    </div>
                    <form action="adduser" method="POST">
                      @csrf
                    <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Full Name</label>
                                <input type="text" class="form-control" id="name" name="name" aria-describedby="name"
                                    placeholder="Enter full name" required>

                            </div>
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" id="email" name="email" aria-describedby="email"
                                    placeholder="Enter email" required>

                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Enter password" required>
                            </div>
                            <div class="mt-4">
                                <label class="form-check-label" for="exampleCheck1">Status</label>
                                <div class="d-flex justify-content-around">
                                  <div>
                                      <input type="radio" class="form-check-input" name="status" id="active" value="active" {{ old('status', 'active') == 'active' ? 'checked' : '' }}>
                                      <label class="form-check-label" for="active">Active</label>
                                  </div>
                              
                                  <div>
                                      <input type="radio" class="form-check-input" name="status" id="inactive" value="inactive" {{ old('status') == 'inactive' ? 'checked' : '' }}>
                                      <label class="form-check-label" for="inactive">Inactive</label>
                                  </div>
                              </div>


                            </div>


                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"
                            onclick="closePopup();">Cancel</button>
                            <button type="submit" class="btn btn-primary">Save</button>
                          </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="changeStatus" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Change user status</h5>
                </div>
                <form action="changeuserstatus" method="POST">
                  @csrf
                <div class="modal-body">
                       <input type="hidden" id="status_user_id" name="status_user_id">
                        <div class="mt-4">
                            <label class="form-check-label" for="exampleCheck1">Status</label>
                            <div class="d-flex justify-content-around">
                              <div>
                                  <input type="radio" class="form-check-input" name="user_status" id="active" value="active"
                                         {{ old('user_status', '') == 'active' ? 'checked' : '' }}>
                                  <label class="form-check-label" for="active">Active</label>
                              </div>
                              <div>
                                  <input type="radio" class="form-check-input" name="user_status" id="inactive" value="inactive"
                                         {{ old('user_status', '') == 'inactive' ? 'checked' : '' }}>
                                  <label class="form-check-label" for="inactive">Inactive</label>
                              </div>
                          </div>


                        </div>


                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal"
                        onclick="closechangeStatus();">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                      </form>
                </div>
            </div>
        </div>
    </div>

        <script>
            function openPopup() {
              document.getElementById('name').value = "";
              document.getElementById('email').value = "";
              document.getElementById('password').value = "";
                $('#userpopup').modal('show');
            }

            function closePopup() {
              document.getElementById('name').value = "";
              document.getElementById('email').value = "";
              document.getElementById('password').value = "";
                $('#userpopup').modal('hide');
            }
            function changeStatus(id, status) {
    document.getElementById('status_user_id').value = id;

    // Map status value to corresponding text for radio buttons
    // var statusValue = (status == 1) ? 'active' : 'inactive';
    // document.getElementById('userstatus').value = statusValue;

    $('#changeStatus').modal('show');
}

            function closechangeStatus() {
              document.getElementById('status_user_id').value = "";
              // document.getElementById('userstatus').value = "";
                $('#changeStatus').modal('hide');
            }
        </script>
    @endsection
