@pln
Feature: TRANSAKSI IBBIZ Prabayar dan Pasca Bayar

  #TC 01-02 dan 09, 12, 23-24, 28-29
  @prabayarNormal
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    And Pada halaman konfirmasi Select <nominalTransaksi>
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout
    #CHEKER VERIFIKASI
    When Login menggunakan checker dengan <clientChecker> dan <userChecker> dan <passChecker>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transaksi
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Checker lakukan <verifikasi> transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then Tutup pop up transaksi
    Then pilih button logout
    #SIGNER KONFIRMASI
    When Login menggunakan signer dengan <clientSigner> dan <userSigner> dan <passSigner>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transaksi
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Signer lakukan <konfirmasi> transaksi
    Then Tutup pop up transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    #Then Tutup aplikasi
    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                | nominalTransfer | catatan      | jenisTransfer | clientSigner | userSigner | passSigner | data | konfirmasi | pilihAction              | infoLimit            | clientChecker | userChecker | passChecker | verifikasi |
      #Rekening Tabungan AktiF
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |
      #Rekening Giro Aktif
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000107303 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |

  #TC 03-TC05
  @praBayarVarian
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | currentID   | jenisTransaksi | nominalTransaksi |
      #Rekening Tabungan Close
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000009562 | 12345678901 | prabayar       |            20000 |

  #Rekening Tabungan Dormant
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601002262565| 12345678901 | prabayar       |            20000 |
  #Rekening Tabungan Freezee
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000519568 | 12345678901 | prabayar       |            20000 |
  #Rekening Giro close
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000183308 | 12345678901 | prabayar       |            20000 |
  #Rekening Giro Dormant
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901001217304 | 12345678901 | prabayar       |            20000 |
  #Rekening Giro Freeze
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000166307 | 12345678901 | prabayar       |            20000 |
  #Rekening CEK CUR USD
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020602000556508 | 12345678901 | prabayar       |            20000 |
  #TC-Maker 06-07, TC-Signer 50-51
  @fieldKosong
  Scenario Outline: Mengosongkan salah satu kolom inputan dan melakukan submit transaksi dan input lebih dari 12 digits id pelanggan
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | currentID    | jenisTransaksi | nominalTransaksi | data |
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000107303 |  12345678901 | prabayar       |            20000 | pln  |
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000107303 | 123456789012 | prabayar       |            20000 | pln  |
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000107303 |              | prabayar       |            20000 | pln  |

  #TC 08
  @prabayarnewTransaction
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian dan simpan no pembayaran atau ID Pelanggan
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dengan <newID> dan <jenisTransaksi>
    And Simpan ID Pelanggan dengan nama <alias>
    And Klik button Bayar
    And Pada halaman konfirmasi Select <nominalTransaksi>
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | new_ID      | alias    | debit           | idPelanggan | jenisTransaksi | nominalTransaksi | menu                   | subMenu | alias |
      | IBBSW19143 | usrm1    | P@ssw0rd | 09876543211 | prabayar | 001901000002560 |  0987654321 | prabayar       |            20000 | PEMBAYARAN & PEMBELIAN | PLN     | alias |

  #TC 10-11
  @prabayarberanda
  Scenario Outline: Menampilkan history 5 transaksi pada datatable yang berada di halaman dashboard/beranda
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    #And Edit beranda <menu>
    #And Tambahkan <personalisasiBeranda> yang akan ditampilkan di beranda
    #Then Menampilkan 5 data transaksi pada fitur <favorit> PLN
    And Lakukan <transaksi> pada halaman favorit menu beranda
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    And Pada halaman konfirmasi Select <nominalTransaksi>
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    When Menampilkan informasi pembayaran dengan <menu>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | debit           | currentID   | jenisTransaksi | nominalTransaksi | transaksi        |
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | 001901000002560 | 12345678901 | prabayar       |            20000 | Tambah Transaksi |

  #TC-Maker 13-15, TC-Signer 52-54
  @prabayarinfoLimit
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transaksi
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    And Pada halaman konfirmasi Select <nominalTransaksi>
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | currentID   | jenisTransaksi | nominalTransaksi | infoLimit            |
      | IBBDAC0794 | usrm2    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000002560 | 12345678901 | prabayar       |           200000 | INFO LIMIT TRANSAKSI |

  #PASCA BAYAR
  #TC 01-02 dan 6, TC-CHEKER 10-11,15-16
  @pascabayarNormal
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian menggunakan tabungan dan giro aktif
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout
    #CHEKER VERIFIKASI
    When Login menggunakan checker dengan <clientChecker> dan <userChecker> dan <passChecker>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transaksi
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Checker lakukan <verifikasi> transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then Tutup pop up transaksi
    Then pilih button logout
     Examples: 
      | client     | username | password | menu                   | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                | nominalTransfer | catatan      | jenisTransfer | clientSigner | userSigner | passSigner | data | konfirmasi | pilihAction              | infoLimit            | clientChecker | userChecker | passChecker | verifikasi |
      #Rekening Tabungan AktiF
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |
			  #Rekening Giro Aktif
