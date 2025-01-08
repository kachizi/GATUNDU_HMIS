<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <link href="common/extranal/css/bed/edit_alloted_bed.css" rel="stylesheet">
        <section class="panel">
            <header class="panel-heading">
                <?php echo lang('alloted_beds'); ?>
                 <?php if ($this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor', 'Accountant'))) { ?>
                <div class="col-md-4 no-print pull-right"> 
                    <a data-toggle="modal" href="#myModal">
                        <div class="btn-group pull-right">
                            <button id="" class="btn green btn-xs">
                                <i class="fa fa-plus-circle"></i> <?php echo lang('add_new_allotment'); ?>
                            </button>
                        </div>
                    </a>
                </div>
                 <?php } ?>
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th><?php echo lang('bed_id'); ?></th>
                                <th><?php echo lang('patient'); ?></th>
                                <th><?php echo lang('alloted_time'); ?></th>
                                <th><?php echo lang('discharge_time'); ?></th>
                                 <?php if ($this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor', 'Accountant'))) { ?>
                                <th class="no-print"><?php echo lang('options'); ?></th>
                             <?php } ?>
                            </tr>
                        </thead>
                        <tbody>

                       


                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- page end-->
    </section>
</section>
<!--main content end-->
<!--footer start-->







<!-- Add Accountant Modal-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">  <?php echo lang('add_new_allotment'); ?></h4>
            </div>
            <div class="modal-body">
                <form role="form" action="bed/addAllotment" class="clearfix row" method="post" enctype="multipart/form-data">

                    <!-- <div class="form-group col-md-12">

                        <label for="exampleInputEmail1" style="margin-right: 20px;"><?php echo lang('covid_19'); ?>:</label>

                        <span></span>
                        <input type="radio" name="covid_19" value="po">
                        <label style="margin-right: 56px;"><?php echo lang('po'); ?></label>
                        <input type="radio" name="covid_19" value="jo">
                        <label><?php echo lang('jo'); ?></label>

                    </div> -->
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('alloted_time'); ?></label>
                        <div data-date="" class="input-group date form_datetime-meridian">
                            <div class="input-group-btn"> 
                                <button type="button" class="btn btn-info date-set"><i class="fa fa-calendar"></i></button>
                                <button type="button" class="btn btn-danger date-reset"><i class="fa fa-times"></i></button>
                            </div>
                            <input type="text" class="form-control" readonly="" name="a_time" id="alloted_time" value='<?php
                            if (!empty($allotment->a_time)) {
                                echo $allotment->a_time;
                            }
                            ?>' placeholder="">
                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('room_no'); ?></label>
                        <select class="form-control m-bot15" id="room_no" name="category" value=''>
                            <option><?php echo lang('select'); ?></option>
                            <?php foreach ($room_no as $room) { ?>
                                <option value="<?php echo $room->category; ?>" <?php
                                if (!empty($allotment->category)) {
                                    if ($allotment->category == $room->category) {
                                        echo 'selected';
                                    }
                                }
                                ?> > <?php echo $room->category; ?> </option>
                                    <?php } ?> 
                        </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('bed_id'); ?></label>
                        <select class="form-control m-bot15" id="bed_id" name="bed_id" value=''> 
                            <option value="select"><?php echo lang('select'); ?></option>
                        </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('patient'); ?></label>
                        <select class="form-control m-bot15" id="patientchoose" name="patient" value=''> 

                        </select>
                    </div>


                    <div class="form-group col-md-12">

                        <label for="exampleInputEmail1" class="label_class"><?php echo lang('category'); ?>:</label>

                        <span></span>
                        <input type="checkbox" name="category_status[]" value="urgent">
                        <label class="planned_class"><?php echo lang('urgent'); ?></label>
                        <input type="checkbox" name="category_status[]" value="planned">
                        <label><?php echo lang('planned'); ?></label>

                    </div>
                    <div class="form-group col-md-12">

                        <label for="exampleInputEmail1"class="label_class"><?php echo lang('reaksione'); ?>:</label>
                        <textarea name="reaksione" class='form-control'> </textarea>

                    </div>
                    <div class="form-group col-md-12">

                        <label for="exampleInputEmail1" class="label_class"><?php echo lang('transferred_from'); ?>:</label>
                        <textarea name="transferred_from" class='form-control'> </textarea>

                    </div>
                    <div class="form-group col-md-12">

                        <label for="exampleInputEmail1"><?php echo lang('diagnoza_a_shtrimit'); ?>:</label>
                        <textarea name="diagnoza_a_shtrimit" class='form-control'> </textarea>

                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('doctor'); ?></label>
                        <select class="form-control m-bot15" id="doctors" name="doctor" value=''> 

                        </select>
                    </div>
                    <div class="form-group col-md-12">

                        <label for="exampleInputEmail1"><?php echo lang('diagnosis'); ?>:</label>
                        <textarea name="diagnosis" class='form-control'> </textarea>

                    </div>
                    <div class="form-group col-md-12">

                        <label for="exampleInputEmail1"><?php echo lang('other_illnesses'); ?>:</label>
                        <textarea name="other_illnesses" class='form-control'> </textarea>

                    </div>
                    <div class="form-group col-md-12">

                        <label for="exampleInputEmail1"><?php echo lang('anamneza'); ?>:</label>
                        <textarea name="anamneza" class='form-control'> </textarea>

                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('blood_group'); ?></label>
                        <select class="form-control m-bot15" id="blood_group" name="blood_group" value=''> 
                            <?php foreach ($blood_group as $blood_group) {
                                ?>

                                <option value="<?php echo $blood_group->id; ?>"><?php echo $blood_group->bloodgroup; ?> </option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('accepting_doctor'); ?></label>
                        <select class="form-control m-bot15" id="accepting_doctors" name="accepting_doctor" value=''> 

                        </select>
                    </div>

                    <input type="hidden" name="id" value=''>

                    <div class="form-group col-md-12">
                        <button type="submit" name="submit" class="btn btn-info pull-right"><?php echo lang('submit'); ?></button>
                    </div> 

                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- Add Accountant Modal-->







<!-- Edit Event Modal-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">  <?php echo lang('edit_allotment'); ?></h4>
            </div>
            <div class="modal-body">
                <form role="form" id="editAllotmentForm" action="bed/addAllotment" class="clearfix row" method="post" enctype="multipart/form-data">

                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1">Bed Id</label>
                        <select class="form-control m-bot15" name="bed_id" value=''>
                            <?php foreach ($beds as $bed) { ?>
                                <option value="<?php echo $bed->bed_id; ?>" <?php
                                if (!empty($allotment->bed_id)) {
                                    if ($allotment->bed_id == $bed->bed_id) {
                                        echo 'selected';
                                    }
                                }
                                ?> > <?php echo $bed->bed_id; ?> </option>
                                    <?php } ?> 
                        </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1">Patient</label>
                        <select class="form-control m-bot15" id="patientchoose1" name="patient" value=''> 

                        </select>
                    </div>

                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('alloted_time'); ?></label>
                        <div data-date="" class="input-group date form_datetime-meridian">
                            <div class="input-group-btn"> 
                                <button type="button" class="btn btn-info date-set"><i class="fa fa-calendar"></i></button>
                                <button type="button" class="btn btn-danger date-reset"><i class="fa fa-times"></i></button>
                            </div>
                            <input type="text" class="form-control" readonly="" name="a_time" id="exampleInputEmail1" value='' placeholder="">
                        </div>
                    </div>

                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1"><?php echo lang('discharge_time'); ?></label>
                        <div data-date="" class="input-group date form_datetime-meridian">
                            <div class="input-group-btn"> 
                                <button type="button" class="btn btn-info date-set"><i class="fa fa-calendar"></i></button>
                                <button type="button" class="btn btn-danger date-reset"><i class="fa fa-times"></i></button>
                            </div>
                            <input type="text" class="form-control" name="d_time" id="exampleInputEmail1" value='' placeholder="">
                        </div>
                    </div>

                    <input type="hidden" name="id" value=''>

                    <div class="form-group col-md-12">
                        <button type="submit" name="submit" class="btn btn-info pull-right"><?php echo lang('submit'); ?></button>
                    </div>

                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- Edit Event Modal-->

<script src="common/js/codearistos.min.js"></script>
<script type="text/javascript">var select_doctor = "<?php echo lang('select_doctor'); ?>";</script>
<script type="text/javascript">var select_patient = "<?php echo lang('select_patient'); ?>";</script>
<script type="text/javascript">var language = "<?php echo $this->language; ?>";</script>

<script src="common/extranal/js/bed/add_allotment.js"></script>
