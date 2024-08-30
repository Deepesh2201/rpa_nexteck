@extends('layouts.main')
@section('main-section')
<style>
.form-group {
    margin-bottom: 20px;
    position: relative;
}

label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
    font-size: 14px;
}
</style>

<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->
    <div class="container-xxl flex-grow-1 container-p-y">

        <h3>Search Ports</h3>
        <form onsubmit="return validateMyPort()" method="POST" action="data3.php">

            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="form-group">
                        <label for="start_pt">Source Port</label>
                        <input type="text" class="form-control" name="start_pt" placeholder="search port"
                            onkeyup="validatePort()" id="start_pt" autocomplete="off">
                        <div id="suggestions" class="suggestions"></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="form-group">
                        <label for="start_ptt">Destination Port</label>
                        <input type="text" class="form-control" name="end_pt" placeholder="search port"
                            onkeyup="validatePort2()" id="end_pt" autocomplete="off">
                        <div id="suggestions2" class="suggestions2"></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="form-group">
                        <label for="date">Date</label>
                        <input class="form-control" type="date" id="date" name="datee">
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="form-group">
                        <label for="start_ptt">Container</label>
                        <input type="text" class="form-control" name="con_pt" placeholder="search port"
                            onkeyup="validatePort3()" id="con_pt" autocomplete="off">
                        <div id="suggestions3" class="suggestions3"></div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="form-group">
                        <label for="weight">Commodity</label>
                        <input type="text" class="form-control" id="commodity" name="comm_pt"
                            placeholder="search commodity" value="FAK - Freight All Kind" readonly>

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



        <h5 class="card-header m-0 me-2 pb-3">Top 30 Search</h5>
        <div class="table-responsive">
            <table class="table ">
                <thead>
                    <tr class="table-secondary">
                        <th scope="col">#</th>
                        <th scope="col">Date</th>
                        <th scope="col">Source Port</th>
                        <th scope="col">Destination Port</th>
                        <th scope="col">View</th>

                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>27 Aug 2024</td>
                        <td>BRPOA</td>
                        <td>BRVIX</td>
                        <td><button class="btn btn-sm btn-primary" onclick="viewresult();">View Result</button></td>
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



        <div class="modal fade" id="viewResult" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
            aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                <div class="modal-content ">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Results</h5>

                    </div>
                    <div class="modal-body">

                        <div class="table-responsive">
                            <table class="table ">
                                <thead>
                                    <tr class="table-secondary">
                                        <th scope="col">#</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Source Port</th>
                                        <th scope="col">Destination Port</th>
                                        <th scope="col">View</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>27 Aug 2024</td>
                                        <td>BRPOA</td>
                                        <td>BRVIX</td>
                                        <td><button class="btn btn-sm btn-primary" onclick="changeResultStatus();">View
                                                Result</button></td>
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

                    <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="closePopup2();">Cancel</button>
                 
                </div>

                </div>
            </div>
        </div>

        <div class="modal fade" id="changeResultStatus" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
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
                  <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="closePopup3();">Cancel</button>
                  <button type="submit" class="btn btn-primary">Save</button>
                </div>

                </div>
            </div>
        </div>





        <script>
        function viewresult() {
            $('#viewResult').modal('show');
        }

        function closePopup2() {
            $('#viewResult').modal('hide');
        }

       


        function changeResultStatus(){
            $('#changeResultStatus').modal('show');
        }
        function closePopup2() {
            $('#changeResultStatus').modal('hide');
        }

        </script>

    </div>
    <!-- / Content -->

    @endsection