<table class ="table table-bordered">
      <tr>
            <th>NOMOR</th>
            <th>ID </th>
            <th>NAMA</th>
            <th>NO TELP</th>
            <th>KOTA</th>
            <th>KELAMIN</th>
            <th>POSISI</th>
            <th>STATUS</th>
      </tr>
            
      <?php
            $no=0;
                  foreach ($sql->result() as $obj1) {
                        $no++;
      ?>
                        <tr>
                              <td><?php echo $no; ?></td>
                              <td><?php echo $obj1->id_pegawai; ?></td>
                              <td><?php echo $obj1->nama; ?></td>
                              <td><?php echo $obj1->no_telp; ?></td>
                              <td><?php echo $obj1->nama_kota; ?></td>
                              <td><?php echo $obj1->nama_kelamin; ?></td>
                              <td><?php echo $obj1->nama_posisi; ?></td>
                              <td><?php echo $obj1->status ?></td>
                        </tr>
      <?php
            }
      ?>
</table>
