@extends('layouts.main')
@section('main-section')
    <style>
        .form-group {
            margin-bottom: 20px;
            position: relative;
            /* Ensure the suggestions dropdown positions correctly */
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            font-size: 14px;
        }

        .custom-modal-lg {
            max-width: 90%;
            /* Adjust this value as needed */
        }

        .suggestions {
            border: 1px solid #ddd;
            max-height: 150px;
            overflow-y: auto;
            position: absolute;
            background: white;
            z-index: 1000;
            width: 100%;
            left: 0;
            /* Align the suggestions dropdown with the input field */
            top: 100%;
            /* Position below the input field */
        }

        .suggestions div {
            padding: 10px;
            cursor: pointer;
        }

        .suggestions div:hover {
            background-color: #f0f0f0;
        }

        /* Ensure the form fields don't overlap */
        .form-control {
            box-sizing: border-box;
            /* Ensures padding and border are included in element's total width and height */
        }
    </style>


    <!-- Content wrapper -->
    <div class="content-wrapper">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">

            <h3>Search Ports</h3>
            <form method="POST" action="searchdata" method="POST">
                @csrf

                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label for="start_pt">Port Of Loading</label>
                            <input type="text" class="form-control" name="start_pt" placeholder="Search city"
                                onkeyup="validatePort()" id="start_pt" autocomplete="off" required>
                            <div id="suggestions" class="suggestions"></div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label for="start_ptt">Port Of Discharge</label>
                            <input type="text" class="form-control" name="end_pt" placeholder="Search city"
                                onkeyup="validatePort2()" id="end_pt" autocomplete="off" required>
                            <div id="suggestions2" class="suggestions"></div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label for="date">Date</label>
                            <input class="form-control" type="date" id="date" name="date" required>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label for="start_ptt">Container</label>
                            <input type="text" class="form-control" name="con_pt" placeholder="Type of container"
                                onkeyup="validatePort3()" id="con_pt" autocomplete="off" required>
                            <div id="suggestions3" class="suggestions"></div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="form-group">
                            <label for="weight">Commodity</label>
                            <input type="text" class="form-control" id="commodity" name="comm_pt"
                                placeholder="search commodity" value="FAK - Freight All Kind" readonly required>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="form-group" style="margin-top:30px">
                            <button class="btn btn-primary" type="submit" name="submit" value="submit">Search</button>
                        </div>
                    </div>
                </div>
            </form>
            <br>

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


            <div class="card">
                <h5 class="card-header m-0 me-2 pb-3">Search History</h5>
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="me-2">
                            <span class="badge bg-primary"
                                style="width: 15px; height: 15px; display: inline-block; border-radius: 50%;"></span>
                            <small> Processing</small>
                        </div>
                        <div class="me-2">
                            <span class="badge bg-success"
                                style="width: 15px; height: 15px; display: inline-block; border-radius: 50%;"></span>
                            <small> Completed</small>
                        </div>
                        <div class="me-2">
                            <span class="badge bg-danger"
                                style="width: 15px; height: 15px; display: inline-block; border-radius: 50%;"></span>
                            <small> Failed</small>
                        </div>
                        <div>
                            <span class="badge bg-secondary"
                                style="width: 15px; height: 15px; display: inline-block; border-radius: 50%;"></span>
                            <small> Invalid/Null Value</small>
                        </div>
                    </div>
                </div>
            </div>

            <div class="table-responsive">
                <table class="table ">
                    <thead>
                        <tr class="table-secondary">
                            <th scope="col">#</th>
                            <th scope="col">Job Id</th>
                            <th scope="col">View</th>
                            <th scope="col">Port Of Loading</th>
                            <th scope="col">Port Of Discharge</th>
                            <th scope="col">Container</th>
                            <th scope="col">Date</th>
                            <th scope="col">Agent Name</th>
                            <th scope="col">Commodity</th>
                            <th scope="col">Status</th>


                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($searches as $src)
                            <tr>
                                <th scope="row">{{ $loop->iteration }}</th>
                                <td>{{ $src->job_id }}</td>
                                @if ($src->job_status == 'Processing')
                                    <td><button class="btn btn-sm btn-primary"
                                            onclick="viewresult({{ $src->id }});">View
                                            Result</button></td>
                                @elseif ($src->job_status == 'Completed')
                                    <td><button class="btn btn-sm btn-success"
                                            onclick="viewresult({{ $src->id }});">View
                                            Result</button></td>
                                @elseif ($src->job_status == 'Failed')
                                    <td><button class="btn btn-sm btn-danger"
                                            onclick="viewresult({{ $src->id }});">View
                                            Result</button></td>
                                @else
                                    <td><button class="btn btn-sm btn-secondary"
                                            onclick="viewresult({{ $src->id }});">View
                                            Result</button></td>
                                @endif
                                <td>{{ $src->source }}</td>
                                <td>{{ $src->destination }}</td>
                                <td>{{ $src->container }}</td>
                                <td>{{ \Carbon\Carbon::parse($src->date)->format('d-m-Y') }}</td>
                                <td>{{ $src->full_name }}</td>
                                <td>{{ $src->commodity }}</td>
                                <td>{{ $src->status }}</td>

                            </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
            <div class="pagination justify-content-center">
                {{ $searches->links('pagination::bootstrap-4') }}
            </div>



            <div class="modal fade" id="viewResult" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog custom-modal-lg modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Results</h5>
                        </div>
                        <div class="modal-body">
                            <!-- Content will be dynamically populated here -->
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal"
                                onclick="closePopup2();">Cancel</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="changeResultStatus" tabindex="-1" role="dialog"
                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
                    <div class="modal-content ">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Change Status</h5>

                        </div>
                        <form action="jobstatus" method="POST">
                            @csrf
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-12">
                                        <label for="">Change Status</label>
                                        <input type="hidden" id="job_id" name="job_id">
                                        <select class="form-control" id="job_status" name="job_status">
                                            @foreach ($statuses as $status)
                                                <option value="{{ $status->id }}">{{ $status->status }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"
                                    onclick="changeResultStatusclose();">Cancel</button>
                                <button type="submit" class="btn btn-primary">Save</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>





            <script>
                function viewresult(id) {
                    // alert(id)
                    // Make an AJAX request to fetch data
                    $.ajax({
                        url: `/jobdetails/${id}`, // URL to the API endpoint
                        method: 'GET',
                        success: function(data) {
                            console.log(data);

                            // Check if data is an array
                            if (Array.isArray(data) && data.length > 0) {
                                // Generate table rows
                                let rows = data.map(item => `
                    <tr>
                        
                        <td>${item.source}</td>
                        <td>${item.destination}</td>
                        <td>${item.container}</td>
                        
                        <td>${item.departure_time}</td>
                        <td>${item.arrival_time}</td>
                        <td>${item.shipping_company}</td>
                        <td>${item.quotation_price}</td>
                        
                        
                        <td>${item.commodity}</td>
                        <td>${item.current_status}</td>
                        
                        <td><button class="btn btn-sm btn-primary" onclick="changeResultStatus(${item.id},${item.status});">Change Status</button></td>
                        <td>
                            ${item.shipping_company_website ? 
                                `<a href="${item.shipping_company_website}" target="_blank">
                                                            <button class="btn btn-sm btn-primary">Visit Website</button>
                                                        </a>` : 
                                'Not Available'}
                        </td>
                    </tr>
                `).join('');

                                // Populate the modal with data
                                $('#viewResult .modal-body').html(`
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr class="table-secondary">
                                   
                                    <th scope="col">Port Of Loading</th>
                                    <th scope="col">Port Of Discharge</th>
                                    <th scope="col">Container</th>
                                    
                                    <th scope="col">Departure Time</th>
                                    <th scope="col">Arrival Time</th>
                                    <th scope="col">Shipping Company</th>
                                    <th scope="col">Quotation Price</th>
                                    
                                    <th scope="col">Commodity</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Action</th>
                                    <th scope="col">Website</th>
                                </tr>
                            </thead>
                            <tbody>
                                ${rows}
                            </tbody>
                        </table>
                    </div>
                `);
                                $('#viewResult').modal('show'); // Show the modal
                            } else {
                                // Handle case where data is not an array or is empty
                                $('#viewResult .modal-body').html('<p>No data available.</p>');
                                $('#viewResult').modal('show'); // Show the modal
                            }
                        },
                        error: function(xhr) {
                            // Show toast notification
                            toastr.error('Error fetching data', 'Error');
                        }
                    });
                }


                function closePopup2() {
                    $('#viewResult').modal('hide');
                }




                function changeResultStatus(id, status) {
                    document.getElementById('job_id').value = id;
                    document.getElementById('job_status').value = status;
                    $('#changeResultStatus').modal('show');
                }

                function changeResultStatusclose() {
                    $('#changeResultStatus').modal('hide');
                }
            </script>

            <script>
                // Convert Blade variables to JavaScript arrays (assuming each port has 'port_code', 'city', and 'country' attributes)
                const ports = @json(
                    $ports->map(function ($port) {
                        return ['port_code' => $port->port_code, 'city' => $port->city, 'country' => $port->country];
                    }));
                const containers = @json($containers->pluck('container_details'));

                function validatePort() {
                    const input = document.getElementById('start_pt');
                    const suggestionsDiv = document.getElementById('suggestions');
                    const query = input.value.trim().toLowerCase();
                    suggestionsDiv.innerHTML = '';

                    if (query.length >= 3) {
                        // Filter ports, ensure 'city' and 'country' are defined and valid
                        const filteredPorts = ports.filter(port =>
                            (port.city && port.city.toLowerCase().includes(query)) ||
                            (port.country && port.country.toLowerCase().includes(query))
                        );
                        filteredPorts.forEach(port => {
                            const div = document.createElement('div');
                            // Show the city, country, and port_code in the desired format
                            div.textContent = `${port.city || ''}, ${port.country || ''} (${port.port_code})`;
                            div.onclick = () => {
                                // Set the input value to the port_code only
                                input.value = port.port_code;
                                suggestionsDiv.innerHTML = '';
                            };
                            suggestionsDiv.appendChild(div);
                        });
                    }
                }

                function validatePort2() {
                    const input = document.getElementById('end_pt');
                    const suggestionsDiv = document.getElementById('suggestions2');
                    const query = input.value.trim().toLowerCase();
                    suggestionsDiv.innerHTML = '';

                    if (query.length >= 3) {
                        const filteredPorts = ports.filter(port =>
                            (port.city && port.city.toLowerCase().includes(query)) ||
                            (port.country && port.country.toLowerCase().includes(query))
                        );
                        filteredPorts.forEach(port => {
                            const div = document.createElement('div');
                            div.textContent = `${port.city || ''}, ${port.country || ''} (${port.port_code})`;
                            div.onclick = () => {
                                // Set the input value to the port_code only
                                input.value = port.port_code;
                                suggestionsDiv.innerHTML = '';
                            };
                            suggestionsDiv.appendChild(div);
                        });
                    }
                }

                function validatePort3() {
                    const input = document.getElementById('con_pt');
                    const suggestionsDiv = document.getElementById('suggestions3');
                    const query = input.value.trim().toLowerCase();
                    suggestionsDiv.innerHTML = '';

                    if (query.length >= 3) {
                        const filteredContainers = containers.filter(container => container.toLowerCase().includes(query));
                        filteredContainers.forEach(container => {
                            const div = document.createElement('div');
                            div.textContent = container;
                            div.onclick = () => {
                                input.value = container;
                                suggestionsDiv.innerHTML = '';
                            };
                            suggestionsDiv.appendChild(div);
                        });
                    }
                }
            </script>
            <script>
                // Function to fetch and update job statuses
                function updateJobStatuses() {
                    fetch('/job-statuses') // Change this endpoint to your actual API endpoint
                        .then(response => {
                            if (!response.ok) {
                                throw new Error('Network response was not ok ' + response.statusText);
                            }
                            return response.json();
                        })
                        .then(data => {
                            const tableBody = document.querySelector('tbody');
                            tableBody.innerHTML = ''; // Clear current rows
            
                            // Access the job statuses from the data array
                            const jobStatuses = data.data;
            
                            jobStatuses.forEach((src, index) => {
                                const row = document.createElement('tr');
                                row.innerHTML = `
                                    <th scope="row">${index + 1}</th>
                                    <td>${src.job_id}</td>
                                    <td>
                                        <button class="btn btn-sm btn-${getStatusClass(src.job_status)}" onclick="viewresult(${src.id});">
                                            View Result
                                        </button>
                                    </td>
                                    <td>${src.source}</td>
                                    <td>${src.destination}</td>
                                    <td>${src.container}</td>
                                    <td>${new Date(src.date).toLocaleDateString('en-GB')}</td>
                                    <td>${src.full_name}</td>
                                    <td>${src.commodity}</td>
                                    <td>${src.status}</td>
                                `;
                                tableBody.appendChild(row);
                            });
                        })
                        .catch(error => console.error('Error fetching job statuses:', error));
                }
            
                // Function to get the button class based on job status
                function getStatusClass(jobStatus) {
                    switch (jobStatus) {
                        case 'Completed':
                            return 'success'; // Green
                        case 'Failed':
                            return 'danger'; // Red
                        case 'Processing':
                            return 'primary'; // Blue
                        default:
                            return 'secondary'; // Gray for unknown statuses
                    }
                }
            
                // Call updateJobStatuses() every 5 seconds
                setInterval(updateJobStatuses, 5000);
            
                // Call updateJobStatuses() when the script loads to initialize the table
                document.addEventListener('DOMContentLoaded', updateJobStatuses);
            </script>
            



        </div>
        <!-- / Content -->
    @endsection
