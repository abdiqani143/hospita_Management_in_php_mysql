 <div class="modal fade" id="demoModal" tabindex="-1" role="dialog" aria-labelledby="demoModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="demoModalLabel">Checkment Insert</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmAdd">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="checkM">
                                        



                                        <label>Checkment:</label><br>
                                    <input type="text" name="de" placeholder="Enter Your Checkment" style="width: 400px; height: 35px;"><br> <br>

                                    <label>Categories:</label><br>
                                   <select name="p" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Categories</option>
                                        <?php $co->fillcombo("SELECT `cat_no`,`cat_name` as categories FROM categories") ?>
                                    </select> 

                                    

                                    

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
                                        <h5 class="modal-title" id="demoModalLabel">Checkment Update</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <form id="fmEdit">
                                    <div class="modal-body">

                                        <input type="hidden" name="pro" value="checkM">
                                        



                                         <label>Checkment:</label><br>
                                    <input type="text" name="de" id="txt1" placeholder="Enter Your Checkment" style="width: 400px; height: 35px;"><br> <br>

                                    <label>Categories:</label><br>
                                   <select name="p" id="txt2" style="width: 400px; height: 35px;">>
                                        <option selected disabled value="">Select Categories</option>
                                        <?php $co->fillcombo("SELECT `cat_no`,`cat_name` as categories FROM categories") ?>
                                    </select> 

                                    

                                    </div>
                                    </form>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary bu">Save </button>
                                    </div>
                                </div>
                            </div>
                        </div>