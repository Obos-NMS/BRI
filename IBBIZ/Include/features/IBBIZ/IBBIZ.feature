@tag
Feature: TRANSAKSI IBBIZ

  @TC01-TC05
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih menu Pembayaran dan pembelian
    And Pilih sub menu PLN
    #menggunakan rekening sumber giro aktif
    And Melakukan pengisian form pilih rekening sumber giro aktif
    #menggunakan rekening sumber giro close
    And Melakukan pengisian form pilih rekening sumber giro close
    #menggunakan rekening sumber giro dormant
    And Melakukan pengisian form pilih rekening sumber giro dormant
    #menggunakan rekening sumber giro freeze
    And Melakukan pengisian form pilih rekening sumber giro freeze
    #menggunakan rekening sumber tabungan aktif
    And Melakukan pengisian form pilih rekening sumber tabungan aktif
    #menggunakan rekening sumber giro close
    And Melakukan pengisian form pilih rekening sumber tabungan close
    #menggunakan rekening sumber giro dormant
    And Melakukan pengisian form pilih rekening sumber tabungan dormant
    #menggunakan rekening sumber giro freeze
    And Melakukan pengisian form pilih rekening sumber tabungan freeze
    # menggunakan rekening sumber yang memiliki currency selain IDR
    And Melakukan pengisian sumber yang memiliki currency selain IDR
    And Input jenis transaksi dan input <idPelanggan>
    And Klik button Bayar
    Then Masuk ke halaman konfirmasi transaksi
    When Pilih nominal pembayaran
    And Klik konfirmasi lalu pilih Ya
    And Cek informasi pembayaran dengan cara klik pembayaran dan pembelian
    And Klik Informasi Pembayaran
    Then Transaksi yang baru dibaut akan ditampilkan pada row pertama
    When Masuk halaman detail informasi pembayaran
    And Klik cetak untuk melihat struk pembayaran
    Then Tutup aplikasi

    Examples: 
      | client     | username | password | idPelanggan |
      | IBBDAC0794 | usrm2    | P@ssw0rd | 12345678901 |

 @TC06
    Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih menu Pembayaran dan pembelian
    And Pilih sub menu PLN
    #menggunakan rekening sumber giro aktif
    And Melakukan pengisian form pilih rekening sumber giro aktif
    
    And Input jenis transaksi dan input <idPelanggan>
    And Klik button Bayar
    Then Masuk ke halaman konfirmasi transaksi
    When Pilih nominal pembayaran
    And Klik konfirmasi lalu pilih Ya
    And Cek informasi pembayaran dengan cara klik pembayaran dan pembelian
    And Klik Informasi Pembayaran
    Then Transaksi yang baru dibaut akan ditampilkan pada row pertama
    When Masuk halaman detail informasi pembayaran
    And Klik cetak untuk melihat struk pembayaran
    Then Tutup aplikasi

    Examples: 
      | client     | username | password | idPelanggan |
      | IBBDAC0794 | usrm2    | P@ssw0rd | 12345678901 |

      