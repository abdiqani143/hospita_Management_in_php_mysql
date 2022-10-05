  

                      <!-- Start Insert -->
  <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Insert Doctor</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmAdd">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="shaqaale">
                                       

      

                                        <label>Doctor:</label><br>
                                    <input type="text" name="name"  placeholder="Enter Your Name" style="width: 400px;height: 35px;"> <br> <br>

                                    <label>Tell:</label><br>
                                    <input type="number" name="tell"  placeholder="Enter Your tell" style="width: 400px;height: 35px;"> <br> <br>

                                    <label>Gender:</label> <br>
                                   <select  id="txt3" style="width:400px; height:35px;" name="ge">
                                    <option disabled value="male">Select Gender</option>
                                    <option value="male">Male</option>
                                     <option value="female">Female</option>
                                     </select> <br>

                                    <label>Address:</label><br>
                                    <select name="add" style="width:400px; height:35px;">
                                        <option selected disabled value="">Select Address</option>
                                        <?php $co->fillcombo("SELECT `ad_no` , concat(`District`,' ',`village`, ' ', `area`) as address FROM address"); ?>

                                    </select><br> <br>

                                     <label >Tittle:</label> <br>
                                    <select name="title" style="width:400px; height:35px;">
                                        <option selected hidden value="">Select Tittle</option>
                                        <?php $co->fillcombo("SELECT `ti_no`,concat(`ti_name`)as title FROM title"); ?>
                                    </select><br><br>

                                     <label >Specialization:</label> <br>
                                    <select name="sp"  style="width:400px; height:35px;">
                                        <option selected hidden value="">Select Specialization</option>
                                        <?php $co->fillcombo("SELECT `sp_no`, sp_name as specialization FROM specialization") ;?>
                                    </select><br>
                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bs">Save changes</button>
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
                                        <h5 class="modal-title" id="demoModalLabel">Insert Doctor</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmEdit">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="shaqaale">
                                       

      

                                        <label>Doctor:</label><br>
                                    <input type="text" name="name" id="txt1"  placeholder="Enter Your Name" style="width: 400px;height: 35px;"> <br> <br>

                                    <label>Tell:</label><br>
                                    <input type="number" name="tell" id="txt2"  placeholder="Enter Your tell" style="width: 400px;height: 35px;"> <br> <br>

                                    <label>Gender:</label> <br>
                                   <select  id="txt3" style="width:400px; height:35px;" name="ge">
                                      <option disabled value="male">Select Gender</option>
                                    <option value="male">Male</option>
                                     <option value="female">Female</option>
                                     </select> <br>

                                    <label>Address:</label><br>
                                    <select name="add" id="txt4" style="width:400px; height:35px;">
                                        <option selected disabled value="">Select Address</option>
                                        <?php $co->fillcombo("SELECT `ad_no` , concat(`District`,' ',`village`, ' ', `area`) as address FROM address"); ?>

                                    </select><br> <br>

                                     <label >Tittle:</label> <br>
                                    <select name="title" id="txt5" style="width:400px; height:35px;">
                                        <option selected hidden value="">Select Tittle</option>
                                        <?php $co->fillcombo("SELECT `ti_no`,concat(`ti_name`)as title FROM title"); ?>
                                    </select><br><br>

                                     <label >Specialization:</label> <br>
                                    <select name="sp" id="txt6"  style="width:400px; height:35px;">
                                        <option selected hidden value="">Select Specialization</option>
                                        <?php $co->fillcombo("SELECT `sp_no`, sp_name as specialization FROM specialization") ;?>
                                    </select><br>
                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bu">Save changes</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Update -->