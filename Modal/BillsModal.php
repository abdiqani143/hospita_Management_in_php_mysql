 <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Bills Insert</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmAdd">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="bill">
                                        



                                        <label>Patients:</label><br>
                                    <select name="p" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Patient</option>
                                        <?php $co->fillcombo("SELECT `p_no`,`p_name`AS patient FROM patient ") ?>
                                    </select> <br>

                                    <label>Amount:</label><br>
                                    <input type="number" name="am" placeholder="Enter Your Amount" style="width: 400px; height: 35px;"><br>

                                    <label>Description:</label><br>
                                    <input type="text" name="de" placeholder="Enter Your Description" style="width: 400px; height: 35px;"><br>

                                    <label>Date:</label><br>
                                    <input type="date" name="date"  style="width: 400px; height: 35px;"><br>

                                    

                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bs">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Indert -->

                        <!-- Start Ipdate -->
                         <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Bills Update</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmEdit">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="bill">
                                        



                                        <label>Patients:</label><br>
                                    <select name="p" id="txt1" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Patient</option>
                                        <?php $co->fillcombo("SELECT `p_no`,`p_name`AS patient FROM patient ") ?>
                                    </select> <br>

                                   <label>Amount:</label><br>
                                    <input type="number" id="txt2" name="am" placeholder="Enter Your Amount" style="width: 400px; height: 35px;"><br>


                                    <label>Description:</label><br>
                                    <input type="text" id="txt3" name="de" placeholder="Enter Your Description" style="width: 400px; height: 35px;"><br>

                                    <label>Date:</label><br>
                                    <input type="date" name="date" id="txt4"  style="width: 400px; height: 35px;"><br>

                                    

                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bu">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>