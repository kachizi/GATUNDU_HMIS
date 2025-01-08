

<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <link href="common/extranal/css/bed/edit_alloted_bed.css" rel="stylesheet">
        <section class="col-md-9">
            <header class="panel-heading clearfix">
                <div class="col-md-9">
                    <?php echo lang('bed_allotment'); ?> | <?php echo $patient->name; ?>
                </div>

            </header>

            <section class="panel-body">   
                <header class="panel-heading tab-bg-dark-navy-blueee">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#checkin"><?php echo lang('check_in'); ?></a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#daily_progress"><?php echo lang('daily_progress'); ?></a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#medicines"><?php echo lang('medicines'); ?></a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#services"><?php echo lang('service'); ?></a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#checkout"><?php echo lang('discharge'); ?></a>
                        </li>

                    </ul>
                </header>
                <div class="panel">
                    <div class="tab-content">
                        <div id="checkin" class="tab-pane active">
                            <div class="">
                                <form role="form" action="" id="editBedAllotment"class="clearfix" method="post" enctype="multipart/form-data">
                                    <!-- <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1" style="margin-right: 20px;"><?php echo lang('covid_19'); ?>:</label>

                                        <span></span>


                                        <input type="radio" name="covid_19" value="po"<?php
                                        if ($allotment->covid_19 == 'po') {
                                            echo 'checked';
                                            //  echo 'disabled';
                                        }
                                        ?>>
                                        <label style="margin-right: 56px;"><?php echo lang('po'); ?></label>
                                        <input type="radio" name="covid_19" value="jo"<?php
                                        if ($allotment->covid_19 == 'jo') {
                                            echo 'checked';
                                            // echo 'disabled';
                                        }
                                        ?>>
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
                                        <label for="exampleInputEmail1"><?php echo lang('bed_category'); ?></label>
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
                                            <?php
                                            if (!empty($allotment->id)) {
                                                echo $option;
                                            }
                                            ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputEmail1"><?php echo lang('patient'); ?></label>
                                        <select class="form-control m-bot15" id="patientchoose" name="patient" value=''> 

                                        </select>
                                    </div>


                                    <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1" class="label_class" ><?php echo lang('category'); ?>:</label>

                                        <span></span>
                                        <?php $category_status = explode(',', $allotment->category_status);
                                        ?>

                                        <input type="checkbox" name="category_status[]" value="urgent" <?php
                                        if (in_array('urgent', $category_status)) {
                                            echo "checked";
                                        }
                                        ?>>
                                        <label class="planned_class"><?php echo lang('urgent'); ?></label>
                                        <input type="checkbox" name="category_status[]" value="planned" <?php
                                        if (in_array('planned', $category_status)) {
                                            echo "checked";
                                        }
                                        ?>>
                                        <label><?php echo lang('planned'); ?></label>

                                    </div>
                                    <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1"class="label_class"><?php echo lang('reaksione'); ?>:</label>
                                        <textarea name="reaksione" class='form-control'<?php
                                        if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                            echo 'readonly';
                                        }
                                        ?>><?php
                                                      if (!empty($allotment->reaksione)) {
                                                          echo $allotment->reaksione;
                                                      }
                                                      ?> </textarea>

                                    </div>
                                    <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1" class="label_class" ><?php echo lang('transferred_from'); ?>:</label>
                                        <textarea name="transferred_from" class='form-control'<?php
                                        if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                            echo 'readonly';
                                        }
                                        ?>> <?php
                                                      if (!empty($allotment->transferred_from)) {
                                                          echo $allotment->transferred_from;
                                                      }
                                                      ?></textarea>

                                    </div>
                                    <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1"><?php echo lang('diagnoza_a_shtrimit'); ?>:</label>
                                        <textarea name="diagnoza_a_shtrimit" class='form-control'<?php
                                        if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                            echo 'readonly';
                                        }
                                        ?>><?php
                                                      if (!empty($allotment->diagnoza_a_shtrimit)) {
                                                          echo $allotment->diagnoza_a_shtrimit;
                                                      }
                                                      ?> </textarea>

                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputEmail1"><?php echo lang('doctor'); ?></label>
                                        <select class="form-control m-bot15" id="doctors" name="doctor" value=''> 

                                        </select>
                                    </div>
                                    <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1"><?php echo lang('diagnosis'); ?>:</label>
                                        <textarea name="diagnosis" class='form-control'<?php
                                        if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                            echo 'readonly';
                                        }
                                        ?>><?php
                                                      if (!empty($allotment->diagnosis)) {
                                                          echo $allotment->diagnosis;
                                                      }
                                                      ?> </textarea>

                                    </div>
                                    <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1"><?php echo lang('other_illnesses'); ?>:</label>
                                        <textarea name="other_illnesses" class='form-control'<?php
                                        if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                            echo 'readonly';
                                        }
                                        ?>><?php
                                                      if (!empty($allotment->other_illnesses)) {
                                                          echo $allotment->other_illnesses;
                                                      }
                                                      ?>  </textarea>

                                    </div>
                                    <div class="form-group col-md-12">

                                        <label for="exampleInputEmail1"><?php echo lang('anamneza'); ?>:</label>
                                        <textarea name="anamneza" class='form-control'<?php
                                        if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                            echo 'readonly';
                                        }
                                        ?>><?php
                                                      if (!empty($allotment->anamneza)) {
                                                          echo $allotment->anamneza;
                                                      }
                                                      ?> </textarea>

                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputEmail1"><?php echo lang('blood_group'); ?></label>
                                        <select class="form-control m-bot15" id="blood_group" name="blood_group" value=''> 
                                            <?php foreach ($blood_group as $blood_group) {
                                                ?>

                                                <option value="<?php echo $blood_group->id; ?>" <?php
                                                if ($blood_group->id == $allotment->blood_group) {
                                                    echo 'selected';
                                                }
                                                ?>><?php echo $blood_group->bloodgroup; ?> </option>
                                                    <?php } ?>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="exampleInputEmail1"><?php echo lang('accepting_doctor'); ?></label>
                                        <select class="form-control m-bot15" id="accepting_doctors" name="accepting_doctor" value=''> 

                                        </select>
                                    </div> 
                                    <input type="hidden" name="id" value='<?php
                                    if (!empty($allotment->id)) {
                                        echo $allotment->id;
                                    }
                                    ?>'>

                                    <div class="form-group col-md-12">
                                        <div class="col-md-6">

                                        </div>
                                        <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?> 
                                            <div class="col-md-6">
                                                <button  type="submit" name="submit" class="btn btn-info pull-right history_back" onclick="history.back()"><?php echo lang('exit'); ?></button>
                                                <button  type="submit" name="submit2" class="btn btn-info pull-right submit_checkout" ><?php echo lang('submit'); ?></button>

                                            </div>
                                        <?php } ?> 
                                    </div>

                                </form>
                            </div>
                        </div>
                        <div id="daily_progress" class="tab-pane">
                            <div class="">



                                <div class="adv-table editable-table ">


                                    <table class="table table-striped table-hover table-bordered" id="edittable_table">
                                        <thead>
                                            <tr>

                                                <th><?php echo lang('date'); ?></th>
                                                <th><?php echo lang('time'); ?></th>
                                                <th><?php echo lang('description'); ?></th>
                                                <th><?php echo lang('nurse'); ?></th>

                                                <th class="no-print"><?php echo lang('view_more'); ?></th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            $i = 0;
                                            foreach ($daily_progress as $daily) {
                                                ?>
                                                <tr id="<?php echo $daily->id; ?>">


                                                    <td data-target="date"><?php echo $daily->date; ?></td>
                                                    <td data-target="time"><?php echo $daily->time; ?></td>
                                                    <td data-target="description"><?php echo $daily->description; ?></td>
                                                    <td data-target="nurse"><?php echo $this->db->get_where('nurse', array('id' => $daily->nurse))->row()->name; ?></td>

                                                    <td class="no-print">
                                                        <button type="button" class="btn btn-info btn-xs btn_width editbutton_dailyprogress" title="<?php echo lang('more'); ?>" data-toggle="" data-id="<?php echo $daily->id; ?>"><i class="fa fa-edit"></i><?php echo lang('more'); ?> </button>   

                                                    </td>

                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>

                                </div>

                                <div>
                                    <form role="form" action="" id="editDailyProgress"class="clearfix" method="post" enctype="multipart/form-data">
                                        <div class="form-group col-md-12">
                                            <label for="exampleInputEmail1"><?php echo lang('nurse'); ?></label>
                                            <select class="form-control m-bot15" id="nurses" name="nurse" value='' required=""> 

                                            </select>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="exampleInputEmail1"> <?php echo lang('date'); ?></label>
                                            <input type="text" class="form-control default-date-picker" id="date1" readonly="" name="date" id="exampleInputEmail1" value='' placeholder="" required="">
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label for="exampleInputEmail1"> <?php echo lang('time'); ?></label>

                                            <input type="text" id="date2" class="form-control timepicker-default rounded" readonly="" name="time" id="exampleInputEmail1" value='' placeholder="" required="">
                                        </div>
                                        <div class="form-group col-md-12">

                                            <label for="exampleInputEmail1" class="label_class"><?php echo lang('daily_description'); ?>:</label>
                                            <textarea name="daily_description" class='form-control'<?php
                                            if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                echo 'readonly';
                                            }
                                            ?>> </textarea>

                                        </div>
                                        <div class="form-group col-md-12">

                                            <label for="exampleInputEmail1" class="label_class"><?php echo lang('description'); ?>:</label>
                                            <textarea name="description" class='form-control'<?php
                                            if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                echo 'readonly';
                                            }
                                            ?>> </textarea>

                                        </div>
                                        <input type="hidden" name="alloted_bed_id" value="<?php echo $allotment->id; ?>">
                                        <div id="daily_id"> <input type="hidden" name="daily_progress_id" value=""></div>
                                        <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?> 
                                            <div class="form-group col-md-12">
                                                <button  type="submit" name="submit" class="btn btn-info pull-right submitdaily" ><?php echo lang('save'); ?></button>
                                            </div>
                                        <?php } ?>
                                    </form>
                                </div>

                            </div>
                        </div>

                        <div id="medicines" class="tab-pane"> 
                            <div class="">
                                <div class="col-md-12 pull-right save_button_div">

                                    <button  id="save_button" type="submit" name="submit" class="btn btn-xs btn-info pull-right" ><i class="fa fa-save"></i> <?php echo lang('save'); ?></button>

                                </div>
                                <br>
                                <div class="adv-table editable-table ">
                                    <table  class="table table-striped table-hover table-bordered medicine_table" id="editable-table1" >
                                        <thead>
                                            <tr>

                                                <th><?php echo lang('date'); ?></th>
                                                <th><?php echo lang('medicine_gen_name'); ?></th>
                                                <th><?php echo lang('medicine'); ?> <?php lang('name'); ?></th>
                                                <th><?php echo lang('sales'); ?> <?php lang('price'); ?></th>
                                                <th><?php echo lang('quantity'); ?></th>
                                                <th><?php echo lang('total'); ?></th>
                                                <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?>
                                                    <th class="no-print"><?php echo lang('options'); ?></th>
                                                <?php } ?>
                                            </tr>
                                        </thead>
                                        <tbody id="medicine_table">
                                            <?php foreach ($daily_medicine as $medicine) { ?>
                                                <tr id="<?php echo $medicine->id; ?>">
                                                    <td><?php echo $medicine->date; ?></td>
                                                    <td><?php echo $medicine->generic_name; ?></td>
                                                    <td><?php echo $medicine->medicine_name; ?></td>
                                                    <td><?php echo $settings->currency . $medicine->s_price; ?></td>
                                                    <td><?php echo $medicine->quantity; ?></td>
                                                    <td><?php echo $settings->currency . $medicine->total; ?></td>
                                                    <?php if ((empty($allotment->d_time)  && empty($medicine->payment_id))|| $this->ion_auth->in_group(array('admin'))) { ?>
                                                    <td class="no-print" id="delete-<?php echo $medicine->id; ?>"><button type='button' class='btn btn-danger btn-xs btn_width delete_medicine' title='<?php echo lang('delete'); ?>' data-toggle='' data-id="<?php echo $medicine->id; ?>"><i class='fa fa-trash'></i></button></td>
                                                    <?php } ?>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
                                <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?> 
                                    <div>
                                        <label>---------------------------------------------------------------------------------------<?php echo "Select Medicine" ?>-----------------------------------------------------------------------</label>
                                        <form role="form" action="" id="editMedicine"class="clearfix" method="post" enctype="multipart/form-data">                             
                                            <div class="form-group col-md-12">

                                                <div class="col-md-3">

                                                    <select class="form-control m-bot15 block_content" id="generic_name" name="generic_name" value='' required=""> 

                                                    </select>
                                                </div>
                                                <div class="col-md-3">

                                                    <select  class="form-control m-bot15 block_content" id="medicines_option" name="medicine_name" value='' required=""> 

                                                    </select>
                                                </div>
                                                <div class="col-md-1">
                                                    <input class="input-md total_med" type="text" id="sales_price" name="sales_price" value="" placeholder="<?php echo lang('sales'); ?>"readonly="">
                                                </div> 
                                                <div class="col-md-1">

                                                    <input  class="input-md total_med" id="quantity" type="number" placeholder="<?php echo lang('quantity'); ?>"name="quantity" value="">
                                                </div> 
                                                <div class="col-md-1">

                                                    <input  class="input-md total_med" type="text" id="total" name="total" value="" placeholder="<?php echo lang('total'); ?>" readonly="">
                                                </div>
                                                <input type="hidden" id="alloted" name="alloted_bed_id" value="<?php
                                                if (!empty($allotment->id)) {
                                                    echo $allotment->id;
                                                }
                                                ?>">
                                                <div class="col-md-2">

                                                    <button  type="submit" name="submit" class="btn btn-xs btn-info pull-right block_content" ><i class="fa fa-save"></i></button>

                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div id="services" class="tab-pane" > 
                            <div class="">
                                <div class="col-md-12 pull-right save_button_service_div">

                                    <button  id="save_button_service" type="submit" name="submit" class="btn btn-xs btn-info pull-right" ><i class="fa fa-save"></i> <?php echo lang('save'); ?></button>

                                </div> 
                                <div class="adv-table editable-table ">
                                    <table  class="table table-striped table-hover table-bordered service_table" id="editable-table2">
                                        <thead>
                                            <tr>
                                                <th class="twenty_class"><?php echo lang('service'); ?></th>
                                                <th class="twenty_class"><?php echo lang('date'); ?></th>
                                                <th class="twenty_class"><?php echo lang('nurse'); ?></th>
                                                <th class="ten_class" ><?php echo lang('price'); ?></th>
                                                <th class="ten_class"><?php echo lang('quantity'); ?></th>
                                                <th class="ten_class"><?php echo lang('total'); ?></th>
                                                <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?>
                                                    <th  class="no-print ten_class"><?php echo lang('options'); ?></th>
                                                <?php } ?>
                                            </tr>
                                        </thead>
                                        <tbody id="paservice_table">
                                            <?php
                                            if (!empty($daily_service)) {
                                                foreach ($daily_service as $service) {
                                                    $price = explode("**", $service->price);

                                                    $service_update = explode("**", $service->service);
                                                    //  print_r($price);
                                                    // die();
                                                    
                                                   // $array = array_combine($service, $price);
                                                    $length = sizeof($price);
                                                    $length1 = sizeof($service_update);
                                                    if ($length == $length1) {
                                                        $i = 0;
                                                        for ($i = 0; $i < $length; $i++) {
                                                            $servicename = $this->db->get_where('pservice', array('id' => $service_update[$i]))->row();

                                                            if (!empty($service->nurse)) {
                                                                $nursename = $this->db->get_where('nurse', array('id' => $service->nurse))->row()->name;
                                                            } else {
                                                                $nursename = " ";
                                                            }
                                                            ?>
                                                            <tr id="<?php echo $service->date; ?>-<?php echo $service_update[$i]; ?>">
                                                                <td><?php echo $servicename->name; ?></td>
                                                                <td><?php echo $service->date; ?></td>
                                                                <td><?php echo $nursename; ?></td>
                                                                <td><?php echo $settings->currency; ?><?php echo $price[$i]; ?></td>
                                                                <td><?php echo "1" ?></td>
                                                                <td><?php echo $settings->currency; ?><?php echo $price[$i] * 1; ?></td>
                                                                <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?>


                                                                <td class="no-print" id="delete-service-<?php echo date('d').'-'.$servicename->id;?>"><button type='button' class='btn btn-danger btn-xs btn_width delete_service' title='<?php echo lang('delete'); ?>' data-toggle='' data-id="<?php echo $service->id . "**" . $service_update[$i]; ?>"><i class='fa fa-trash'></i></button></td>
                                                                <?php } ?>
                                                            </tr>

                                                            <?php
                                                        }
                                                    }
                                                    ?>


                                                    <?php
                                                }
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                                <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?>
                                    <div>
                                        <label>--------------------------------------------------------------------------------------- <?php echo "Services" ?> -----------------------------------------------------------------------</label>
                                        <form role="form" action="" id="editService"class="clearfix" method="post" enctype="multipart/form-data">                             
                                            <div class="form-group col-md-12">

                                                <div class="col-md-12" id="nurses_select">
                                                    <label><?php echo lang('nurse'); ?></label>
                                                    
                                                    <select class="form-control m-bot15" id="nurse_service" name="nurse_service" value=''> 

                                                    </select>
                                                </div>
                                                <div class="col-md-12">

                                                    <u>  <h4><?php echo lang('services'); ?></h4></u> <br>
                                                    <?php foreach ($pservice as $patient_service) { ?>
                                                        <div class="col-md-4 pservice_div" >
                                                            <input type="checkbox" class="pservice" id="pservice-<?php echo $patient_service->id; ?>" name="pservice[]" value="<?php echo $patient_service->id; ?>" <?php
                                                            if (!empty($checked)) {
                                                                if (in_array($patient_service->id, $checked)) {
                                                                    echo 'checked';
                                                                }
                                                            }
                                                            ?>>
                                                            <label><?php echo $patient_service->name; ?></label>
                                                        </div>
                                                    <?php } ?>
                                                </div>

                                                <input type="hidden" id="alloted_service" name="alloted_bed_id" value="<?php
                                                if (!empty($allotment->id)) {
                                                    echo $allotment->id;
                                                }
                                                ?>">

                                                </form>
                                            </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>



                        <div id="checkout" class="tab-pane"> <div class="">

                                <div class="adv-table editable-table ">
                                    <div class="">
                                        <form role="form" action="" id="editCheckout"class="clearfix" method="post" enctype="multipart/form-data">                             
                                            <div class="form-group col-md-12">
                                                <label for="exampleInputEmail1"><?php echo lang('checkout'); ?> <?php echo lang('date'); ?> <?php echo lang('time'); ?></label>
                                                <div data-date="" class="input-group date form_datetime-meridian">
                                                    <div class="input-group-btn"> 
                                                        <button type="button" class="btn btn-info date-set"><i class="fa fa-calendar"></i></button>
                                                        <button type="button" class="btn btn-danger date-reset"><i class="fa fa-times"></i></button>
                                                    </div>
                                                    <input type="text" class="form-control" readonly="" name="d_time" id="exampleInputEmail1" value='<?php
                                                    if (!empty($bed_checkout->date)) {
                                                        echo $bed_checkout->date;
                                                    }
                                                    ?>' placeholder="" required=""<?php
                                                           if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                               echo 'readonly';
                                                           }
                                                           ?>>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('final_diagnosis'); ?>:</label>
                                                <textarea name="final_diagnosis" class='form-control'<?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                              if (!empty($bed_checkout->final_diagnosis)) {
                                                                  echo $bed_checkout->final_diagnosis;
                                                              }
                                                              ?> </textarea>

                                            </div>
                                            <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('anatomopatologic_diagnosis'); ?>:</label>
                                                <textarea name="anatomopatologic_diagnosis" class='form-control'<?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                              if (!empty($bed_checkout->anatomopatologic_diagnosis)) {
                                                                  echo $bed_checkout->anatomopatologic_diagnosis;
                                                              }
                                                              ?> </textarea>

                                            </div>
                                            <!-- <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('dikordance'); ?>:</label>
                                                <textarea name="dikordance" class='form-control'<?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                              if (!empty($bed_checkout->dikordance)) {
                                                                  echo $bed_checkout->dikordance;
                                                              }
                                                              ?> </textarea>

                                            </div> -->
                                            <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('checkout_diagnosis'); ?>:</label>
                                                <textarea name="checkout_diagnosis" class='form-control'<?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                              if (!empty($bed_checkout->checkout_diagnosis)) {
                                                                  echo $bed_checkout->checkout_diagnosis;
                                                              }
                                                              ?> </textarea>

                                            </div>
                                            <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('checkout_state'); ?>:</label>
                                                <textarea name="checkout_state" class='form-control'<?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                              if (!empty($bed_checkout->checkout_state)) {
                                                                  echo $bed_checkout->checkout_state;
                                                              }
                                                              ?> </textarea>

                                            </div>
                                            <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('epicrisis'); ?>:</label>
                                                <textarea name="epicrisis" class='form-control' <?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                              if (!empty($bed_checkout->epicrisis)) {
                                                                  echo $bed_checkout->epicrisis;
                                                              }
                                                              ?> </textarea>

                                            </div>
                                            <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('medicine_to_take'); ?>:</label>
                                                <textarea id="editor2"  name="medicine_to_take" class='form-control ckeditor' <?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                            if (!empty($bed_checkout->medicine_to_take)) {
                                                                echo $bed_checkout->medicine_to_take;
                                                            }
                                                            ?> </textarea>

                                                </div>
                                            <div class="form-group col-md-12">

                                                <label for="exampleInputEmail1" class="label_class"><?php echo lang('instruction'); ?>:</label>
                                                <textarea id="editor1"  name="instruction" class='form-control ckeditor' <?php
                                                if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                    echo 'readonly';
                                                }
                                                ?>><?php
                                                            if (!empty($bed_checkout->instruction)) {
                                                                echo $bed_checkout->instruction;
                                                            }
                                                            ?> </textarea>

                                                </div>
                                            <div class="form-group col-md-12">
                                                <label for="exampleInputEmail1"><?php echo lang('doctor'); ?></label>
                                                <select class="form-control m-bot15" id="doctors_checkout" name="doctors_checkout" value=''> 
                                                    <?php  if (!empty($bed_checkout->doctor)) {
                                                        $doctor1 = $this->db->get_where('doctor', array('id' => $bed_checkout->doctor))->row();
                                                    ?>
                                                    <option value="<?php echo $bed_checkout->doctor; ?>"  <?php
                                                    if (!empty($allotment->d_time) && !$this->ion_auth->in_group(array('admin'))) {
                                                        echo 'selected';
                                                        echo 'disabled';
                                                    }
                                                    ?>><?php echo $doctor1->name . '(Id:' . $doctor1->id . ')'; ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                            <input type="hidden" name="id" value="<?php
                                            if (!empty($bed_checkout->id)) {
                                                echo $bed_checkout->id;
                                            }
                                            ?>">
                                            <input type="hidden" name="alloted_bed_id" value="<?php
                                            if (!empty($allotment->id)) {
                                                echo $allotment->id;
                                            }
                                            ?>">
                                                   <?php if (empty($allotment->d_time) || $this->ion_auth->in_group(array('admin'))) { ?>
                                                <div class="col-md-12">

                                                    <button  id="checkout_submit" type="submit" name="submit" class="btn btn-xs btn-info pull-right" ><?php echo lang('save'); ?></button>

                                                </div>
                                            <?php } ?>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

        </section>



    </section>
    <!-- page end-->
</section>
</section>
<!--main content end-->
<!--footer start-->



<?php
$current_user = $this->ion_auth->get_user_id();
if ($this->ion_auth->in_group('Doctor')) {
    $doctor_id = $this->db->get_where('doctor', array('ion_user_id' => $current_user))->row()->id;
}
if (!$this->ion_auth->in_group(array('admin'))) {
    $admin='other';
}else{
    $admin='admin';
}
?>



<script src="common/js/codearistos.min.js"></script>

<script src="common/extranal/toast.js"></script>
<link rel="stylesheet" type="text/css" href="common/extranal/toast.css">
<script type="text/javascript">var select_doctor = "<?php echo lang('select_doctor'); ?>";</script>
<script type="text/javascript">var select_patient = "<?php echo lang('select_patient'); ?>";</script>
<script type="text/javascript">var medicine_gen_name = "<?php echo lang('medicine_gen_name'); ?>";</script> 
<script type="text/javascript">var select_nurse = "<?php echo lang('select_nurse'); ?>";</script>
<script type="text/javascript">var delete_lang = "<?php echo lang('delete'); ?>";</script>
<script type="text/javascript">var more = "<?php echo lang('more'); ?>";</script>
<script type="text/javascript">var admin = "<?php echo $admin; ?>";</script> 
<script type="text/javascript">var patient_name = "<?php echo $patient->name; ?>";</script> 
<script type="text/javascript">var patient_id = "<?php echo $patient->id; ?>";</script> 
<script type="text/javascript">var doctor_name = "<?php echo $doctor->name; ?>";</script> 
<script type="text/javascript">var doctor_id = "<?php echo $doctor->id; ?>";</script> 
<script type="text/javascript">var accepting_doctor_name = "<?php echo $accepting_doctor->name; ?>";</script> 
<script type="text/javascript">var accepting_doctor_id = "<?php echo $accepting_doctor->id; ?>";</script> 
<script type="text/javascript">var language = "<?php echo $this->language; ?>";</script>
<script src="common/extranal/js/bed/edit_allotment_bed.js"></script>



