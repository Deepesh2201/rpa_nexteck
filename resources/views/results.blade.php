@extends('layouts.main')
@section('main-section')
    <!-- Content wrapper -->
    <div class="content-wrapper">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">
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
                    <h5 class="card-header m-0 me-2 pb-3">Search Results</h5>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr class="table-info">
                                    <th scope="col">#</th>
                                    <th scope="col">Job Id</th>
                                    <th scope="col">Agent Name</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Source</th>
                                    <th scope="col">Destination</th>
                                    <th scope="col">Container</th>
                                    <th scope="col">Commodity</th>
                                    <th scope="col">Departure Time</th>
                                    <th scope="col">Arrival Time</th>
                                    <th scope="col">Shipping Company</th>
                                    <th scope="col">Website</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($results as $result)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $result->job_id }}</td>
                                        <td>{{ $result->full_name }}</td>
                                        <td>{{ $result->status }}</td>
                                        <td>{{ $result->source }}</td>
                                        <td>{{ $result->destination }}</td>
                                        <td>{{ $result->container }}</td>
                                        <td>{{ $result->commodity }}</td>
                                        <td>{{ $result->departure_time }}</td>
                                        <td>{{ $result->arrival_time }}</td>
                                        <td>{{ $result->shipping_company }}</td>
                                        @if ($result->shipping_company_website)
                                          <td><a href="{{ $result->shipping_company_website }}" target="_blank"><button class="btn btn-sm btn-primary">Visit Website</button></a></td>
                                        @else
                                        <td>Not Available</td>
                                        @endif
                                        <td><button class="btn btn-sm btn-primary" onclick="changeStatus({{$result->id}},{{$result->current_status}});">Change
                                                Status</button></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- Pagination Links -->
                </div>
                <div class="pagination justify-content-center">
                    {{ $results->links('pagination::bootstrap-4') }}
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
                    <form action="jobstatus" method="POST">
                      @csrf
                    <input type="hidden" id="job_id" name="job_id">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12">
                                <label for="">Change Status</label>
                                <select class="form-control" id="job_status" name="job_status">
                                    @foreach ($statuses as $status)
                                      <option value="{{$status->id}}">{{$status->status}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal"
                            onclick="closeModal();">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                    </form>

                </div>
            </div>
        </div>

        <script>
            function changeStatus(id,currentstatus) {
              document.getElementById('job_id').value = id;
              document.getElementById('job_status').value = currentstatus;
                $('#changeStatus').modal('show');
            }

            function closeModal() {
              document.getElementById('job_id').value = "";
              document.getElementById('job_status').value = "";
                $('#changeStatus').modal('hide');
            }
        </script>
    @endsection
