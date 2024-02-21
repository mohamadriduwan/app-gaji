<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <hr>

    <?= form_error('email', '<div class="alert alert-danger" role="alert">', '</div>'); ?>
    <?= $this->session->flashdata('message'); ?>


    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h5 class="m-0 font-weight-bold text-primary">Honor Jabatan</h5>
                <a href="" class="btn btn-primary btn-icon-split btn-sm" data-toggle="modal" data-target="#tambahHonorJabatan">
                    <span class="icon text-white-50">
                        <i class="fas fa-plus"></i>
                    </span>
                    <span class="text">Tambah Jabatan</span>
                </a>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>KODE</th>
                            <th>NAMA</th>
                            <th>HONOR</th>
                            <th>keterangan</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1 ?>
                        <?php foreach ($jabatan as $j) : ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $j['id']; ?></td>
                                <td><?= $j['nama_jabatan']; ?></td>
                                <td><?= $j['honor']; ?></td>
                                <td> <?= $j['keterangan']; ?> </td>
                                <td>
                                    <a href="#" class="btn btn-info btn-icon-split btn-sm" data-toggle="modal" data-target="#editJabatan<?= $j['id']; ?>">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-edit"></i>
                                        </span>
                                        <span class="text">Edit</span>
                                    </a>
                                    <a href="#" class="btn btn-danger btn-icon-split btn-sm" data-toggle="modal" data-target="#deleteJabatan<?= $j['id']; ?>">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-trash-alt"></i>
                                        </span>
                                        <span class="text">Delete</span>
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>





    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <div class="d-sm-flex align-items-center justify-content-between">
                <h5 class="m-0 font-weight-bold text-primary">Honor Dynamis</h5>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>KODE</th>
                            <th>NAMA</th>
                            <th>HONOR</th>
                            <th>keterangan</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1 ?>
                        <?php foreach ($honor as $h) : ?>
                            <tr>
                                <td><?= $no++; ?></td>
                                <td><?= $h['id']; ?></td>
                                <td><?= $h['nama_honor']; ?></td>
                                <td><?= $h['nominal']; ?></td>
                                <td><?= $h['keterangan']; ?></td>
                                <td>
                                    <a href="#" class="btn btn-info btn-icon-split btn-sm" data-toggle="modal" data-target="#editHonorDynamis<?= $h['id']; ?>">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-edit"></i>
                                        </span>
                                        <span class="text">Edit</span>
                                    </a>
                                </td>
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

<!-- Edit Modal -->
<?php foreach ($honor as $h) : ?>
    <div class="modal fade" id="editHonorDynamis<?= $h['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="editHonorDynamisLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editHonorDynamisLabel">Rubah Honor <?= $h['nama_honor']; ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= base_url('penggajian/editHonor'); ?>" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="hidden" class="form-control form-control-user" id="id" name="id" value="<?= $h['id']; ?>" required>
                            <input type="number" class="form-control form-control-user" id="nominal" name="nominal" placeholder="Nominal" value="<?= $h['nominal']; ?>" required>
                            <?= form_error('nominal', '<small class="text-danger pl-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach; ?>


<!-- Modal -->
<div class="modal fade" id="tambahHonorJabatan" tabindex="-1" role="dialog" aria-labelledby="tambahHonorJabatanLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="tambahHonorJabatanLabel">Tambah Honor Jabatan</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="<?= base_url('penggajian/addHonorJabatan'); ?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" class="form-control form-control-user" id="namajabatan" name="namajabatan" placeholder="Nama Jabatan" value="<?= set_value('namajabatan'); ?>" required>
                        <?= form_error('namajabatan', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control form-control-user" id="nominal" name="nominal" placeholder="Nominal Honor" value="<?= set_value('nominal'); ?>" required>
                        <?= form_error('nominal', '<small class="text-danger pl-3">', '</small>'); ?>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Add</button>
                </div>
            </form>
        </div>
    </div>
</div>

<?php foreach ($jabatan as $j) : ?>
    <!-- Modal -->
    <div class="modal fade" id="editJabatan<?= $j['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="editJabatanLabael" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="editJabatanLabel">Tambah Honor Jabatan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="<?= base_url('penggajian/editHonorJabatan'); ?>" method="post">
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="hidden" class="form-control form-control-user" id="namajabatan" name="id" value="<?= $j['id']; ?>" required>
                            <input type="text" class="form-control form-control-user" id="namajabatan" name="namajabatan" placeholder="Nama Jabatan" value="<?= $j['nama_jabatan']; ?>" required>
                            <?= form_error('namajabatan', '<small class="text-danger pl-3">', '</small>'); ?>
                        </div>
                        <div class="form-group">
                            <input type="number" class="form-control form-control-user" id="nominal" name="nominal" placeholder="Nominal Honor" value="<?= $j['honor']; ?>" required>
                            <?= form_error('nominal', '<small class="text-danger pl-3">', '</small>'); ?>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach; ?>


<?php foreach ($jabatan as $j) : ?>
    <div class="modal fade" id="deleteJabatan<?= $j['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="deleteJabatanLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteJabatanLabel">Hapus Jabatan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <form action="<?= base_url('penggajian/deleteJabatan'); ?>" method="post">
                    <div class="modal-body">
                        <p>Anda yakin menghapus Jabatan <strong><?= $j['nama_jabatan']; ?></strong>?</p>
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="id" name="id" value="<?= $j['id']; ?>">
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tidak</button>
                        <button type="submit" class="btn btn-primary">Ya</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<?php endforeach; ?>