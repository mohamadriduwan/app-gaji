<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <hr>

    <?= form_error('email', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
    <?= $this->session->flashdata('message'); ?>

    <a href="" class="btn btn-primary btn-icon-split mb-3" data-toggle="modal" data-target="#newRoleModal">
        <span class="icon text-white-50">
            <i class="fas fa-plus"></i>
        </span>
        <span class="text">Tambah Guru</span>
    </a>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $title; ?></h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>KODE</th>
                            <th>NAMA</th>
                            <th>JTM</th>
                            <th>HR GURU</th>
                            <th>JABATAN</th>
                            <th>HR JABATAN</th>
                            <th>PENGABDIAN</th>
                            <th>TUNJANGAN PENGABDIAN</th>
                            <th>PRESENSI</th>
                            <th>HR TRANSPORT</th>
                            <th>HR TOTAL</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1 ?>
                        <?php foreach ($datajtm as $g) : ?>
                            <?php
                            $jabatan = $this->gajimodel->getDataJabatan($g['kode']);
                            ?>

                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $g['kode']; ?></td>
                                <td><?= $g['nama']; ?></td>
                                <td><?= $g['jumlah_jtm']; ?></td>
                                <td><?= $g['jumlah_jtm'] * $honor_guru['nominal']; ?></td>
                                <td>
                                    <?php foreach ($jabatan as $j) : ?>
                                        <?= $j['nama_jabatan']; ?>,
                                        <?php $gajian[$g['kode']][] = $j['honor']; ?>
                                    <?php endforeach; ?>
                                </td>
                                <td>
                                    <?php if (isset($gajian[$g['kode']])) {
                                        echo array_sum($gajian[$g['kode']]);
                                    } else {
                                    }; ?>
                                </td>
                                <td>
                                    <?php
                                    $tanggal_lahir = new DateTime($g['tmt']);
                                    $sekarang = new DateTime("today");
                                    if ($tanggal_lahir > $sekarang) {
                                        $thn = "0";
                                        $bln = "0";
                                        $tgl = "0";
                                    }
                                    $thn = $sekarang->diff($tanggal_lahir)->y;
                                    $bln = $sekarang->diff($tanggal_lahir)->m;
                                    $tgl = $sekarang->diff($tanggal_lahir)->d;
                                    echo $thn . " tahun " . $bln . " bulan " . $tgl . " hari";
                                    ?>
                                </td>
                                <td><?= $thn * $honor_pengabdian['nominal']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->