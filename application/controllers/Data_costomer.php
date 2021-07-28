<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Data_costomer extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        //load library
        $this->load->library(['template', 'form_validation']);
        //load Model
        $this->load->model('m_costomer');

        header('Last-Modified:' . gmdate('D, d M Y H:i:s') . 'GMT');
        header('Cache-Control: no-cache, must-revalidate, max-age=0');
        header('Cache-Control: post-check=0, pre-check=0', false);
        header('Pragma: no-cache');
    }

    public function index()
    {
        $this->is_admin();

        $data = [
            'title' => 'Data Costomer'
        ];

        $this->template->kasir('costomer/index', $data);
    }

    public function tambah_costomer()
    {
        $this->is_admin();
        //ketika user mengklik submit
        if ($this->input->post('submit', TRUE) == 'submit') {
            //validasi form
            $this->form_validation->set_rules(
                'nama_costomer',
                'Nama Costomer',
                "required|min_length[2]|max_length[100]|regex_match[/^[A-Z a-z.0-9']+$/]",
                array(
                    'required' => '{field} wajib diisi',
                    'min_length' => '{field} minimal 2 karakter',
                    'max_length' => '{field} maksimal 100 karakter',
                    'regex_match' => '{field} tidak valid'
                )
            );

            if ($this->input->post('hp', TRUE) != '') {
                $this->form_validation->set_rules(
                    'hp',
                    'Nomor Telp.',
                    "required|min_length[8]|max_length[15]|regex_match[/^[0-9]+$/]",
                    array(
                        'required' => '{field} wajib diisi',
                        'min_length' => '{field} minimal 8 karakter',
                        'max_length' => '{field} maksimal 15 karakter',
                        'regex_match' => '{field} hanya boleh angka'
                    )
                );
            }

            $this->form_validation->set_rules(
                'alamat',
                'Alamat',
                "required|min_length[5]|max_length[255]|regex_match[/^[A-Z a-z.0-9-,']+$/]",
                array(
                    'required' => '{field} wajib diisi',
                    'min_length' => '{field} minimal 5 karakter',
                    'max_length' => '{field} maksimal 255 karakter',
                    'regex_match' => 'Data {field} yang anda masukkan tidak valid'
                )
            );

            //jika validasi berhasil maka lakukan proses penyimpanan
            if ($this->form_validation->run() == TRUE) {
                //tampung data ke variabel
                $id = 'ID' . time();
                $nama = $this->security->xss_clean($this->input->post('nama_costomer', TRUE));
                $telp = $this->security->xss_clean($this->input->post('hp', TRUE));
                $alamat = $this->security->xss_clean($this->input->post('alamat', TRUE));

                $data_simpan = [
                    'id_costomer' => $id,
                    'nama_costomer' => $nama,
                    'alamat' => $alamat,
                    'telp' => $telp
                ];

                $simpan = $this->m_costomer->save('tbl_costomer', $data_simpan);

                if ($simpan) {
                    $this->session->set_flashdata('success', 'Data Costomer berhasil ditambahkan..');

                    redirect('costomer');
                }
            }
        }

        $data = [
            'title' => 'Tambah Costomer'
        ];

        $this->template->kasir('costomer/form_input', $data);
    }

    public function edit_costomer($id)
    {
        $this->is_admin();

        //ketika user mengklik submit
        if ($this->input->post('submit', TRUE) == 'submit') {
            //validasi form
            $this->form_validation->set_rules(
                'idCostomer',
                'ID Costomer',
                'required|min_length[10]',
                array(
                    'required' => '{field} wajib diisi',
                    'min_length' => '{field} tidak valid'
                )
            );

            $this->form_validation->set_rules(
                'nama_costomer',
                'Nama Costomer',
                "required|min_length[2]|max_length[100]|regex_match[/^[A-Z a-z.0-9']+$/]",
                array(
                    'required' => '{field} wajib diisi',
                    'min_length' => '{field} minimal 2 karakter',
                    'max_length' => '{field} maksimal 100 karakter',
                    'regex_match' => '{field} tidak valid'
                )
            );

            if ($this->input->post('hp', TRUE) != '') {
                $this->form_validation->set_rules(
                    'hp',
                    'Nomor Telp.',
                    "required|min_length[8]|max_length[15]|regex_match[/^[0-9]+$/]",
                    array(
                        'required' => '{field} wajib diisi',
                        'min_length' => '{field} minimal 8 karakter',
                        'max_length' => '{field} maksimal 15 karakter',
                        'regex_match' => '{field} hanya boleh angka'
                    )
                );
            }

            $this->form_validation->set_rules(
                'alamat',
                'Alamat',
                "required|min_length[5]|max_length[255]|regex_match[/^[A-Z a-z.0-9-,']+$/]",
                array(
                    'required' => '{field} wajib diisi',
                    'min_length' => '{field} minimal 5 karakter',
                    'max_length' => '{field} maksimal 255 karakter',
                    'regex_match' => 'Data {field} yang anda masukkan tidak valid'
                )
            );

            //jika validasi berhasil maka lakukan proses penyimpanan
            if ($this->form_validation->run() == TRUE) {
                //tampung data ke variabel
                $idCostomer = $this->security->xss_clean($this->input->post('idCostomer', TRUE));
                $nama = $this->security->xss_clean($this->input->post('nama_costomer', TRUE));
                $telp = $this->security->xss_clean($this->input->post('hp', TRUE));
                $alamat = $this->security->xss_clean($this->input->post('alamat', TRUE));

                $data_update = [
                    'nama_costomer' => $nama,
                    'alamat' => $alamat,
                    'telp' => $telp
                ];

                $up = $this->m_costomer->update('tbl_costomer', $data_update, ['id_costomer' => $idCostomer]);

                if ($up) {
                    $this->session->set_flashdata('success', 'Data Costomer berhasil diperbarui..');

                    redirect('costomer');
                }
            }
        }

        //ambil data
        $where = [
            'id_costomer' => $this->security->xss_clean($id)
        ];
        $getData = $this->m_costomer->getData('tbl_costomer', $where);
        //cek jumlah data
        if ($getData->num_rows() != 1) {
            redirect('costomer');
        }

        $data = [
            'title' => 'Edit Costomer',
            'data' => $getData->row()
        ];

        $this->template->kasir('costomer/form_edit', $data);
    }

    public function hapus_data()
    {
        //cek login
        $this->is_admin();
        //validasi request ajax
        if ($this->input->is_ajax_request()) {
            //validasi
            $this->form_validation->set_rules(
                'id',
                'ID Costomer',
                "required|min_length[10]",
                array(
                    'required' => '{field} tidak valid',
                    'min_length' => 'Isi {field} tidak valid'
                )
            );

            if ($this->form_validation->run() == TRUE) {
                //tangkap rowid
                $id = $this->security->xss_clean($this->input->post('id', TRUE));

                $hapus = $this->m_costomer->delete('tbl_costomer', ['id_costomer' => $id]);

                if ($hapus) {
                    echo json_encode(['message' => 'success']);
                } else {
                    echo json_encode(['message' => 'failed']);
                }
            } else {
                echo json_encode(['message' => 'failed']);
            }
        } else {
            redirect('dashboard');
        }
    }

    public function ajax_costomer()
    {
        $this->is_admin();
        //cek apakah request berupa ajax atau bukan, jika bukan maka redirect ke home
        if ($this->input->is_ajax_request()) {
            //ambil list data
            $list = $this->m_costomer->get_datatables();
            //siapkan variabel array
            $data = array();
            $no = $_POST['start'];

            foreach ($list as $i) {

                $no++;
                $row = array();
                $row[] = $no;
                $row[] = $i->id_costomer;
                $row[] = $i->nama_costomer;
                $row[] = $i->alamat;
                $row[] = ($i->telp != '') ? $i->telp : '-';
                $row[] = '<a href="' . site_url('costomer/' . $i->id_costomer) . '" class="btn btn-warning btn-sm text-white">Edit</a>
                <button type="button" class="btn btn-danger btn-sm"onclick="hapus_costomer(\'' . $i->id_costomer . '\')">Hapus</button>';

                $data[] = $row;
            }

            $output = array(
                "draw" => $_POST['draw'],
                "recordsTotal" => $this->m_costomer->count_all(),
                "recordsFiltered" => $this->m_costomer->count_filtered(),
                "data" => $data
            );
            //output to json format
            echo json_encode($output);
        } else {
            redirect('dashboard');
        }
    }

    private function is_admin()
    {
        if (!$this->session->userdata('level') || $this->session->userdata('level') != 'admin') {
            redirect('dashboard');
        }
    }
}
