 <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Pateints Insert</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmAdd">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="bukan">
                                        


                                          <label>Patients:</label><br>
                                    <input type="text" name="pa"  placeholder="Enter Your Patients" style="width: 400px; height: 35px;"><br> <br>
                                     

                                    <label>Tell:</label><br>
                                    <input type="number" name="tel"  placeholder="Enter Your Tell" 
                                    style="width: 400px; height: 35px;"> <br><br>

                                    <label>Gender:</label> <br>
                                   <select  style="width:400px; height:35px;" name="ge">
                                    <option disabled >Select Gender</option>
                                    <option value="male">Male</option>
                                     <option value="female">Female</option>
                                     </select> <br><br>

                                    

                                    <label>Date:</label><br>
                                    <input type="date" name="date"  style="width: 400px; height: 35px;"><br> <br>

                                     <label>Address:</label><br>
                                    <select name="add"  style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Address</option>
                                        <?php $co->fillcombo("SELECT `ad_no`,`District`,`village`,`area` as address FROM address") ?>
                                    </select> <br>


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

                                        <input type="hidden" name="pro" value="bukan">
                                        


                                        <label>Patients:</label><br>
                                    <input type="text" name="pa" id="txt1" placeholder="Enter Your Patients" style="width: 400px; height: 35px;"><br>

                                     

                                    <label>Tell:</label><br>
                                    <input type="number" name="tel" id="txt2" placeholder="Enter Your Tell" style="width: 400px; height: 35px;"> <br><br>

                                    <label>Gender:</label> <br>
                                   <select id="txt3" style="width:400px; height:35px;" name="ge">
                                    <option disabled >Select Gender</option>
                                    <option value="male">Male</option>
                                     <option value="female">Female</option>
                                     </select> <br>

                                    

                                    <label>Date:</label><br>
                                    <input type="date" name="date" id="txt4"  style="width: 400px; height: 35px;"><br>

                                     <label>Address:</label><br>
                                    <select id="txt5" name="add" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Address</option>
                                        <?php $co->fillcombo("SELECT `ad_no`,`District`,`village`,`area` as address FROM address") ?>
                                    </select> <br>

                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bu">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>