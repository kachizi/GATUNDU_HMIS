<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Bed_model extends CI_model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function insertBed($data) {
        $this->db->insert('bed', $data);
    }

    function getBed() {
        $query = $this->db->get('bed');
        return $query->result();
    }

    function getBedWithoutSearch($order, $dir) {
        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $query = $this->db->get('bed');
        return $query->result();
    }

    function getBedBySearch($search, $order, $dir) {
        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $this->db->like('id', $search);
        $this->db->or_like('bed_id', $search);
        $this->db->or_like('description', $search);
        $query = $this->db->get('bed');
        return $query->result();
    }

    function getBedByLimit($limit, $start, $order, $dir) {
        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $this->db->limit($limit, $start);
        $query = $this->db->get('bed');
        return $query->result();
    }

    function getBedByLimitBySearch($limit, $start, $search, $order, $dir) {
        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $this->db->like('id', $search);
        $this->db->or_like('bed_id', $search);
        $this->db->or_like('description', $search);
        $this->db->limit($limit, $start);
        $query = $this->db->get('bed');
        return $query->result();
    }

    function getBedById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('bed');
        return $query->row();
    }

    function updateBed($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('bed', $data);
    }

    function updateBedByBedId($bed_id, $data) {
        $this->db->where('bed_id', $bed_id);
        $this->db->update('bed', $data);
    }

    function insertBedCategory($data) {

        $this->db->insert('bed_category', $data);
    }

    function getBedCategory() {
        $query = $this->db->get('bed_category');
        return $query->result();
    }

    function getBedAllotmentsByPatientId($id) {
        $this->db->where('patient', $id);
        $query = $this->db->get('alloted_bed');
        return $query->result();
    }

    function getBedCategoryById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('bed_category');
        return $query->row();
    }

    function updateBedCategory($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('bed_category', $data);
    }

    function deleteBed($id) {
        $this->db->where('id', $id);
        $this->db->delete('bed');
    }

    function deleteBedCategory($id) {
        $this->db->where('id', $id);
        $this->db->delete('bed_category');
    }

    function insertAllotment($data) {
        $this->db->insert('alloted_bed', $data);
    }

    function getAllotment() {
        $query = $this->db->get('alloted_bed');
        return $query->result();
    }

    function getAllotmentWithoutSearch($order, $dir) {
        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $query = $this->db->get('alloted_bed');
        return $query->result();
    }

    function getBedAllotmentBySearch($search, $order, $dir) {
        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $this->db->like('id', $search);
        $this->db->or_like('bed_id', $search);
        $this->db->or_like('patientname', $search);
        $query = $this->db->get('alloted_bed');
        return $query->result();
    }

    function getBedAllotmentByLimit($limit, $start, $order, $dir) {
        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $this->db->limit($limit, $start);
        $query = $this->db->get('alloted_bed');
        return $query->result();
    }

    function getBedAllotmentByLimitBySearch($limit, $start, $search, $order, $dir) {

        if ($order != null) {
            $this->db->order_by($order, $dir);
        } else {
            $this->db->order_by('id', 'desc');
        }
        $this->db->like('id', $search);

        $this->db->or_like('bed_id', $search);
        $this->db->or_like('patientname', $search);

        $this->db->limit($limit, $start);
        $query = $this->db->get('alloted_bed');
        return $query->result();
    }

    function getAllotmentById($id) {
        $this->db->where('id', $id);
        $query = $this->db->get('alloted_bed');
        return $query->row();
    }

    function updateAllotment($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('alloted_bed', $data);
    }

    function deleteBedAllotment($id) {
        $this->db->where('id', $id);
        $this->db->delete('alloted_bed');
    }

    function getNotBedAvailableList($date, $category) {

        $array = array('bed_id' => $category, 'a_timestamp <=' => $date, 'd_timestamp >=' => $date);
        $this->db->where($array);
        return $this->db->get('alloted_bed')->result();
       
    }
 function getNotBedAvailableListFromEdit($date, $category,$id) {

        $array = array('bed_id' => $category, 'a_timestamp <=' => $date, 'd_timestamp >=' => $date,'id !='=>$id);
        $this->db->where($array);
        return $this->db->get('alloted_bed')->result();
       
    }
 function getBedByCategory($id) {

        return $this->db->where('category', $id)
                        ->get('bed')->result();
    }

    function getBloodGroup() {
        return $this->db->get('blood_group')->result();
    }

    function getDailyProgressByBedId($id) {
        return $this->db->where('alloted_bed_id', $id)
                       
                        ->get('daily_progress')->result();
    }

    function getDailyProgressById($id) {
        return $this->db->where('id', $id)
                       
                        ->get('daily_progress')->row();
    }

    function insertDailyProgress($data) {
        
     //   $data2 = array_merge($data, $data1);
        //  print_r($data);
        //      die();
        $this->db->insert('daily_progress', $data);
    }

    function updateDailyProgress($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('daily_progress', $data);
    }
   function insertMedicineAllotedPatient($data) {
      
      //  $data2 = array_merge($data, $data1);
        $this->db->insert('bed_medicine', $data);
    }
     function getMedicineAllotedPatientById($id) {
        return $this->db->where('id', $id)
                      
                        ->get('bed_medicine')->row();
    }
     function updateMedicineAlloted($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('bed_medicine', $data);
    }
    function getMedicineAllotedByBedId($id) {
        return $this->db->where('alloted_bed_id', $id)
                       
                        ->get('bed_medicine')->result();
    }
    function deleteMedicine($id) {
        $this->db->where('id', $id);
        $this->db->delete('bed_medicine');
    }
    function getServicesByDate($date){
        return $this->db->where('date',$date)       
                ->get('bed_service')->row();
    }
    
    function updateServices($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('bed_service', $data);
    }
     
       function insertServices($data) {
      
        //$data2 = array_merge($data, $data1);
        $this->db->insert('bed_service', $data);
    }
      function getServiceAllotedByBedId($id) {
        return $this->db->where('alloted_bed_id', $id)
                       
                        ->get('bed_service')->result();
    }
    function getServicedById($id) {
        return $this->db->where('id', $id)
                       
                        ->get('bed_service')->row();
    }
     function deleteServices($id) {
        $this->db->where('id', $id);
        $this->db->delete('bed_service');
    }
       function insertCheckout($data) {
       
      //  $data2 = array_merge($data, $data1);
        $this->db->insert('bed_checkout', $data);
    }
    function updateCheckout($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('bed_checkout', $data);
    }
     function getCheckoutdById($id) {
        return $this->db->where('id', $id)
                       
                        ->get('bed_checkout')->row();
    }
     function getCheckoutByBedId($id) {
        return $this->db->where('alloted_bed_id', $id)
                       
                        ->get('bed_checkout')->row();
    }
     function getAllotedBedByBedIdByDate($bed_id,$date) {
       
        $this->db->where('bed_id', $bed_id);
        $this->db->where('a_timestamp <=', $date);
        
          //$this->db->limit('1');
        $query = $this->db->get('alloted_bed');
        return $query->result();
    }
     function getBedAllotmentsById($id) {
       
        $this->db->where('id', $id);
        $query = $this->db->get('alloted_bed');
        return $query->row();
    }
    function getServicedByIdByDate($id) {
        return $this->db->where('alloted_bed_id', $id)
                       ->where('date',date('d-m-Y'))
                        ->get('bed_service')->row();
    }
}
