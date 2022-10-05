<?php include"file/config.php"; ?>

<div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Pateints Insert</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmAdd">
                                    <div class="modal-body">
                                 <input type="hidden" name="pro" value="patient_checkM">
                                         



                                        <label>Visit:</label><br>
                                   <select name="v" style="width: 400px; height: 35px;">>
                                        <option selected hidden value="">Select Visit</option>
                                        <?php $co->fillcombo("SELECT v_no, p_name FROM visit v , patient p WHERE v.p_no_fk=p.p_no") ?>
                                    </select> <br><br>
                                     

                                       <label>Checkment:</label><br>
                                   <select name="check" style="width: 400px; height: 35px;">>
                                        <option selected hidden value="">Select Checkment</option>
                                        <?php $co->FillCombo("SELECT `ck_no`,`ck_name` as checkment FROM checkment ") ?>
                                    </select> <br><br>

                                   <label>Result:</label><br>
                                    <input type="text" name="re" placeholder="Enter Your Result" style="width: 400px; height: 35px;"><br>

                                    

                                    <label>Description:</label><br>
                                    <input type="text" name="des" placeholder="Enter Your Description"  style="width: 400px; height: 35px;"><br>

                                    


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
                                        <h5 class="modal-title" id="demoModalLabel">Pateints Update</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmEdit">
                                    <div class="modal-body">
                                 <input type="hidden" name="pro" value="patient_checkM">
                                         



                                        <label>Visit:</label><br>
                                   <select name="v" id="txt1" style="width: 400px; height: 35px;">>
                                        <option selected hidden value="">Select Visit</option>
                                       
                                    </select> <br><br>
                                     

                                       

                                   <label>Prescription:</label><br>
                                    <input type="text" name="re" id="txt3" placeholder="Enter Your Prescription" style="width: 400px; height: 35px;"><br> <br>

                                    

                                    <label>Description:</label><br>
                                    <input type="text" name="des" id="txt4" placeholder="Enter Your Description"  style="width: 400px; height: 35px;"><br>

                                    


                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bu">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        

                        <!-- End Update -->
                         