 <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Visit Insert</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmAdd">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="booqasho">
                                        



                                        <label>Employee:</label><br>
                                    <select name="em" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Employee</option>
                                        <?php $co->fillcombo("SELECT `em_no`,`em_name` FROM employee") ?>
                                    </select> <br> <br>

                                    <label>Patients:</label><br>
                                   <select name="p" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Patients</option>
                                        <?php $co->fillcombo("SELECT `p_no`,`p_name` FROM patient") ?>
                                    </select>  <br> <br>

                                    <label>Date:</label> <br>
                                    <input type="date" name="da" style="width: 400px; height: 35px;">

                                    

                                    

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
                                        <h5 class="modal-title" id="demoModalLabel">Visit Update</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmEdit">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="booqasho">
                                        



                                        
                                        <label>Employee:</label><br>
                                    <select name="em" id="txt1" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Employee</option>
                                        <?php $co->fillcombo("SELECT `em_no`,`em_name` FROM employee") ?>
                                    </select> <br> <br>

                                    <label>Patients:</label><br>
                                   <select name="p"  id="txt2" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Patients</option>
                                        <?php $co->fillcombo("SELECT `p_no`,`p_name` FROM patient") ?>
                                    </select> <br> <br>

                                    <label>Date:</label> <br>
                                    <input type="date" id="txt3" name="da" style="width: 400px; height: 35px;">

                                    

                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bu">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>