 <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Receipts Insert</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmAdd">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="receip">
                                        



                                        <label>Patients:</label><br>
                                    <select name="pa" style="width: 400px; height: 35px;">>
                                        <option selected hidden value="">Select Patient</option>
                                        <?php $co->FillCombo("SELECT `p_no`,`p_name` as patient FROM patient") ?>
                                    </select> <br> <br>

                                      <label>Account-Number:</label><br>
                                    <select name="acc" style="width: 400px; height: 35px;">>
                                        <option selected hidden value="">Select Account-Number</option>
                                        <?php $co->FillCombo("SELECT acc_no, ac_name as accounts FROM accounts") ?>
                                    </select> <br> <br>

                                    <label>Amounts:</label><br>
                                    <input type="text" name="am" placeholder="Enter Your Amounts" style="width: 400px; height: 35px;"><br>

                                    

                                    <label>Date:</label><br>
                                    <input type="date" name="da"  style="width: 400px; height: 35px;"><br>

                                    

                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bs">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- End Insert -->

                        <!-- Start Update -->
                         <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Receipts Update</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmEdit">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="receip">
                                        



                                        <label>Patients:</label><br>
                                    <select name="pa" id="txt1" style="width: 400px; height: 35px;">>
                                        <option selected hidden value="">Select Patient</option>
                                        <?php $co->FillCombo("SELECT `p_no`,`p_name` as patient FROM patient") ?>
                                    </select> <br> <br>

                                      <label>Account-Number:</label><br>
                                    <select name="acc" id="txt2" style="width: 400px; height: 35px;">>
                                        <option selected hidden value="">Select Account-Number</option>
                                        <?php $co->FillCombo("SELECT acc_no, ac_name as accounts FROM accounts") ?>
                                    </select> <br> <br>

                                    <label>Amounts:</label><br>
                                    <input type="text" id="txt3" name="am" placeholder="Enter Your Amounts" style="width: 400px; height: 35px;"><br>

                                    

                                    <label>Date:</label><br>
                                    <input type="date" id="txt4" name="da" id="txt4"  style="width: 400px; height: 35px;"><br>

                                    

                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bu">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>