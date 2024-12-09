<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <hr>

    <div class="card mb-3">
        <div class="card-header bg-primary text-white">
            Filter Laporan
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
<?php foreach ($kehadiran as $g) :
    if ($g['bulan'] . $g['tahun'] == $bulanlaporan[$bulan] . $tahun && $g['jam_pulang'] !== "05:00:00 PM") : ?>
        <?php $jumlahpulang[] = $g['kode']; ?>
<?php
    endif;
endforeach; ?>
<?php if (isset($jumlahpulang)) {
    $datapulang = array_count_values($jumlahpulang);
};
?>
<div class="container-fluid">
    <div class="card shadow mb-4">
        <div class="card-header bg-primary text-white">
            Menampilkan Data Laporan Honor Bulan: <span class="font-weight-bold"><?php echo $bulanlaporan[$bulan]; ?></span> Tahun: <span class="font-weight-bold"><?php echo $tahun ?></span>
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
                            <th>POTONGAN</th>
                            <th>HR TOTAL</th>
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
                                <td><?php $hrguru = $g['jumlah_jtm'] * $honor_guru['nominal'];
                                    echo $hrguru; ?></td>
                                <td>
                                    <?php foreach ($jabatan as $j) : ?>
                                        <?= $j['nama_jabatan']; ?>,
                                        <?php $gajian[$g['kode']][] = $j['honor']; ?>
                                    <?php endforeach; ?>
                                </td>
                                <td>
                                    <?php if (isset($gajian[$g['kode']])) {
                                        $hrjabatan = array_sum($gajian[$g['kode']]);
                                    } else {
                                        $hrjabatan = 0;
                                    };
                                    echo $hrjabatan; ?>
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
                                <td><?php $hrpengabdian = $thn * $honor_pengabdian['nominal'];
                                    echo $hrpengabdian; ?></td>
                                <?php if (isset($datapulang)) : ?>
                                    <td><?php
                                        if (isset($datapulang[$g['kode']])) {
                                            $datapulangkode = $datapulang[$g['kode']];
                                        } else {
                                            $datapulangkode = 0;
                                        };
                                        echo $datapulangkode; ?></td>
                                    <td><?php $hrtransport = $datapulangkode * $honor_transport['nominal'];
                                        echo $hrtransport; ?></td>
                                <?php else : ?>
                                    <td><?= 0; ?></td>
                                    <td><?php $hrtransport = 0;
                                        echo $hrtransport; ?></td>
                                <?php endif; ?>
                                <td><?= 0; ?></td>
                                <td><?php $hrtotal = $hrguru + $hrjabatan + $hrpengabdian + $hrtransport;
                                    echo $hrtotal;
                                    ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php if (!isset($jumlahpulang)) : ?>
        <span class="badge badge-danger"><i class="fas fa-info-circle"></i> Absensi Masih Kosong, cek dan upload absensi kehadiran</span>
    <?php endif; ?>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->