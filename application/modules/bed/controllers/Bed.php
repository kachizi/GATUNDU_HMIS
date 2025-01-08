<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Bed extends MX_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('bed_model');
        $this->load->model('patient/patient_model');
        $this->load->model('doctor/doctor_model');
        $this->load->model('nurse/nurse_model');
        $this->load->model('medicine/medicine_model');
        $this->load->model('pservice/pservice_model');
        $this->load->model('finance/finance_model');
        
        if ($this->ion_auth->in_group(array('pharmacist', 'Laboratorist', 'Patient'))) {
            redirect('home/permission');
        }
    }

    public function index() {
        if (!$this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor', 'Accountant'))) {
            redirect('home/permission');
        }
        $data['beds'] = $this->bed_model->getBed();
        $data['categories'] = $this->bed_model->getBedCategory();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('bed', $data);
        $this->load->view('home/footer'); // just the header file  
    }

    public function addBedView() {
        $data = array();
        $data['categories'] = $this->bed_model->getBedCategory();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_bed_view', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addBed() {
        $id = $this->input->post('id');
        $number = $this->input->post('number');
        $description = $this->input->post('description');
        $status = $this->input->post('status');
        $category = $this->input->post('category');

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Category Field
        $this->form_validation->set_rules('category', 'Category', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Price Field
        $this->form_validation->set_rules('number', 'Bed Number', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Generic Name Field
        $this->form_validation->set_rules('description', 'Description', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Company Name Field

        if ($this->form_validation->run() == FALSE) {
            if (!empty($id)) {
                $data = array();
                $data['categories'] = $this->bed_model->getBedCategory();
                $data['bed'] = $this->bed_model->getBedById($id);
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('add_bed_view', $data);
                $this->load->view('home/footer'); // just the footer file
            } else {
                $data = array();
                $data['setval'] = 'setval';
                $data['categories'] = $this->bed_model->getBedCategory();
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('add_bed_view', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $bed_id = implode('-', array($category, $number));
            $data = array();
            $data = array(
                'category' => $category,
                'number' => $number,
                'description' => $description,
                'bed_id' => $bed_id
            );
            if (empty($id)) {
                $this->bed_model->insertBed($data);
               //  $this->log_model->insertLog($this->ion_auth->get_user_id(), date('d-m-Y H:i:s', time()), 'Add New Bed(id='.$this->db->insert_id().' )', $this->db->insert_id());
                $this->session->set_flashdata('feedback', lang('added'));
            } else {
                $this->bed_model->updateBed($id, $data);
                $this->session->set_flashdata('feedback', lang('updated'));
            }
            redirect('bed');
        }
    }

    function editBed() {
        $data = array();
        $data['categories'] = $this->bed_model->getBedCategory();
        $id = $this->input->get('id');
        $data['bed'] = $this->bed_model->getBedById($id);
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_bed_view', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function editBedByJason() {
        $id = $this->input->get('id');
        $data['bed'] = $this->bed_model->getBedById($id);
        echo json_encode($data);
    }

    function delete() {
        $id = $this->input->get('id');
        $this->bed_model->deleteBed($id);
        //$this->log_model->insertLog($this->ion_auth->get_user_id(), date('d-m-Y H:i:s', time()), 'Delete Bed(id='.$id.' )', $id);
        redirect('bed');
    }

    public function bedCategory() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        if (!$this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor', 'Accountant'))) {
            redirect('home/permission');
        }
        $data['categories'] = $this->bed_model->getBedCategory();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('bed_category', $data);
        $this->load->view('home/footer'); // just the header file
    }

    public function addCategoryView() {

        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_category_view');
        $this->load->view('home/footer'); // just the header file
    }

    public function addCategory() {
        $id = $this->input->post('id');
        $category = $this->input->post('category');
        $description = $this->input->post('description');

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Category Name Field
        $this->form_validation->set_rules('category', 'Category', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Description Field
        $this->form_validation->set_rules('description', 'Description', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            if (!empty($id)) {
                $data = array();
                $data['bed'] = $this->bed_model->getBedCategoryById($id);
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('add_category_view', $data);
                $this->load->view('home/footer'); // just the footer file
            } else {
                $data = array();
                $data['setval'] = 'setval';
                $this->load->view('home/dashboard'); // just the header file
                $this->load->view('add_category_view', $data);
                $this->load->view('home/footer'); // just the header file
            }
        } else {
            $data = array();
            $data = array('category' => $category,
                'description' => $description
            );
            if (empty($id)) {
                $this->bed_model->insertBedCategory($data);
                $this->session->set_flashdata('feedback', lang('added'));
            } else {
                $this->bed_model->updateBedCategory($id, $data);
                $this->session->set_flashdata('feedback', lang('updated'));
            }
            redirect('bed/bedCategory');
        }
    }

    function editCategory() {
        $data = array();
        $id = $this->input->get('id');
        $data['bed'] = $this->bed_model->getBedCategoryById($id);
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_category_view', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function editBedCategoryByJason() {
        $id = $this->input->get('id');
        $data['bedcategory'] = $this->bed_model->getBedCategoryById($id);
        echo json_encode($data);
    }

    function deleteBedCategory() {
        $id = $this->input->get('id');
        $this->bed_model->deleteBedCategory($id);
        $this->session->set_flashdata('feedback', lang('deleted'));
        redirect('bed/bedCategory');
    }

    function bedAllotment() {
        if (!$this->ion_auth->logged_in()) {
            redirect('auth/login', 'refresh');
        }
        if (!$this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor', 'Accountant'))) {
            redirect('home/permission');
        }
        $data['blood_group'] = $this->bed_model->getBloodGroup();

        $data['room_no'] = $this->bed_model->getBedCategory();
        $data['patients'] = $this->patient_model->getPatient();
        $data['alloted_beds'] = $this->bed_model->getAllotment();

        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('bed_allotment', $data);
        $this->load->view('home/footer'); // just 
    }

    function addAllotmentView() {
        $data = array();
        $data['blood_group'] = $this->bed_model->getBloodGroup();

        $data['room_no'] = $this->bed_model->getBedCategory();
        $data['patients'] = $this->patient_model->getPatient();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_allotment_view', $data);
        $this->load->view('home/footer'); // just the header file
    }
    function editAllotmentView() {
        $data = array();
        $id=$this->input->get('id');
        $data['blood_group'] = $this->bed_model->getBloodGroup();
        $data['allotment'] = $this->bed_model->getAllotmentById($id);
        $data['room_no'] = $this->bed_model->getBedCategory();
        // $beds=$this->bed_model->getBedByCategory($data['allotment']->category);
        // $option='';
        
        $alloted_time = $data['allotment']->a_time;
        // echo $alloted_time;
        $alloted_time_array = array();
        $alloted_time_array = explode("-", $alloted_time);
        $alloted_timestamp = strtotime($alloted_time_array[0] . ' ' . $alloted_time_array[1]);
        $beds = $this->bed_model->getBedByCategory($data['allotment']->category);
        $option = '';
       
        foreach ($beds as $bed) {
            $alloted_bed = array();
            $alloted_bed = $this->bed_model->getAllotedBedByBedIdByDate($bed->id, $alloted_timestamp);

            if (empty($alloted_bed)) {

                if($bed->id== $data['allotment']->bed_id){
                    $option .= '<option value="' . $bed->id . '" selected>' . $bed->number . '</option>';
                }else{
                    $option .= '<option value="' . $bed->id . '">' . $bed->number . '</option>';
                }
            } else {
                foreach ($alloted_bed as $al_bed) {
                    if ($al_bed->d_timestamp >= $alloted_timestamp || empty($al_bed->d_timestamp) && $al_bed->bed_id != $data['allotment']->bed_id) {
                        $option1 = "1";
                    } else {

                        if($bed->id== $data['allotment']->bed_id){
                            $option .= '<option value="' . $bed->id . '" selected>' . $bed->number . '</option>';
                        }else{
                            $option .= '<option value="' . $bed->id . '">' . $bed->number . '</option>';
                        }
                    }
                }
            }
        }
       
        $data['bed']=$option;
        $data['patients'] = $this->patient_model->getPatient();
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_allotment_view', $data);
        $this->load->view('home/footer'); // just the header file
    }
    function addAllotment() {
        $id = $this->input->post('id');
        $category_status = $this->input->post('category_status');

        $category_status_update = implode(',', $category_status);

        //$covid_19 = $this->input->post('covid_19');
        $reaksione = $this->input->post('reaksione');
        $transferred_from = $this->input->post('transferred_from');
        $diagnoza_a_shtrimit = $this->input->post('diagnoza_a_shtrimit');
        $doctor = $this->input->post('doctor');
        $diagnosis = $this->input->post('diagnosis');
        $other_illnesses = $this->input->post('other_illnesses');
        $anamneza = $this->input->post('anamneza');
        $blood_group = $this->input->post('blood_group');
        $accepting_doctor = $this->input->post('accepting_doctor');
        $category = $this->input->post('category');
        $patient = $this->input->post('patient');
        $a_time = $this->input->post('a_time');
        $a_time_array = array();
        $a_time_array = explode("-", $a_time);
        $a_timestamp = strtotime($a_time_array[0] . ' ' . $a_time_array[1]);

        //$d_time = $this->input->post('d_time');
        // $status = $this->input->post('status');
        $bed_id = $this->input->post('bed_id');

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Category Field
        $this->form_validation->set_rules('bed_id', 'Bed', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Patient Field
        $this->form_validation->set_rules('patient', 'Patient', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Alloted Time Field
        $this->form_validation->set_rules('a_time', 'Alloted Time', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Discharge Time Field
        // $this->form_validation->set_rules('d_time', 'Discharge Time', 'trim|min_length[1]|max_length[100]|xss_clean');
        // Validating Status Field
        //$this->form_validation->set_rules('status', 'Status', 'trim|min_length[1]|max_length[100]|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $data = array();
            $data['blood_group'] = $this->bed_model->getBloodGroup();

            $data['room_no'] = $this->bed_model->getBedCategory();
            $data['patients'] = $this->patient_model->getPatient();
            $this->load->view('home/dashboard'); // just the header file
            $this->load->view('add_allotment_view', $data);
            $this->load->view('home/footer'); // just the header file
        } else {
            $data = array();
            $patientname = $this->patient_model->getPatientById($patient)->name;
            $data = array(
                'bed_id' => $bed_id,
                'patient' => $patient,
                'a_time' => $a_time,
                'category' => $category,
                'category_status' => $category_status_update,
                'reaksione' => $reaksione,
                //'covid_19' => $covid_19,
                'transferred_from' => $transferred_from,
                'anamneza' => $anamneza,
                'accepting_doctor' => $accepting_doctor,
                'doctor' => $doctor,
                'diagnosis' => $diagnosis,
                'diagnoza_a_shtrimit' => $diagnoza_a_shtrimit,
                'blood_group' => $blood_group,
                'other_illnesses' => $other_illnesses,
                // 'd_time' => $d_time,
                // 'status' => $status,
                'patientname' => $patientname,
                'a_timestamp' => $a_timestamp
            );
            $data1 = array(
                'last_a_time' => $a_time,
                    // 'last_d_time' => $d_time,
            );

            if (empty($id)) {
                $this->bed_model->insertAllotment($data);
              //  $this->log_model->insertLog($this->ion_auth->get_user_id(), date('d-m-Y H:i:s', time()), 'Add New Bed Allotment(id='.$this->db->insert_id().' )', $this->db->insert_id());
                $this->bed_model->updateBedByBedId($bed_id, $data1);
                $this->session->set_flashdata('feedback', lang('added'));
            } else {
                $this->bed_model->updateAllotment($id, $data);
                $this->bed_model->updateBedByBedId($bed_id, $data1);
                $this->session->set_flashdata('feedback', lang('updated'));
            }
            $redirect= $this->input->post('redirect');
            if ($redirect=='redirect'){
                 redirect('patient/medicalHistory?id='.$patient);
            }else{
               redirect('bed/bedAllotment'); 
            }
            
        }
    }

    function editAllotment() {
        $data = array();
        $data['beds'] = $this->bed_model->getBed();
        $data['patients'] = $this->patient_model->getPatient();
        $id = $this->input->get('id');
        $data['allotment'] = $this->bed_model->getAllotmentById($id);
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('add_allotment_view', $data);
        $this->load->view('home/footer'); // just the footer file
    }

    function editAllotmentByJason() {
        $id = $this->input->get('id');
        $data['allotment'] = $this->bed_model->getAllotmentById($id);
        $data['patient'] = $this->patient_model->getPatientById($data['allotment']->patient);
        echo json_encode($data);
    }

    function deleteAllotment() {
        $id = $this->input->get('id');
        $this->bed_model->deleteBedAllotment($id);
        //$this->log_model->insertLog($this->ion_auth->get_user_id(), date('d-m-Y H:i:s', time()), 'Delete Bed Allotment(id='.$id.' )', $id);
        $this->session->set_flashdata('feedback', lang('deleted'));
        redirect('bed/bedAllotment');
    }

    function getBedList() {
        $requestData = $_REQUEST;
        $start = $requestData['start'];
        $limit = $requestData['length'];
        $search = $this->input->post('search')['value'];

        $order = $this->input->post("order");
        $columns_valid = array(
            "0" => "bed_id",
            "1" => "description",
            "2" => "status",
        );
        $values = $this->settings_model->getColumnOrder($order, $columns_valid);
        $dir = $values[0];
        $order = $values[1];

        if ($limit == -1) {
            if (!empty($search)) {
                $data['beds'] = $this->bed_model->getBedBysearch($search, $order, $dir);
            } else {
                $data['beds'] = $this->bed_model->getBedWithoutSearch($order, $dir);
            }
        } else {
            if (!empty($search)) {
                $data['beds'] = $this->bed_model->getBedByLimitBySearch($limit, $start, $search, $order, $dir);
            } else {
                $data['beds'] = $this->bed_model->getBedByLimit($limit, $start, $order, $dir);
            }
        }


        //  $data['patients'] = $this->patient_model->getVisitor();
        $i = 0;
        
        foreach ($data['beds'] as $bed) {
            $i = $i + 1;
            $option1 = '';
            $option2 = '';
            if ($this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor', 'Accountant'))) {
                $option1 = '<button type="button" class="btn btn-info btn-xs btn_width editbutton" data-toggle="modal" data-id="' . $bed->id . '"><i class="fa fa-edit"> </i> ' . lang('edit') . '</button>';
            }
            if ($this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor', 'Accountant'))) {
                $option2 = '<a class="btn btn-info btn-xs btn_width delete_button" href="bed/delete?id=' . $bed->id . '" onclick="return confirm(\'Are you sure you want to delete this item?\');"><i class="fa fa-trash"> </i> ' . lang('delete') . '</a>';
            }
            $last_a_time = explode('-', $bed->last_a_time);
            $last_d_time = explode('-', $bed->last_d_time);
            if (!empty($last_d_time[1])) {
                $last_d_h_am_pm = explode(' ', $last_d_time[1]);
                $last_d_h = explode(':', $last_d_h_am_pm[1]);
                if ($last_d_h_am_pm[2] == 'AM') {
                    $last_d_m = ($last_d_h[0] * 60 * 60) + ($last_d_h[1] * 60);
                } else {
                    $last_d_m = (12 * 60 * 60) + ($last_d_h[0] * 60 * 60) + ($last_d_h[1] * 60);
                }
                $last_d_time = strtotime($last_d_time[0]) + $last_d_m;
            }
            if (!empty($bed->last_a_time)) {
                if (empty($bed->last_d_time)) {
                    $bedstatus = '<button type="button" class="btn btn-primary">' . lang('alloted') . '</button>';
                } elseif ((time() > $last_d_time)) {
                    $bedstatus = '<button type="button" class="btn btn-success">' . lang('available') . '</button>';
                } elseif ((time() < $last_d_time)) {
                    $bedstatus = '<button type="button" class="btn btn-primary">' . lang('alloted') . '</button>';
                }
            } else {
                $bedstatus = '<button type="button" class="btn btn-success">' . lang('available') . '</button>';
            }


            $info[] = array(
                $bed->bed_id,
                $bed->description,
                $bedstatus,
                $option1 . ' ' . $option2
            );
        }

        if (!empty($data['beds'])) {
            $output = array(
                "draw" => intval($requestData['draw']),
                "recordsTotal" => count($data['beds']),
                "recordsFiltered" => count($data['beds']),
                "data" => $info
            );
        } else {
            $output = array(
                // "draw" => 1,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        echo json_encode($output);
    }

    function getBedAllotmentList() {
        $requestData = $_REQUEST;
        $start = $requestData['start'];
        $limit = $requestData['length'];
        $search = $this->input->post('search')['value'];

        $order = $this->input->post("order");
        $columns_valid = array(
            "0" => "id",
            "2" => "a_time",
            "3" => "d_time",
        );
        $values = $this->settings_model->getColumnOrder($order, $columns_valid);
        $dir = $values[0];
        $order = $values[1];

        if ($limit == -1) {
            if (!empty($search)) {
                $data['beds'] = $this->bed_model->getBedAllotmentBysearch($search, $order, $dir);
            } else {
                $data['beds'] = $this->bed_model->getAllotmentWithoutSearch($order, $dir);
            }
        } else {
            if (!empty($search)) {
                $data['beds'] = $this->bed_model->getBedAllotmentByLimitBySearch($limit, $start, $search, $order, $dir);
            } else {
                $data['beds'] = $this->bed_model->getBedAllotmentByLimit($limit, $start, $order, $dir);
            }
        }


        //  $data['patients'] = $this->patient_model->getVisitor();
        $i = 0;
        
        foreach ($data['beds'] as $bed) {
            $i = $i + 1;
            $option1 = '';
            $option2 = '';
            if ($this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor')) ) {
                $option1 = '<a class="btn btn-info btn-xs btn_width editbutton" href="bed/bedAllotmentDetails?id=' . $bed->id . '"><i class="fa fa-edit"> </i> ' . lang('edit') . '</a>';
            }
            if ($this->ion_auth->in_group(array('admin', 'Nurse', 'Doctor'))) {
                $option2 = '<a class="btn btn-info btn-xs btn_width delete_button" href="bed/deleteAllotment?id=' . $bed->id . '" onclick="return confirm(\'Are you sure you want to delete this item?\');"><i class="fa fa-trash"> </i> ' . lang('delete') . '</a>';
            }
            if ($this->ion_auth->in_group(array('Accountant', 'Receptionist')) ) {
                $option1 = '<a class="btn btn-info btn-xs btn_width editbutton" href="bed/editAllotmentView?id=' . $bed->id . '"><i class="fa fa-edit"> </i> ' . lang('edit') .' '.lang('checkin'). '</a>';
            }
            $patientdetails = $this->patient_model->getPatientById($bed->patient);
            if (!empty($patientdetails)) {
                $patientname = $patientdetails->name;
            } else {
                $patientname = $bed->patientname;
            }
            if(!empty($bed->d_time)){
                $decharge = '<a class="btn btn-info btn-xs btn_width " href="bed/dischargeReport?id=' . $bed->id . '"><i class="fa fa-file"> </i> ' . lang('discharge_report') . '</a>';
            }else{
                $decharge=' ';
            }

            $info[] = array(
                $bed->bed_id,
                $patientname,
                $bed->a_time,
                $bed->d_time,
                $option1 . ' ' . $option2. ' ' . $decharge
            );
        }

        if (!empty($data['beds'])) {
            $output = array(
                "draw" => intval($requestData['draw']),
                "recordsTotal" => count($data['beds']),
                "recordsFiltered" => count($data['beds']),
                "data" => $info
            );
        } else {
            $output = array(
                // "draw" => 1,
                "recordsTotal" => 0,
                "recordsFiltered" => 0,
                "data" => []
            );
        }

        echo json_encode($output);
    }
    
    function getNotAvailableBed() {
        $date = $this->input->get('date');
        $dateexplode = explode('-', $date);
        $timesttamp = strtotime($dateexplode[0] . ' ' . $dateexplode[1]);
        $category = $this->input->get('category');
        $data = array();
        $data['bedlist'] = $this->bed_model->getNotBedAvailableList($timesttamp, $category);
        $data['date'] = $timesttamp;
        echo json_encode($data);
    }

    function getNotAvailableBedFromEdit() {
        $date = $this->input->get('date');
        $dateexplode = explode('-', $date);
        $timesttamp = strtotime($dateexplode[0] . ' ' . $dateexplode[1]);
        $category = $this->input->get('category');
        $id = $this->input->get('id');
        $data = array();
        $data['bedlist'] = $this->bed_model->getNotBedAvailableListFromEdit($timesttamp, $category, $id);
        $data['date'] = $timesttamp;
        echo json_encode($data);
    }

    function getBedByRoomNo() {
        $id = $this->input->get('id');
        $alloted_time = $this->input->get('alloted_time');
        // echo $alloted_time;
        $alloted_time_array = array();
        $alloted_time_array = explode("-", $alloted_time);
        $alloted_timestamp = strtotime($alloted_time_array[0] . ' ' . $alloted_time_array[1]);
        $beds = $this->bed_model->getBedByCategory($id);
        $option = '';
        $option = '<option  value="select">' . lang('select') . '</option>';
        foreach ($beds as $bed) {
            $alloted_bed = array();
            $alloted_bed = $this->bed_model->getAllotedBedByBedIdByDate($bed->id, $alloted_timestamp);

            if (empty($alloted_bed)) {

                $option .= '<option value="' . $bed->id . '">' . $bed->number . '</option>';
            } else {
                foreach ($alloted_bed as $al_bed) {
                    if ($al_bed->d_timestamp >= $alloted_timestamp || empty($al_bed->d_timestamp)) {
                        $option1 = "1";
                    } else {

                        $option .= '<option value="' . $bed->id . '">' . $bed->number . '</option>';
                    }
                }
            }
        }
        $data['response'] = $option;
        echo json_encode($data);
    }

    function bedAllotmentDetails() {
        $id = $this->input->get('id');
        $data = array();
        $data['settings'] = $this->settings_model->getSettings();
        $data['allotment'] = $this->bed_model->getBedAllotmentsById($id);
        $data['bed_id'] = $this->bed_model->getBedByCategory($data['allotment']->category);
        $data['patient'] = $this->patient_model->getPatientById($data['allotment']->patient);
        $data['pservice'] = $this->pservice_model->getPserviceByActive();
        $data['doctor'] = $this->doctor_model->getDoctorById($data['allotment']->doctor);
        $data['daily_progress'] = $this->bed_model->getDailyProgressByBedId($id);
        $data['daily_medicine'] = $this->bed_model->getMedicineAllotedByBedId($id);
        $data['daily_service'] = $this->bed_model->getServiceAllotedByBedId($id);
        
        $data['bed_checkout'] = $this->bed_model->getCheckoutByBedId($id);
        $date_exist = $this->bed_model->getServicesByDate(date('d-m-Y', time()));
        if (!empty($date_exist)) {
            $data['checked'] = explode("**", $date_exist->service);
        } else {
            $data['checked'] = array();
        }
        $option='';
        $data['accepting_doctor'] = $this->doctor_model->getDoctorById($data['allotment']->accepting_doctor);
        foreach ($data['bed_id'] as $bed) {
            if ($bed->id == $data['allotment']->bed_id) {
                $option .= '<option value="' . $bed->id . '" selected>' . $bed->number . '</option>';
            } else {
                $option .= '<option value="' . $bed->id . '">' . $bed->number . '</option>';
            }
        }
        $data['option'] = $option;
        $data['blood_group'] = $this->bed_model->getBloodGroup();

        $data['room_no'] = $this->bed_model->getBedCategory();
        $this->load->view('home/dashboard', $data);
        $this->load->view('edit_allotment_bed', $data);
        $this->load->view('home/footer', $data);
    }

    function updateCheckin() {
        $id = $this->input->post('id');
        $category_status = $this->input->post('category_status');

        $category_status_update = implode(',', $category_status);

       // $covid_19 = $this->input->post('covid_19');
        $reaksione = $this->input->post('reaksione');
        $transferred_from = $this->input->post('transferred_from');
        $diagnoza_a_shtrimit = $this->input->post('diagnoza_a_shtrimit');
        $doctor = $this->input->post('doctor');
        $diagnosis = $this->input->post('diagnosis');
        $other_illnesses = $this->input->post('other_illnesses');
        $anamneza = $this->input->post('anamneza');
        $blood_group = $this->input->post('blood_group');
        $accepting_doctor = $this->input->post('accepting_doctor');
        $category = $this->input->post('category');
        $patient = $this->input->post('patient');
        $a_time = $this->input->post('a_time');
        //$d_time = $this->input->post('d_time');
        // $status = $this->input->post('status');
        $bed_id = $this->input->post('bed_id');

        $this->load->library('form_validation');
        $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Category Field
        $this->form_validation->set_rules('bed_id', 'Bed', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Patient Field
        $this->form_validation->set_rules('patient', 'Patient', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Alloted Time Field
        $this->form_validation->set_rules('a_time', 'Alloted Time', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        // Validating Discharge Time Field
        // $this->form_validation->set_rules('d_time', 'Discharge Time', 'trim|min_length[1]|max_length[100]|xss_clean');
        // Validating Status Field
        //$this->form_validation->set_rules('status', 'Status', 'trim|min_length[1]|max_length[100]|xss_clean');
        if ($this->form_validation->run() == FALSE) {
            $data = array();
            $data['blood_group'] = $this->bed_model->getBloodGroup();

            $data['room_no'] = $this->bed_model->getBedCategory();
            $data['patients'] = $this->patient_model->getPatient();
            $this->load->view('home/dashboard'); // just the header file
            $this->load->view('add_allotment_view', $data);
            $this->load->view('home/footer'); // just the header file
        } else {
            $data = array();
            $patientname = $this->patient_model->getPatientById($patient)->name;
            $data = array(
                'bed_id' => $bed_id,
                'patient' => $patient,
                'a_time' => $a_time,
                'category' => $category,
                'category_status' => $category_status_update,
                'reaksione' => $reaksione,
               // 'covid_19' => $covid_19,
                'transferred_from' => $transferred_from,
                'anamneza' => $anamneza,
                'accepting_doctor' => $accepting_doctor,
                'doctor' => $doctor,
                'diagnosis' => $diagnosis,
                'diagnoza_a_shtrimit' => $diagnoza_a_shtrimit,
                'blood_group' => $blood_group,
                'other_illnesses' => $other_illnesses,
                // 'd_time' => $d_time,
                // 'status' => $status,
                'patientname' => $patientname
            );
            $data1 = array(
                'last_a_time' => $a_time,
                    // 'last_d_time' => $d_time,
            );

            if (empty($id)) {
                $this->bed_model->insertAllotment($data);
                $this->bed_model->updateBedByBedId($bed_id, $data1);
                //  $this->session->set_flashdata('feedback', lang('added'));
            } else {
                $this->bed_model->updateAllotment($id, $data);
                $this->bed_model->updateBedByBedId($bed_id, $data1);

                $arr = array('message' => lang('updated'), 'title' => lang('updated'));
                echo json_encode($arr);
            }
        }
    }

    function updateDailyProgress() {
        $id = $this->input->post('daily_progress_id');
        $date = $this->input->post('date');
        $time = $this->input->post('time');
        $description = $this->input->post('description');
        $daily_description = $this->input->post('daily_description');
        $nurse = $this->input->post('nurse');
        $alloted_bed_id = $this->input->post('alloted_bed_id');


        //  $this->load->library('form_validation');
        //   $this->form_validation->set_error_delimiters('<div class="error">', '</div>');
        // Validating Category Field
        //  $this->form_validation->set_rules('date', 'Date', 'trim|required|min_length[1]|max_length[100]|xss_clean');
        //  // Validating Patient Field
        //  $this->form_validation->set_rules('time', 'Time', 'trim|required|min_length[1]|max_length[100]|xss_clean');


        $data = array();
        //  $patientname = $this->patient_model->getPatientById($patient)->name;
        $data = array(
            'date' => $date,
            'datestamp' => strtotime($date),
            'time' => $time,
            'alloted_bed_id' => $alloted_bed_id,
            'description' => $description,
            'daily_description' => $daily_description,
            'nurse' => $nurse,
        );


        if (empty($id)) {

            $this->bed_model->insertDailyProgress($data);
            $insert_id = $this->db->insert_id();
            //  $inserted_id=$this->db->inserted_id('daily_progress');
            $arr['info'] = $this->bed_model->getDailyProgressById($insert_id);
            $arr['nurse'] = $this->nurse_model->getNurseById($arr['info']->nurse);
            $arr['message'] = array('message' => lang('added'), 'title' => lang('added'));
            $arr['added'] = array('redir' => 'added');
            echo json_encode($arr);
        } else {
            $this->bed_model->updateDailyProgress($id, $data);
            //$this->bed_model->updateBedByBedId($bed_id, $data1);
            $arr['info'] = $this->bed_model->getDailyProgressById($id);
            $arr['nurse'] = $this->nurse_model->getNurseById($arr['info']->nurse);
            $arr['message'] = array('message' => lang('updated'), 'title' => lang('updated'));
            $arr['added'] = array('redir' => 'updated');
            echo json_encode($arr);
        }
    }

    function getDailyProgress() {
        $id = $this->input->get('id');
        $data = array();
        $data['info'] = $this->bed_model->getDailyProgressById($id);
        $data['nurse'] = $this->nurse_model->getNurseById($data['info']->nurse);
        echo json_encode($data);
    }

    function updateMedicine() {
        //  $id = $this->input->post('daily_progress_id');
        $date = date('d-m-Y', time());
        $quantity = $this->input->post('quantity');
        $sales_price = $this->input->post('sales_price');
        $medicine_id = $this->input->post('medicine_name');
        $generic_name = $this->input->post('generic_name');
        $alloted_bed_id = $this->input->post('alloted_bed_id');
        $total = $this->input->post('total');
        $medicine_name = $this->medicine_model->getMedicineById($medicine_id);





        $data = array();
        //  $patientname = $this->patient_model->getPatientById($patient)->name;
        $data = array(
            'date' => $date,
            'quantity' => $quantity,
            'alloted_bed_id' => $alloted_bed_id,
            's_price' => $sales_price,
            'medicine_id' => $medicine_id,
            'medicine_pharmacy_id'=>$medicine_name->id,
            'medicine_name' => $medicine_name->name,
            'generic_name' => $generic_name,
            'total' => $total
        );




        $this->bed_model->insertMedicineAllotedPatient($data);
        $insert_id = $this->db->insert_id();
      
        $arr['info'] = $this->bed_model->getMedicineAllotedPatientById($insert_id);
        $arr['medicine'] = $this->medicine_model->getMedicineById($arr['info']->medicine_id);
        
        $arr['message'] = array('message' => lang('added'), 'title' => lang('added'));
       
        echo json_encode($arr);
    }

    function deleteMedicine() {
        $id = $this->input->get('id');
        $bed_details = $this->bed_model->getMedicineAllotedPatientById($id);
        $payments = $this->finance_model->getPaymentById($bed_details->payment_id);
        if (!empty($payments->category_name)) {
            $category = explode("#", $payments->category_name);
            foreach ($category as $cat) {
                $individual = explode('*', $cat);
                if ($individual[5] != $bed_details->id) {
                    $price[] = $individual[4];
                    $cat_new[] = $cat;
                }
            }

            if (empty($cat_new)) {
                $this->finance_model->deletePayment($bed_details->payment_id);
                $data_bed = array('payment_id' => '');
                $this->bed_model->updateMedicineAlloted($bed_details->id, $data_bed);
            } else {
                $cat_new_update = implode("#", $cat_new);
                $total = array_sum($price);
                $data = array(
                    'category_name' => $cat_new_update,
                    'amount' => $total,
                    'gross_total' => $total,
                    'hospital_amount' => $total,
                );
                $data_bed = array('payment_id' => '');
                $this->bed_model->updateMedicineAlloted($bed_details->id, $data_bed);
                $this->finance_model->updatePayment($bed_details->payment_id, $data);
            }
        }
        $this->bed_model->deleteMedicine($id);
        $arr['message'] = array('message' => lang('delete'), 'title' => lang('delete'));
        echo json_encode($arr);
    }

    function updateServices() {
        $arr=array();
        $pservice = $this->input->post('arr');

        $nurse = $this->input->post('nurse');
        $date = date('d-m-Y', time());
        if (!empty($pservice)) {
            foreach ($pservice as $p_service) {
                $price_pservice = $this->pservice_model->getPserviceById($p_service);
                $price[] = $price_pservice->price;
            }
            $price_update = implode("**", $price);
            $pservice_update = implode("**", $pservice);
            $data = array();
            $data = array('date' => $date,
                'nurse' => $nurse,
                'service' => $pservice_update,
                'price' => $price_update,
                'alloted_bed_id' => $this->input->post('alloted')
            );
        }
        $date_exist = $this->bed_model->getServicesByDate($date);
        if (!empty($date_exist)) {
            if (empty($pservice)) {
                $payment_ids = explode(",", $date_exist->payment_id);
                if (!empty($payment_ids)) {
                    for ($i = 0; $i < count($payment_ids); $i++) {
                        $this->finance_model->deletePayment($payment_ids[$i]);
                    }
                }
                $this->bed_model->deleteServices($date_exist->id);
                $arr['message'] = array('message' => lang('updated'), 'title' => lang('updated'));
            } else {
                $this->bed_model->updateServices($date_exist->id, $data);
                $inserted_id = $date_exist->id;
                $arr['message'] = array('message' => lang('updated'), 'title' => lang('updated'));
            }
        } else {
            $this->bed_model->insertServices($data);
            $inserted_id = $this->db->insert_id('bed_service');
            $arr['message'] = array('message' => lang('added'), 'title' => lang('added'));
        }
        $daily_service = $this->bed_model->getServiceAllotedByBedId($this->input->post('alloted'));

        $settings = $this->settings_model->getSettings();

        $option=' ';
        foreach ($daily_service as $service) {
            $pay_service = array();
            $pay_service_new = array();
            if (!empty($service->payment_id)) {
                $payment_explode = explode(",", $service->payment_id);
                for ($i = 0; $i < count($payment_explode); $i++) {
                    $payment_details = array();
                    $payment_details = $this->finance_model->getPaymentById($payment_explode[$i]);
                    $payment_d = array();
                    $payment_d = explode("#", $payment_details->category_name);
                    foreach ($payment_d as $key => $value) {
                        $pay_service = explode("*", $value);
                        $pay_service_new[] = $pay_service[0];
                    }
                }
            }
            $price = explode("**", $service->price);

            $service_update = explode("**", $service->service);
            //  print_r($price);
            // die();
            //$array = array_combine($service, $price);
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
                    $date_explode = explode("-", $service->date);
                    if(!empty($servicename)){
                    if ($this->ion_auth->in_group(array('admin'))) {
                        $option .= '<tr id="' . $service->date . '-' . $service_update[$i] . '">
                                                        <td>' . $servicename->name . '</td>
                                                        <td>' . $service->date . '</td>
                                                        <td>' . $nursename . '</td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td> 1 </td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td class="no-print" id="delete-service-' . $date_explode[0] . '-' . $servicename->id . '"><button type="button" class="btn btn-danger btn-xs btn_width delete_service" title=' . lang('delete') . ' data-toggle=" "data-id="' . $service->id . "**" . $service_update[$i] . '"><i class="fa fa-trash"></i></button></td>
                                                    </tr>';
                    } else {
                        if (empty($service->payment_id)) {
                            $option .= '<tr id="' . $service->date . '-' . $service_update[$i] . '">
                                                        <td>' . $servicename->name . '</td>
                                                        <td>' . $service->date . '</td>
                                                        <td>' . $nursename . '</td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td> 1 </td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td class="no-print" id="delete-service-' . $date_explode[0] . '-' . $servicename->id . '"><button type="button" class="btn btn-danger btn-xs btn_width delete_service" title=' . lang('delete') . ' data-toggle=" "data-id="' . $service->id . "**" . $service_update[$i] . '"><i class="fa fa-trash"></i></button></td>
                                                    </tr>';
                        } else {
                            if (in_array($servicename->id, $pay_service_new)) {
                                $option .= '<tr id="' . $service->date . '-' . $service_update[$i] . '">
                                                        <td>' . $servicename->name . '</td>
                                                        <td>' . $service->date . '</td>
                                                        <td>' . $nursename . '</td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td> 1 </td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td></td>
                                                    </tr>';
                            } else {
                                $option .= '<tr id="' . $service->date . '-' . $service_update[$i] . '">
                                                        <td>' . $servicename->name . '</td>
                                                        <td>' . $service->date . '</td>
                                                        <td>' . $nursename . '</td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td> 1 </td>
                                                        <td>' . $settings->currency . ' ' . $price[$i] . '</td>
                                                        <td class="no-print" id="delete-service-' . $date_explode[0] . '-' . $servicename->id . '"><button type="button" class="btn btn-danger btn-xs btn_width delete_service" title=' . lang('delete') . ' data-toggle=" "data-id="' . $service->id . "**" . $service_update[$i] . '"><i class="fa fa-trash"></i></button></td>
                                                    </tr>';
                            }
                        }
                    }
                }
                }
            }
        }

        
        $arr['option'] = array('option' => $option, 'title' => lang('added'));
        $arr['nurses'] = $this->nurse_model->getNurseById($nurse);

        echo json_encode($arr);
    }

    function deleteServices() {
        $id = $this->input->get('id');
        $service = explode("**", $id);
        $service_details = $this->bed_model->getServicedById($service[0]);
        $payment_id=array();
        $services_database = explode("**", $service_details->service);
        $prices_database = explode("**", $service_details->price);
        if (!empty($service_details->payment_id)) {
            $payment_explode = explode(",", $service_details->payment_id);
            for ($i = 0; $i < count($payment_explode); $i++) {
                $payment_details = array();
                $payment_details = $this->finance_model->getPaymentById($payment_explode[$i]);
                $payment_d = array();
                $price_update = array();
                $price_up = array();
                $payment_d = explode("#", $payment_details->category_name);
                foreach ($payment_d as $key => $value) {
                    $pay_service = array();
                    $pay_service = explode("*", $value);
                    if ($service[1] == $pay_service[0]) {
                        continue;
                    } else {
                        $price_update[] = $pay_service[0] .'*'. $$pay_service[1];
                        $price_up[] = $pay_service[1];
                    }
                }
                if (!empty($price_update)) {
                    $pay_update = implode("#", $pay_update);
                    $total = array_sum($price_up);
                    $data_payment = array();
                    $data_payment = array(
                        'category_name' => $cat_new_update,
                        'amount' => $total,
                        'gross_total' => $total,
                        'hospital_amount' => $total
                    );
                    $this->finance_model->updatePayment($payment_explode[$i], $data_payment);
                    $payment_id[]=$payment_explode[$i];
                } else {
                    $this->finance_model->deletePayment($payment_explode[$i]);
                    
                }
            }
        }
        $price_new=array();
        $service_new=array();
        for ($i = 0; $i < sizeof($services_database); $i++) {
            if ($service[1] != $services_database[$i]) {
                $service_new[] = $services_database[$i];
                $price_new[] = $prices_database[$i];
            }
        }
        $data = array(
            'price' => implode("**", $price_new),
            'service' => implode("**", $service_new),
            'payment_id'=> implode(",", $payment_id),
        );
        if (empty($price_new)) {
            $this->bed_model->deleteServices($id);
        } else {
            $this->bed_model->updateServices($id, $data);
        }

        $arr['message'] = array('message' => lang('delete'), 'title' => lang('delete'), 'date' => $service_details->date);
        // $arr['date1'] = array();
        echo json_encode($arr);
    }

    function updateCheckout() {
        $id = $this->input->post('id');

        $doctor = $this->input->post('doctors_checkout');
        $alloted_bed_id = $this->input->post('alloted_bed_id');
        $epicrisis = $this->input->post('epicrisis');
        $checkout_state = $this->input->post('checkout_state');
        $checkout_diagnosis = $this->input->post('checkout_diagnosis');
       // $dikordance = $this->input->post('dikordance');
        $anatomopatologic_diagnosis = $this->input->post('anatomopatologic_diagnosis');
        $final_diagnosis = $this->input->post('final_diagnosis');
        $d_time = $this->input->post('d_time');
        $instruction = $this->input->post('instruction');
        $medicine_to_take = $this->input->post('medicine_to_take');
        $data = array();
        $data = array('date' => $d_time,
            'final_diagnosis' => $final_diagnosis,
            'anatomopatologic_diagnosis' => $anatomopatologic_diagnosis,
            //'dikordance' => $dikordance,
            'alloted_bed_id' => $alloted_bed_id,
            'doctor' => $doctor,
            'epicrisis' => $epicrisis,
            'checkout_state' => $checkout_state,
            'checkout_diagnosis' => $checkout_diagnosis,
            'instruction'=>$instruction,
            'medicine_to_take'=>$medicine_to_take
        );

        if (!empty($id)) {
            $this->bed_model->updateCheckout($id, $data);
            $inserted_id = $id;
            $data['message'] = array('message' => lang('updated'), 'title' => lang('updated'));
        } else {
            $this->bed_model->insertCheckout($data);
            $inserted_id = $this->db->insert_id();
            $data['message'] = array('message' => lang('added'), 'title' => lang('added'));
        }
        $data['checkout'] = $this->bed_model->getCheckoutdById($inserted_id);
        $d_time_array = array();
        $d_time_array = explode("-", $d_time);
        $d_timestamp = strtotime($d_time_array[0] . ' ' . $d_time_array[1]);
        $data_update = array('d_time' => $d_time, 'd_timestamp' => $d_timestamp);

        $this->bed_model->updateAllotment($alloted_bed_id, $data_update);
        echo json_encode($data);
    }

    public function getNurseInfo() {
// Search term
        $searchTerm = $this->input->post('searchTerm');

// Get users
        $response = $this->nurse_model->getNurseInfo($searchTerm);

        echo json_encode($response);
    }

    public function createMedicineInvoice() {
        $id = $this->input->get('id');
        $medicine_list = $this->bed_model->getMedicineAllotedByBedId($id);
        foreach ($medicine_list as $medicine) {
            if (empty($medicine->payment_id)) {
                $medicine_con[] = $medicine->medicine_id . '*' . $medicine->medicine_name . '*' . $medicine->s_price . '*' . $medicine->quantity . '*' . $medicine->total . '*' . $medicine->id. '*' . $medicine->medicine_pharmacy_id;
                $price[] = $medicine->total;
                // $quantity[] = $medicine->quantity;
                $medicine_id[] = $medicine->medicine_id;
                // $medicine_name[] = $medicine->medicine_name;
                //  $sale_price[] = $medicine->s_price;
                $ids[] = $medicine->id;
            }
        }
        if (!empty($medicine_id)) {
            // $length = count($medicine_id);
            $total = array_sum($price);
            $arr['ids'] = implode(",", $ids);
            /* for ($i = 0; $i < $length; $i++) {
              $medicine_con[] = $medicine_id[$i] . '*' . $medicine_name[$i] . '*' . $sale_price[$i] . '*' . $quantity[$i] . '*' . $price[$i].'*'.$ids[$i];
              } */
            $medicine_include = implode("#", $medicine_con);

            $data = array();
            $bed_alloted = $this->bed_model->getAllotmentById($id);
            $patient = $this->patient_model->getPatientById($bed_alloted->patient);
            $doctor = $this->doctor_model->getDoctorById($bed_alloted->doctor);
            $date = time();
            $date_string = date('d-m-Y');
            $data = array(
                'category_name' => $medicine_include,
                'patient' => $patient->id,
                'date' => $date,
                'amount' => $total,
                'doctor' => $bed_alloted->doctor,
                'gross_total' => $total,
                'status' => 'unpaid',
                'hospital_amount' => $total,
                'doctor_amount' => '0',
                'user' => $this->ion_auth->get_user_id(),
                'patient_name' => $patient->name,
                'patient_phone' => $patient->phone,
                'patient_address' => $patient->address,
                'doctor_name' => $doctor->name,
                'date_string' => $date_string,
                'payment_from' => 'admitted_patient_bed_medicine'
            );
            $this->finance_model->insertPayment($data);
            $inserted_id = $this->db->insert_id('payment');
            $data_update_medicine = array('payment_id' => $inserted_id);
            foreach ($ids as $id_bed_medicine) {
                $this->bed_model->updateMedicineAlloted($id_bed_medicine, $data_update_medicine);
            }
            $arr['message'] = array('message' => lang('invoice') . ' ' . lang('generated'), 'title' => lang('invoice') . ' ' . lang('generated'));
        } else {
            $arr['message'] = array('message' => lang('no_new_medicine_add'), 'title' => lang('no_new_medicine_add'));
        }
        echo json_encode($arr);
    }

    public function createServiceInvoice() {
        $id = $this->input->get('id');
        $service_list = $this->bed_model->getServicedByIdByDate($id);
        $previous_payment_ids = $service_list->payment_id;
        if (!empty($service_list)) {
            $price = explode("**", $service_list->price);
            $services = explode("**", $service_list->service);
            $i = 0;
            if (!empty($service_list->payment_id)) {
                $paymentid = explode(",", $service_list->payment_id);
                foreach ($paymentid as $key=>$payment) {
                    $payment_details = $this->finance_model->getPaymentById($payment);
                    $payment_cat = explode("#", $payment_details->category_name);
                    foreach ($payment_cat as $key=>$pay) {
                        $cat_name = explode("*", $pay);
                        $previous_invoice_service[] = $cat_name[0];
                    }
                }
            } else {
                $previous_invoice_service = [];
            }
            for ($i = 0; $i < count($services); $i++) {
                if (!in_array($services[$i], $previous_invoice_service)) {
                    $service_new[] = $services[$i] . '*' . $price[$i];
                    $arr['ids'] = $services[$i];
                }
                //$i++;
            }
            if (!empty($service_new)) {
                $service_implode = implode("#", $service_new);
                $total = array_sum($price);
                $bed_alloted = $this->bed_model->getAllotmentById($id);
                $patient = $this->patient_model->getPatientById($bed_alloted->patient);
                $doctor = $this->doctor_model->getDoctorById($bed_alloted->doctor);
                $date = time();
                $date_string = date('d-m-Y');
                $data = array(
                    'category_name' => $service_implode,
                    'patient' => $patient->id,
                    'date' => $date,
                    'amount' => $total,
                    'doctor' => $bed_alloted->doctor,
                    'gross_total' => $total,
                    'status' => 'unpaid',
                    'hospital_amount' => $total,
                    'doctor_amount' => '0',
                    'user' => $this->ion_auth->get_user_id(),
                    'patient_name' => $patient->name,
                    'patient_phone' => $patient->phone,
                    'patient_address' => $patient->address,
                    'doctor_name' => $doctor->name,
                    'date_string' => $date_string,
                    'payment_from' => 'admitted_patient_bed_service'
                );
                $this->finance_model->insertPayment($data);
                $inserted_id = $this->db->insert_id('payment');
                if (!empty($previous_payment_ids)) {
                    $new_payment_id = $previous_payment_ids . ',' . $inserted_id;
                } else {
                    $new_payment_id = $inserted_id;
                }
                $data = array('payment_id' => $new_payment_id);
                $this->bed_model->updateServices($service_list->id, $data);
                $arr['date'] = date('d');
                $arr['message'] = array('message' => lang('invoice') . ' ' . lang('generated'), 'title' => lang('invoice') . ' ' . lang('generated'));
            } else {
                  $arr['ids'] ='1';
                $arr['message'] = array('message' => lang('no_new_service_add'), 'title' => lang('no_new_service_add'));
            }
        } else {
              $arr['ids'] ='1';
            $arr['message'] = array('message' => lang('no_new_service_add'), 'title' => lang('no_new_service_add'));
        }

        echo json_encode($arr);
    }
    function dischargeReport(){
        $bed_id=$this->input->get('id');
        $data['discharge']=$this->bed_model->getCheckoutByBedId($bed_id);
        
        $data['bed']=$this->bed_model->getBedAllotmentsById($data['discharge']->alloted_bed_id);
        $data['patient']=$this->patient_model->getPatientbyId($data['bed']->patient);
        $data['doctor']=$this->doctor_model->getDoctorbyId($data['discharge']->doctor); 
        $data['settings']=$this->settings_model->getSettings();
        $data['redirectlink'] = '';
        $data['redirect'] = '';
        $this->load->view('home/dashboard'); // just the header file
        $this->load->view('discharge_report', $data);
        $this->load->view('home/footer'); // just the footer fi
    }
    function download() {
        $bed_id=$this->input->get('id');
        $data['discharge']=$this->bed_model->getCheckoutByBedId($bed_id);
        
        $data['bed']=$this->bed_model->getBedAllotmentsById($data['discharge']->alloted_bed_id);
        $data['patient']=$this->patient_model->getPatientbyId($data['bed']->patient);
        $data['doctor']=$this->doctor_model->getDoctorbyId($data['discharge']->doctor); 
        $data['settings']=$this->settings_model->getSettings();
        error_reporting(0);
        $data['redirect'] = 'download';
        $mpdf = new \Mpdf\Mpdf(['format' => 'A4']);
    //     $mpdf->SetHTMLFooter('
    //   <div style="text-align:right;font-weight: bold; 
    // font-size: 8pt;
    // font-style: italic;">
    //  ' . lang('user') . ' : ' . $this->ion_auth->user($data['payment']->user)->row()->username . '
    //   </div>', 'O');

        $html = $this->load->view('discharge_report', $data, true);

        $mpdf->WriteHTML($html);

        $filename = "discharge-report--00" . $$data['patient']->id . ".pdf";
        $mpdf->Output($filename, 'D');
    }
}

/* End of file bed.php */
/* Location: ./application/modules/bed/controllers/bed.php */
