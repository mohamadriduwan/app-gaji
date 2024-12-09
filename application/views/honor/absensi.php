<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <hr>

    <div class="card mb-3">
        <div class="card-header bg-primary text-white">
            Filter Data Absensi
        </div>
        <div class="card-body">
            <form class="form-inline">
                <div class="form-group mb-2">
                    <label for="staticEmail2">Bulan</label>
                    <select class="form-control ml-3" name="bulan">
                        <option value=""> Pilih Bulan </option>
                        <option value="01">Januari</option>
                        <option value="02">Februari</option>
                        <option value="03">Maret</option>
                        <option value="04">April</option>
                        <option value="05">Mei</option>
                        <option value="06">Juni</option>
                        <option value="07">Juli</option>
                        <option value="08">Agustus</option>
                        <option value="09">September</option>
                        <option value="10">Oktober</option>
                        <option value="11">November</option>
                        <option value="12">Desember</option>
                    </select>
                </div>
                <div class="form-group mb-2 ml-5">
                    <label for="staticEmail2">Tahun</label>
                    <select class="form-control ml-3" name="tahun">
                        <option value=""> Pilih Tahun </option>
                        <?php $tahun = date('Y');
                        for ($i = 2020; $i < $tahun + 5; $i++) { ?>
                            <option value="<?php echo $i ?>"><?php echo $i ?></option>
                        <?php } ?>
                    </select>
                    </select>
                </div>

                <button type="submit" class="btn btn-primary mb-2 ml-auto"><i class="fas fa-eye"></i> Tampilkan Data</button>
                <a href="<?php echo base_url('admin/data_absensi/input_absensi') ?>" class="btn btn-success mb-2 ml-3"><i class="fas fa-plus"></i> Input Kehadiran</a>
            </form>
        </div>
    </div>
</div>

<?php
if ((isset($_GET['bulan']) && $_GET['bulan'] != '') && (isset($_GET['tahun']) && $_GET['tahun'] != '')) {
    $bulan = $_GET['bulan'];
    $tahun = $_GET['tahun'];
    $bulantahun = $bulan . $tahun;
} else {
    $bulan = date('m');
    $tahun = date('Y');
    $bulantahun = $bulan . $tahun;
}
?>

<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header bg-primary text-white">
            Menampilkan Data Kehadiran Pegawai Bulan: <span class="font-weight-bold"><?php echo $bulanlaporan[$bulan]; ?></span> Tahun: <span class="font-weight-bold"><?php echo $tahun ?></span>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">
                        <tr>
                            <td class="text-center">No</td>
                            <td class="text-center">KODE</td>
                            <td class="text-center">NAMA</td>
                            <td class="text-center">JUMLAH MASUK</td>
                            <td class="text-center">JUMLAH PULANG</td>
                            <td class="text-center">KEHADIRAN</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($gaji as $g) :
                            if ($g['bulan'] . $g['tahun'] == $bulanlaporan[$bulan] . $tahun) : ?>
                                <?php $jumlahhadir[] = $g['kode']; ?>
                        <?php
                            endif;
                        endforeach; ?>
                        <?php foreach ($gaji as $g) :
                            if ($g['bulan'] . $g['tahun'] == $bulanlaporan[$bulan] . $tahun && $g['jam_pulang'] !== "05:00:00 PM") : ?>
                                <?php $jumlahpulang[] = $g['kode']; ?>
                        <?php
                            endif;
                        endforeach; ?>
                        <?php if (isset($jumlahhadir)) : ?>
                            <?php
                            $datahadir = array_count_values($jumlahhadir);
                            $datapulang = array_count_values($jumlahpulang);
                            ?>
                            <?php $no = 1;
                            foreach ($guru as $g) : ?>
                                <tr>
                                    <td class="text-center"><?= $no++; ?></td>
                                    <td class="text-center"><?= $g['kode']; ?></td>
                                    <td class="text-left"><?= $g['nama']; ?></td>
                                    <td class="text-center"><?php
                                                            if (isset($datahadir[$g['kode']])) {
                                                                $datahadirkode = $datahadir[$g['kode']];
                                                            } else {
                                                                $datahadirkode  = 0;
                                                            };
                                                            echo $datahadirkode; ?></td>
                                    <td class="text-center"><?php
                                                            if (isset($datapulang[$g['kode']])) {
                                                                $datapulangkode = $datapulang[$g['kode']];
                                                            } else {
                                                                $datapulangkode = 0;
                                                            };
                                                            echo $datapulangkode; ?></td>
                                    <td class="text-center"><?= $datapulangkode; ?></td>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <?php if (!isset($jumlahpulang)) : ?>
        <span class="badge badge-danger"><i class="fas fa-info-circle"></i> Data masih kosong, silakan input data kehadiran pada bulan dan tahun yang anda pilih</span>
    <?php endif; ?>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->