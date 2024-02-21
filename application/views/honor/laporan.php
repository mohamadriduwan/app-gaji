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
                        <?php foreach ($guru as $g) : ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $g['kode']; ?></td>
                                <td><?= $g['nama']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
                                <td><?= $g['tmt']; ?></td>
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