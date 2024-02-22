<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penggajian_model extends CI_Model
{
    public function getDatJTM()
    {
        $query = "SELECT `data_guru`.*, `data_jtm`.*
                  FROM `data_guru` RIGHT JOIN `data_jtm`
                  ON `data_guru`.`kode` = `data_jtm`.`id_guru`
                ";
        return $this->db->query($query)->result_array();
    }

    public function getDataJabatan($id)
    {
        $query = "SELECT `jabatan_guru`.*, `data_jabatan`.*
                  FROM `jabatan_guru` RIGHT JOIN `data_jabatan`
                  ON `jabatan_guru`.`id_jabatan` = `data_jabatan`.`id`
                  WHERE `jabatan_guru`.`id_pegawai` = $id
                ";
        return $this->db->query($query)->result_array();
    }
}
