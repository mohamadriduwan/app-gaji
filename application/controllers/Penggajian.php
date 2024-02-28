<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Penggajian extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    is_logged_in();

    $this->load->model('Penggajian_model', 'gajimodel');
  }


  // Awal Data Guru
  public function dataguru()
  {
    $data['title'] = 'Data Guru';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $data['guru'] = $this->db->get('data_guru')->result_array();
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('honor/dataguru', $data);
    $this->load->view('templates/footer');
  }

  public function tambahGuru()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('nama', 'Nama', 'required|trim');
    $this->form_validation->set_rules('tmt', 'tmt', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Gagal !</strong> Isi data masih ada yang kosong
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>');

      redirect('honor/dataguru');
    } else {

      $data = [
        'kode' => $this->input->post('kode'),
        'nama' => htmlspecialchars($this->input->post('nama', true)),
        'tmt' => $this->input->post('tmt')
      ];
      $this->db->insert('data_guru', $data);

      $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Berhasil !</strong> Data Guru berhasil ditambahkan!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>');
      redirect('penggajian/dataguru');
    }
  }

  public function deleteGuru()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->db->delete('data_guru', ['id' => $this->input->post('id')]);

    $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Berhasil !</strong> Data Guru sudah diHapus!
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>');
    redirect('penggajian/dataguru');
  }

  // Akhir Data Guru

  // Awal Data Honor
  public function datahonor()
  {
    $data['title'] = 'Data Honor';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $data['jabatan'] = $this->db->get('data_jabatan')->result_array();
    $data['honor'] = $this->db->get('honor_dynamis')->result_array();
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('honor/datahonor', $data);
    $this->load->view('templates/footer');
  }


  public function editHonor()
  {

    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('nominal', 'Nominal', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
      <strong>Gagal !</strong> Data gagal Diedit!
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>');
      redirect('penggajian/datahonor');
    } else {
      $id = $this->input->post('id');
      $nominal = $this->input->post('nominal');

      $this->db->set('nominal', $nominal);
      $this->db->where('id', $id);
      $this->db->update('honor_dynamis');

      $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Berhasil !</strong> Data Honor sudah diEdit!
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>');
      redirect('penggajian/datahonor');
    }
  }

  public function addHonorJabatan()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('namajabatan', 'namajabatan', 'required|trim');
    $this->form_validation->set_rules('nominal', 'nominal', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Gagal !</strong> Isi data masih ada yang kosong
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>');

      redirect('penggajian/datahonor');
    } else {

      $data = [
        'nama_jabatan' => htmlspecialchars($this->input->post('namajabatan', true)),
        'honor' => $this->input->post('nominal'),
        'keterangan' => "Per Bulan"
      ];
      $this->db->insert('data_jabatan', $data);

      $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Berhasil !</strong> Data Jabatan berhasil ditambahkan!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>');
      redirect('penggajian/datahonor');
    }
  }

  public function editHonorJabatan()
  {

    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('namajabatan', 'namajabatan', 'required|trim');
    $this->form_validation->set_rules('nominal', 'nominal', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
      <strong>Gagal !</strong> Data gagal Diedit!
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>');
      redirect('penggajian/datahonor');
    } else {
      $id = $this->input->post('id');
      $namajabatan = $this->input->post('namajabatan');
      $nominal = $this->input->post('nominal');
      $update = [
        'nama_jabatan' => $namajabatan,
        'honor' => $nominal
      ];
      $this->db->where('id', $id);
      $this->db->update('data_jabatan', $update);

      $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
        <strong>Berhasil !</strong> Data Honor sudah diEdit!
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>');
      redirect('penggajian/datahonor');
    }
  }

  public function deleteJabatan()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->db->delete('data_jabatan', ['id' => $this->input->post('id')]);

    $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        <strong>Berhasil !</strong> Data Jabatan sudah diHapus!
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>');
    redirect('penggajian/datahonor');
  }
  // Akhir Data Honor

  // Awal Data JTM

  public function datajtm()
  {
    $data['title'] = 'Data JTM';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $data['guru'] = $this->db->get('data_guru')->result_array();

    $data['datajtm'] = $this->gajimodel->getDatJTM();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('honor/datajtm', $data);
    $this->load->view('templates/footer');
  }

  public function tambahJTM()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $this->form_validation->set_rules('guru', 'guru', 'required|trim');
    $this->form_validation->set_rules('jtm', 'jtm', 'required|trim');

    if ($this->form_validation->run() == false) {
      $this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
                <strong>Gagal !</strong> Isi data masih ada yang kosong
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>');

      redirect('penggajian/datajtm');
    } else {

      $data = [
        'id_guru' => $this->input->post('guru'),
        'jumlah_jtm' => $this->input->post('jtm')
      ];
      $this->db->replace('data_jtm', $data);

      $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Berhasil !</strong> Data JTM berhasil ditambahkan!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>');
      redirect('penggajian/datajtm');
    }
  }
  // Akhir Data JTM

  // Awal Laporan
  public function laporan()
  {
    $data['title'] = 'Laporan';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $data['datajtm'] = $this->gajimodel->getDatJTM();
    $data['honor_guru'] = $this->db->get_where('honor_dynamis', ['id' => 1])->row_array();
    $data['honor_transport'] = $this->db->get_where('honor_dynamis', ['id' => 2])->row_array();
    $data['honor_pengabdian'] = $this->db->get_where('honor_dynamis', ['id' => 2])->row_array();

    $data['guru'] = $this->db->get('data_guru')->result_array();
    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('honor/laporan', $data);
    $this->load->view('templates/footer');
  }

  // Akhir Laporan





  public function jabatan($id)
  {
    $data['title'] = 'Jabatan';
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();

    $data['jabatan'] = $this->gajimodel->getDataJabatan($id);
    $data['datajabatan'] = $this->db->get('data_jabatan')->result_array();

    $data['jtm'] = $this->db->get_where('data_jtm', ['id_guru' => $id])->row_array();
    $data['guru'] = $this->db->get_where('data_guru', ['kode' => $id])->row_array();

    $this->load->view('templates/header', $data);
    $this->load->view('templates/sidebar', $data);
    $this->load->view('templates/topbar', $data);
    $this->load->view('honor/jabatan', $data);
    $this->load->view('templates/footer');
  }

  public function tambahJabatan()
  {
    $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();


    $data = [
      'id_pegawai' => $this->input->post('kode'),
      'id_jabatan' => $this->input->post('jabatan'),
      'keterangan' => 'Per Bulan'
    ];
    $this->db->insert('jabatan_guru', $data);

    $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Berhasil !</strong> Data JTM berhasil ditambahkan!
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>');
    redirect('penggajian/jabatan/' . $data['id_pegawai']);
  }
}