#			| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |



#TC 03-TC4
  @pascabayarVarian
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | currentID   | jenisTransaksi | nominalTransaksi | data |
      #Rekening Tabungan Close
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000009562 | 12345678901 | prabayar       |            20000 |      |

  #Rekening Tabungan Dormant
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601002262565  | 12345678901 | prabayar       |            20000 |
  #Rekening Tabungan Freezee
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000519568 | 12345678901 | prabayar       |            20000 |
  #Rekening Giro close
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000183308 | 12345678901 | prabayar       |            20000 |
  #Rekening Giro Dormant
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901001217304 | 12345678901 | prabayar       |            20000 |
  #Rekening Giro Freeze
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000166307 | 12345678901 | prabayar       |            20000 |
  #Rekening CEK CUR USD
  #| IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020602000556508 | 12345678901 | prabayar       |            20000 |
  #TC 05
  @pascabayarSimpanID
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian dan simpan no pembayaran atau ID Pelanggan
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dengan <newID> dan <jenisTransaksi>
    And Simpan ID Pelanggan dengan nama <alias>
    And Klik button Bayar
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | new_ID      | alias    | debit           | idPelanggan | jenisTransaksi | nominalTransaksi | menu                   | subMenu | alias |
      | IBBSW19143 | usrm1    | P@ssw0rd | 09876543211 | prabayar | 001901000002560 |  0987654321 | prabayar       |            20000 | PEMBAYARAN & PEMBELIAN | PLN     | alias |

  #TC 07-09
  @pascabayarinfoLimit
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transaksi
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | currentID   | jenisTransaksi | nominalTransaksi |
      | IBBDAC0794 | usrm2    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000002560 | 12345678901 | pascabayar     |           200000 |

  #TC-SIGNER 25, TC-CHECKER 12
  @permintaanBaru
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    #And Pilih <menu> dengan <subMenu>
    And Lakukan <permintaanBaru> pada menu beranda
    And Signer lakukan <konfirmasi> transaksi
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu    | subMenu | data | permintaanBaru | konfirmasi |
      | IBBSW19143 | usrc1    | P@ssw0rd | BERANDA | RTGS    | PRM  | RTGS           | TOLAK      |
      | ibbfl34975 | usrs1    | P@ssw0rd | BERANDA | RTGS    | PRM  | RTGS           | TOLAK      |

  #TC-SIGNER 26, TC-CHECKER 13
  @periksaTransaksi
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan signer dengan <clientSigner> dan <userSigner> dan <passSigner>
    #And Pilih <menu> dengan <subMenu>
    And Lakukan <transaksi> pada halaman favorit menu beranda
    And Klik detail <infoLimit> Transfer
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Signer lakukan <konfirmasi> transaksi
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | clientSigner | userSigner | passSigner | menu    | subMenu | data | transaksi         | konfirmasi | infoLimit           |
      | IBBSW19143   | usrc1      | P@ssw0rd   | BERANDA | RTGS    | PRM  | Periksa Transaksi | TOLAK      | INFO LIMIT TRANSFER |
      | IBBSW19143   | usrs1      | P@ssw0rd   | BERANDA | RTGS    | PRM  | Periksa Transaksi | TOLAK      | INFO LIMIT TRANSFER |



 #TC 26-27
  @singleuserPascaBayar
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan signer dengan <clientSigner> dan <userSigner> dan <passSigner>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    #And Pada halaman konfirmasi Select <nominalTransaksi>
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                | nominalTransfer | catatan      | jenisTransfer | clientSigner | userSigner | passSigner | data | konfirmasi | pilihAction              | infoLimit            | clientChecker | userChecker | passChecker | verifikasi |
      #Rekening Tabungan tdk cukup
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000016569 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |
      #Rekening Giro saldo tdk cukup
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000107303 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |

  #TC 48-49
  @singleuserPraBayar
  Scenario Outline: Melakukan pembelian token listrik pada Menu Pembayaran & Pembelian
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan signer dengan <clientSigner> dan <userSigner> dan <passSigner>
    And Pilih <menu> dengan <subMenu>
    And Pilih Rekening <debit> dan <currentID> dan <jenisTransaksi>
    And Klik button Bayar
    And Pada halaman konfirmasi Select <nominalTransaksi>
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    When Menampilkan informasi pembayaran dengan <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | menu                   | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                | nominalTransfer | catatan      | jenisTransfer | clientSigner | userSigner | passSigner | data | konfirmasi | pilihAction              | infoLimit            | clientChecker | userChecker | passChecker | verifikasi |
      #Rekening Tabungan tdk cukup
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 001901000016569 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |
      #Rekening Giro saldo tdk cukup
      | IBBSW19143 | usrm1    | P@ssw0rd | PEMBAYARAN & PEMBELIAN | PLN     | 020601000107303 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | APPROVE    | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSAKSI | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |
