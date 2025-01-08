<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <link href="common/extranal/css/notice/notice.css" rel="stylesheet">
        <section class="panel">
            <header class="panel-heading">
                <?php echo lang('notice'); ?>
                <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                    <div class="col-md-4 no-print pull-right"> 
                        <a data-toggle="modal" href="#myModal">
                            <div class="btn-group pull-right">
                                <button id="" class="btn green btn-xs">
                                    <i class="fa fa-plus-circle"></i> <?php echo lang('add_notice'); ?>
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
                                <th> <?php echo lang('title'); ?></th>
                                <th> <?php echo lang('description'); ?></th>
                                <th> <?php echo lang('notice'); ?> <?php echo lang('for'); ?> </th>
                                <th> <?php echo lang('date'); ?></th>
                                <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                                    <th> <?php echo lang('options'); ?></th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>

                            <?php foreach ($notices as $notice) { ?>
                                <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                                    <tr class="">
                                        <td> <?php echo $notice->title; ?></td>
                                        <td> <?php echo $notice->description; ?></td>
                                        <td class="center"><?php echo $notice->type; ?></td>
                                        <td> <?php
                                            if (!empty($notice->date)) {
                                                echo date('d-m-Y', $notice->date);
                                            }
                                            ?>
                                        </td>
                                        <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                                            <td>
                                                <button type="button" class="btn btn-info btn-xs btn_width editbutton" data-toggle="modal" data-id="<?php echo $notice->id; ?>"><i class="fa fa-edit"> <?php echo lang('edit'); ?></i></button>   
                                                <a class="btn btn-info btn-xs btn_width delete_button" href="notice/delete?id=<?php echo $notice->id; ?>" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash-o"> <?php echo lang('delete'); ?></i></a>
                                            </td>
                                        <?php } ?>
                                    </tr>
                                <?php } elseif ($this->ion_auth->in_group(array('Patient'))) {
                                    if ($notice->type == 'patient') {
                                        ?>
                                        <tr class="">
                                            <td> <?php echo $notice->title; ?></td>
                                            <td> <?php echo $notice->description; ?></td>
                                            <td class="center"><?php echo $notice->type; ?></td>
                                            <td> <?php
                                                if (!empty($notice->date)) {
                                                    echo date('d-m-Y', $notice->date);
                                                }
                                                ?>
                                            </td>
            <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                                                <td>
                                                    <button type="button" class="btn btn-info btn-xs btn_width editbutton" data-toggle="modal" data-id="<?php echo $notice->id; ?>"><i class="fa fa-edit"> <?php echo lang('edit'); ?></i></button>   
                                                    <a class="btn btn-info btn-xs btn_width delete_button" href="notice/delete?id=<?php echo $notice->id; ?>" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash-o"> <?php echo lang('delete'); ?></i></a>
                                                </td>
                                        <?php } ?>
                                        </tr>
                                    <?php }
                                } else {
                                    if ($notice->type == 'staff') {
                                        ?>
                                        <tr class="">
                                            <td> <?php echo $notice->title; ?></td>
                                            <td> <?php echo $notice->description; ?></td>
                                            <td class="center"><?php echo $notice->type; ?></td>
                                            <td> <?php
                                                if (!empty($notice->date)) {
                                                    echo date('d-m-Y', $notice->date);
                                                }
                                                ?>
                                            </td>
            <?php if ($this->ion_auth->in_group(array('admin'))) { ?>
                                                <td>
                                                    <button type="button" class="btn btn-info btn-xs btn_width editbutton" data-toggle="modal" data-id="<?php echo $notice->id; ?>"><i class="fa fa-edit"> <?php echo lang('edit'); ?></i></button>   
                                                    <a class="btn btn-info btn-xs btn_width delete_button" href="notice/delete?id=<?php echo $notice->id; ?>" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash-o"> <?php echo lang('delete'); ?></i></a>
                                                </td>
                                        <?php } ?>
                                        </tr>
        <?php }
    } ?>

<?php } ?>

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




<!-- Add Notice Modal-->
<div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">   <?php echo lang('add_notice'); ?></h4>
            </div>
            <div class="modal-body">
                <form role="form" action="notice/addNew" class="clearfix row" method="post" enctype="multipart/form-data">

                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1"> <?php echo lang('title'); ?> &#42;</label>
                        <input type="text" class="form-control" name="title"  value='<?php
                        if (!empty($notice->name)) {
                            echo $notice->name;
                        }
                        ?>' placeholder="" required="">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1"><?php echo lang('notice_for'); ?></label>
                        <select class="form-control m-bot15" name="type" value=''>
                            <option value="patient" <?php
                            if (!empty($notice->type)) {
                                if ($notice->type == 'patient') {
                                    echo 'selected';
                                }
                            }
                            ?>><?php echo lang('patient'); ?></option>
                            <option value="staff" <?php
                            if (!empty($notice->type)) {
                                if ($notice->type == 'staff') {
                                    echo 'selected';
                                }
                            }
                            ?>><?php echo lang('staff'); ?></option>

                        </select>
                    </div>

                    <div class="form-group col-md-12 des">
                        <label class=""><?php echo lang('description'); ?> &#42;</label>
                        <div class="">
                            <textarea class="ckeditor form-control editor" id="editor" name="description" value="" rows="10" required> </textarea>
                        </div>
                    </div>


                    <div class="form-group col-md-4">
                        <label for="exampleInputEmail1"> <?php echo lang('date'); ?> &#42;</label>
                        <input type="text" class="form-control default-date-picker" name="date"  value='' placeholder="" required="" onkeypress="return false;">
                    </div>




                    <div class="form-group col-md-12">
                        <button type="submit" name="submit" class="btn btn-info pull-right"> <?php echo lang('submit'); ?></button>
                    </div>

                </form>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" id="myModal2" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">   <?php echo lang('edit_notice'); ?></h4>
            </div>
            <div class="modal-body">
                <form role="form" id="editNoticeForm" class="clearfix row" action="notice/addNew" method="post" enctype="multipart/form-data">

                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1"> <?php echo lang('title'); ?> &#42;</label>
                        <input type="text" class="form-control" name="title"  value='<?php
                        if (!empty($notice->name)) {
                            echo $notice->name;
                        }
                        ?>' placeholder="" required="">
                    </div>

                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1"><?php echo lang('notice_for'); ?></label>
                        <select class="form-control m-bot15" name="type" value=''>
                            <option value="patient" <?php
                            if (!empty($notice->type)) {
                                if ($notice->type == 'patient') {
                                    echo 'selected';
                                }
                            }
                            ?>><?php echo lang('patient'); ?></option>
                            <option value="staff" <?php
                            if (!empty($notice->type)) {
                                if ($notice->type == 'staff') {
                                    echo 'selected';
                                }
                            }
                            ?>><?php echo lang('staff'); ?></option>

                        </select>
                    </div>  
                    <div class="form-group col-md-12 des">
                        <label class=""><?php echo lang('description'); ?> &#42;</label>
                        <div class="">
                            <textarea class="ckeditor form-control editor" id="editor1" name="description" value="" rows="10" required=""> </textarea>
                        </div>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="exampleInputEmail1"> <?php echo lang('date'); ?> &#42;</label>
                        <input type="text" class="form-control default-date-picker" name="date"  value='' placeholder="" required="" onkeypress="return false;">
                    </div>
                    <input type="hidden" name="id" value='<?php
                    if (!empty($notice->id)) {
                        echo $notice->id;
                    }
                            ?>'>
                    <div class="form-group col-md-12">
                        <button type="submit" name="submit" class="btn btn-info pull-right"> <?php echo lang('submit'); ?></button>
                    </div>
                </form>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


<script src="common/js/codearistos.min.js"></script>
<script type="text/javascript">var language = "<?php echo $this->language; ?>";</script>
<script src="common/extranal/js/notice.js"></script>
