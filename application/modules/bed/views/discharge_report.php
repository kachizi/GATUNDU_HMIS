<?php if ($redirect == 'download') { ?>
    <!DOCTYPE html>
    <html lang="en" <?php if ($this->db->get('settings')->row()->language == 'arabic') { ?> dir="rtl" <?php } ?>>
        <link href="common/css/bootstrap.min.css" rel="stylesheet">
        <link href="common/css/bootstrap-reset.css" rel="stylesheet">

        <link href="common/assets/fontawesome5pro/css/all.min.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="common/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
        <style>
            @import url('https://fonts.googleapis.com/css?family=Ubuntu&display=swap');
        </style>
        <link href="common/assets/DataTables/datatables.css" rel="stylesheet" />
        <link href="common/extranal/css/bed/downloadDischarge.css" rel="stylesheet" />

    <?php } ?>
    <link href="common/extranal/css/bed/discharge-all.css" rel="stylesheet" />
    <?php if ($redirect != 'download') { ?>
        <link href="common/extranal/css/bed/discharge_logical.css" rel="stylesheet" />
        <section id="main-content">
            <section class="wrapper site-min-height">
            <?php } ?>
            <?php if ($redirect != 'download') { ?>
                <section class="col-md-6">
                <?php } else { ?>
                    <section class="col-md-12">
                    <?php } ?>
                    <div class="panel panel-primary" id="invoice">
                    <div class="panel-body invoice-all">
                          <div class="row invoice-list">

                                <div class="col-md-12 invoice_head clearfix logotitle">

                                    <div class="col-md-6 text-left invoice_head_left">
                                        <h3>
                                            <?php echo $settings->title ?>
                                        </h3>
                                        <h4>
                                            <?php echo $settings->address ?>
                                        </h4>
                                        <h4>
                                            Tel: <?php echo $settings->phone ?>
                                        </h4>
                                    </div>
                                    <div class="col-md-6 text-right invoice_head_right">
                                        <img alt="" src="<?php echo $this->settings_model->getSettings()->logo; ?>" width="200" height="100">
                                    </div>

                </div>
                <?php if ($redirect != 'download') { ?>
                                    <div class="col-md-12 hr_border">
                                        <hr>
                                    </div>
                                    <div class="col-md-12 title" >
                                        <h4 class="text-center invoice_lang">
                                            <?php echo lang('discharge_report') ?>
                                        </h4>
                                    </div>
                                <?php } else { ?>
                                    <div class="col-md-12 title" >
                                        <h4 class="text-center invoice_lang">
                                        <?php echo lang('discharge_report') ?>
                                        </h4>
                                    </div>
                                <?php } ?>
                                <?php if ($redirect != 'download') { ?>                  

                                    <div class="col-md-12 hr_border">
                                        <hr>
                                    </div>
                                    <?php } ?>
                                    <?php if ($redirect == 'download') { ?>  
                                    <div class="col-md-12 invoice-box">
                                        <table cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td colspan="2">
                                                    <table>
                                                        <tr>
                                                            <td> 
                                                                <div class="paragraphprint">
                                                                   
                                                                    <label class="control-label"><?php echo lang('patient'); ?> <?php echo lang('name'); ?> </label>
                                                                    <span class="info_text"> : 
                                                                        <?php
                                                                        if (!empty($patient)) {
                                                                            echo $patient->name . ' <br>';
                                                                        }
                                                                        ?>
                                                                    </span>  
                                                                </div>
                                                                <div class="paragraphprint">
                                                                    <label class="control-label"><?php echo lang('patient_id'); ?>  </label>
                                                                    <span class="info_text"> : 
                                                                        <?php
                                                                        if (!empty($patient)) {
                                                                            echo $patient->id . ' <br>';
                                                                        }
                                                                        ?>
                                                                    </span></div>
                                                                <div class="paragraphprint"><label class="control-label"> <?php echo lang('address'); ?> </label>
                                                                    <span class="info_text"> : 
                                                                        <?php
                                                                        if (!empty($patient)) {
                                                                            echo $patient->address . ' <br>';
                                                                        }
                                                                        ?>
                                                                    </span></div>
                                                                <div class="paragraphprint">
                                                                    <label class="control-label"><?php echo lang('phone'); ?>  </label>
                                                                    <span class="info_text"> : 
                                                                        <?php
                                                                        if (!empty($patient)) {
                                                                            echo $patient->phone . ' <br>';
                                                                        }
                                                                        ?>
                                                                    </span>
                                                                </div>
                                                            </td>
                                                            <?php
                                                            if (!empty($discharge->date)) {
                                                                           $discharge_time=explode('-',$discharge->date);
                                                                        } ?>
                                                            <td>
                                                               
                                                                <div class="paragraphprint">

                                                                    <label class="control-label"><?php echo lang('discharge')?> <?php echo lang('date'); ?>  </label>
                                                                    <span class="info_text"> : 
                                                                        <?php
                                                                        if (!empty($discharge->date)) {
                                                                            echo $discharge_time[0] . ' <br>';
                                                                        }
                                                                        ?>
                                                                    </span>

                                                                </div>
                                                                <div class="paragraphprint">

                                                                    <label class="control-label"><?php echo lang('discharge')?> <?php echo lang('time'); ?>  </label>
                                                                    <span class="info_text"> : 
                                                                        <?php
                                                                        if (!empty($discharge->date)) {
                                                                            echo $discharge_time[1] . ' <br>';
                                                                        }
                                                                        ?>
                                                                    </span>

                                                                    </div>
                                                                <div class="paragraphprint">

                                                                    <label class="control-label"><?php echo lang('doctor'); ?>  </label>
                                                                    <span class="info_text"> : 
                                                                        <?php
                                                                        if (!empty($doctor)) {
                                                                            echo $doctor->name . ' <br>'.$doctor->profile;
                                                                        }
                                                                        ?>
                                                                    </span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                <?php } else { ?>
                                    <div class="col-md-12">
                                        <div class="col-md-6 pull-left row info_position">
                                            <div class="col-md-12 row details">
                                                <p>
                                                   
                                                    <label class="control-label"><?php echo lang('patient'); ?> <?php echo lang('name'); ?> </label>
                                                    <span class="info_text"> : 
                                                        <?php
                                                        if (!empty($patient)) {
                                                            echo $patient->name . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>
                                            <div class="col-md-12 row details" >
                                                <p>
                                                    <label class="control-label"><?php echo lang('patient_id'); ?>  </label>
                                                    <span class="info_text"> : 
                                                        <?php
                                                        if (!empty($patient)) {
                                                            echo $patient->id . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>
                                            <div class="col-md-12 row details">
                                                <p>
                                                    <label class="control-label"> <?php echo lang('address'); ?> </label>
                                                    <span class="info_text"> : 
                                                        <?php
                                                        if (!empty($patient)) {
                                                            echo $patient->address . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>
                                            <div class="col-md-12 row details">
                                                <p>
                                                    <label class="control-label"><?php echo lang('phone'); ?>  </label>
                                                    <span class="info_text"> : 
                                                        <?php
                                                        if (!empty($patient)) {
                                                            echo $patient->phone . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>


                                        </div>

                                        <div class="col-md-6 pull-right info_position">

                                        <?php    
                                        if (!empty($discharge->date)) {
                                                                           $discharge_time=explode('-',$discharge->date);
                                                                        } ?>

                                            <div class="col-md-12 row details">
                                                <p>
                                                    <label class="control-label"><?php echo lang('discharge')?> <?php echo lang('date'); ?>  </label>
                                                    <span class="info_text"> : 
                                                        <?php
                                                        if (!empty($discharge->date)) {
                                                            echo $discharge_time[0] . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>
                                            <div class="col-md-12 row details">
                                                <p>
                                                    <label class="control-label"><?php echo lang('discharge')?> <?php echo lang('time'); ?>  </label>
                                                    <span class="info_text"> : 
                                                        <?php
                                                        if (!empty($discharge->date)) {
                                                            echo $discharge_time[1] . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>
                                            <div class="col-md-12 row details">
                                                <p>
                                                    <label class="control-label col-md-3"><?php echo lang('doctor'); ?>  </label>
                                                    <span class="info_text col-md-9"> : 
                                                        <?php
                                                        if (!empty($doctor)) {
                                                            echo $doctor->name . ' <br>'.$doctor->profile;
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>



                                        </div>

                                    </div>






                                </div> 
                            <?php } if ($redirect != 'download') { ?>
                                <div class="col-md-12 hr_border">
                                    <hr>
                                </div>

                            <?php } ?>
                            <?php if (!empty($discharge->final_diagnosis)) { ?>
                            <div class="col-md-12 row checkout_attribute">
                            <?php echo lang('final_diagnosis'); ?>  </div>
                            <div class="col-md-12 row">
                                                <p>
                                                   
                                                    <span class="checkout_data info_text"> 
                                                        <?php
                                                        if (!empty($discharge)) {
                                                            echo $discharge->final_diagnosis . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                                            </div>
                           <?php } ?>
                           <?php if (!empty($discharge->anatomopatologic_diagnosis)) { ?>
                             <div class="col-md-12 row checkout_attribute">
                                   <?php echo lang('anatomopatologic_diagnosis'); ?> 
                             </div>
                            <div class="col-md-12 row">
                                                <p>
                                                    <span class="checkout_data info_text"> 
                                                        <?php
                                                        if (!empty($discharge)) {
                                                            echo $discharge->anatomopatologic_diagnosis . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                            </div>
                           <?php } ?>
                           <?php if (!empty($discharge->checkout_diagnosis)) { ?>
                             <div class="col-md-12 row checkout_attribute">
                                   <?php echo lang('checkout_diagnosis'); ?> 
                             </div>
                            <div class="col-md-12 row">
                                                <p>
                                                    <span class="checkout_data info_text">  
                                                        <?php
                                                        if (!empty($discharge)) {
                                                            echo $discharge->checkout_diagnosis . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                            </div>
                           <?php } ?>
                           <?php if (!empty($discharge->checkout_state)) { ?>
                             <div class="col-md-12 row checkout_attribute">
                                   <?php echo lang('checkout_diagnosis'); ?> 
                             </div>
                            <div class="col-md-12 row">
                                                <p>
                                                    <span class="checkout_data info_text"> 
                                                        <?php
                                                        if (!empty($discharge)) {
                                                            echo $discharge->checkout_state . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                            </div>
                           <?php } ?>
                           <?php if (!empty($discharge->epicrisis)) { ?>
                             <div class="col-md-12 row checkout_attribute">
                                   <?php echo lang('checkout_diagnosis'); ?> 
                             </div>
                            <div class="col-md-12 row">
                                                <p>
                                                    <span class="checkout_data info_text">  
                                                        <?php
                                                        if (!empty($discharge)) {
                                                            echo $discharge->epicrisis . ' <br>';
                                                        }
                                                        ?>
                                                    </span>
                                                </p>
                            </div>
                           <?php } ?>
                           <?php if (!empty($discharge->instruction)) { 
                              
                               ?>
                             <div class="col-md-12 row checkout_attribute">
                                   <?php echo lang('instruction'); ?> 
                             </div>
                            <div class="col-md-12 row checkout_data info_text">
                            <?php
                                                        if (!empty($discharge)) {
                                                            echo $discharge->instruction . ' <br>';
                                                        }
                                                        ?>
                            </div>
                           <?php } ?>
                           <?php if (!empty($discharge->medicine_to_take)) { 
                              
                              ?>
                            <div class="col-md-12 row checkout_attribute">
                                  <?php echo lang('medicine_to_take'); ?> 
                            </div>
                           <div class="col-md-12 row checkout_data info_text">
                           <?php
                                                       if (!empty($discharge)) {
                                                           echo $discharge->medicine_to_take . ' <br>';
                                                       }
                                                       ?>
                           </div>
                          <?php } ?>
            </div>
        </div>

                </section>
               
                <?php if ($redirect != 'download') { ?>
                    <section class="col-md-6">
                        <div class="col-md-5 no-print option_button">
                        <div class="text-center col-md-12 row">
                                <a class="btn btn-info btn-sm invoice_button pull-left" onclick="javascript:window.print();"><i class="fa fa-print"></i> <?php echo lang('print'); ?> </a>
                                <a href="bed/download?id=<?php echo $discharge->alloted_bed_id; ?>" class="btn btn-info btn-sm detailsbutton pull-left download"><i class="fa fa-download"></i> <?php echo lang('download'); ?>  </a>
                               


                            </div>
                </div>
                </section>
                            <?php } ?>
                            <link rel="stylesheet" href="common/extranal/css/bed/printAll.css"/>
    <?php if ($redirect == 'download') { ?>
                </html>
            <?php } ?>

            <?php if ($redirect != 'download') { ?>
            </section>
        </section>
        <?php } ?>