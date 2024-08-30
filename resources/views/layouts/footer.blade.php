
<div class="modal fade" id="resetPassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Change Password</h5>
          
        </div>
        <form action="changepassword" method="POST">
          @csrf
        <div class="modal-body">
                <input type="hidden" name="user_id" id="user_id">
                @if(Auth::user()->user_role == 2)
                <div class="form-group">
                    <label for="currentpassword">Current Password</label>
                    <input type="password" class="form-control" id="currentpassword" name="currentpassword" aria-describedby="currentpassword" placeholder="Enter Current Password" required>
                    @error('currentpassword')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
                </div>
                @endif
                <div class="form-group">
                    <label for="newpassword">New Password</label>
                    <input type="password" class="form-control" id="newpassword" name="newpassword" aria-describedby="newpassword" placeholder="Enter New Password" required>
                    @error('newpassword')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
                </div>
                <div class="form-group">
                    <label for="confirmnewpassword">Confirm Password</label>
                    <input type="password" class="form-control" id="confirmnewpassword" name="confirmnewpassword" aria-describedby="confirmnewpassword" placeholder="Enter Confirm New Password" required>
                    @error('confirmnewpassword')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
                </div>
                
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="close1();">Cancel</button>
          <button type="submit" class="btn btn-primary">Update</button>
        </div>
      </form>
      </div>
    </div>
</div>



  <script>

    function changePassword(id) {
      document.getElementById('user_id').value = id;
      // document.getElementById('currentpassword').value = "";
      document.getElementById('newpassword').value = "";
      document.getElementById('confirmnewpassword').value = "";
        $('#resetPassword').modal('show');
    }

    function close1(){
      document.getElementById('user_id').value = "";
      // document.getElementById('currentpassword').value = "";
      document.getElementById('newpassword').value = "";
      document.getElementById('confirmnewpassword').value = "";
        $('#resetPassword').modal('hide');
    }
  </script>





<!-- Footer -->
<footer class="content-footer footer bg-footer-theme">
<div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
<div class="mb-2 mb-md-0">
    ©
    <script>
document.write(new Date().getFullYear());
    </script>
    , made with ❤️ by
    <a href="https://thenexteck.com" target="_blank" class="footer-link fw-bolder">Nexteck</a>
</div>
</div>
</footer>
<!-- / Footer -->
<div class="content-backdrop fade"></div>
</div>
<!-- Content wrapper -->
</div>
<!-- / Layout page -->
</div>
<!-- Overlay -->
<div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->
<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="assets/vendor/libs/jquery/jquery.js"></script>
<script src="assets/vendor/libs/popper/popper.js"></script>
<script src="assets/vendor/js/bootstrap.js"></script>
<script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="assets/vendor/js/menu.js"></script>
<!-- endbuild -->
<!-- Vendors JS -->
<script src="assets/vendor/libs/apex-charts/apexcharts.js"></script>
<!-- Main JS -->
<script src="assets/js/main.js"></script>
<!-- Page JS -->
<script src="assets/js/dashboards-analytics.js"></script>
<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
</body>
</html>