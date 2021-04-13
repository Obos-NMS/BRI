@rtgs
Feature: Title of your feature
  I want to use this template for my feature file

  #TC-maker 01, 28, 36, TC-cheker 22, TC-Signer 36
  @transferNormal
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Lakukan transfer
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    Then Menampilkan informasi transfer pada <menu>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout
    #Checker - VERIFIKASI
    When Login menggunakan checker dengan <clientChecker> dan <userChecker> dan <passChecker>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transaksi
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Checker lakukan <verifikasi> transaksi
    Then Tutup pop up transaksi
    Then Menampilkan informasi transfer pada <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout
    #Signer - APPROVE
    When Login menggunakan signer dengan <clientSigner> dan <userSigner> dan <passSigner>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transfer
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Signer lakukan <konfirmasi> transaksi
    Then Tutup pop up transaksi
    Then Menampilkan informasi transfer pada <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                | nominalTransfer | catatan      | jenisTransfer | clientSigner | userSigner | passSigner | data | konfirmasi | pilihAction              | infoLimit           | clientChecker | userChecker | passChecker | verifikasi |
      | IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | TOLAK      | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSFER | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |

  #TC 02
  @tambahTransaksi
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Lakukan <transaksi> pada halaman favorit menu beranda
    #And Pada halaman beranda klik button tambah transaksi pada favorite menu RTGS
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Lakukan transfer
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    Then Menampilkan informasi transfer pada <menu>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                        | nominalTransfer | catatan       | jenisTransfer | transaksi        | pilihAction              |
      #tabungan
      | IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1 | Tambah Transaksi | Ya, Konfirmasi Transaksi |

  #TC 03
  @transferTerjadwal
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    Then Menampilkan halaman RTGS
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Pilih <tanggal> terjadwal <jam>
    And Lakukan transfer
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    Then Menampilkan informasi transfer pada <menu>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                        | nominalTransfer | catatan      | jenisTransfer | tanggal    | jam   |
      | IBBDAC0794 | usrm2    | P@ssw0rd | TRANSFER | RTGS    | 020601000107303 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | krisnominainggolan@gmail.com |          210000 | test catatan |             2 | 2021-04-19 | 08:10 |

  #TC 04
  @transferBerulang
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    Then Menampilkan halaman RTGS
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    #And Pilih transfer berulang setiap <value>
    And Pilih transfer berulang pada <value> untuk <hari>
    And Lakukan transfer
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    Then Menampilkan informasi transfer pada <menu>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan | rekeningKredit | alamat | email                | nominalTransfer | catatan      | jenisTransfer | value | hari |
      | IBBDAC0794 | usrm2    | P@ssw0rd | TRANSFER | RTGS    | 020601000107303 | ASIA       |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             3 |     2 |    3 |

  #TC-Maker05-07, TC-Checker 31-34
  @transferVarian
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    Then Menampilkan halaman RTGS
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Lakukan transfer
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client | username | password | menu | subMenu | debit | bankTujuan | rekeningKredit | alamat | email | nominalTransfer | catatan | jenisTransfer |

  #giro close, dormant, freezee
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000183308 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | krisnominainggolan@gmail.com |          210000 | test catatan |             1 |
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601002262565 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | krisnominainggolan@gmail.com |          210000 | test catatan |             1|
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601000166307 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | krisnominainggolan@gmail.com |          210000 | test catatan |             1 |
  #tabungan
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000009562 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601002262565 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601000519568 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
  #Curenncy selain IDR
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020602000556508 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
  
  #TC 09-10
  @validasiRekeningTujuan
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    Then Menampilkan halaman RTGS
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Lakukan transfer
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client | username | password | menu | subMenu | debit | bankTujuan | rekeningKredit | alamat | email | nominalTransfer | catatan | jenisTransfer |

  #giro close, dormant, freezee
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     001901000002560 | GTI    | krisnominainggolan@gmail.com |          210000 | test catatan |             1 |
  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     3336010037      | GTI    | krisnominainggolan@gmail.com |          210000 | test catatan |             1|
 
  #TC 11
  @inputanKosong
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    Then Menampilkan halaman RTGS
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Lakukan transfer
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                        | nominalTransfer | catatan | jenisTransfer |
      | IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601000107303 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | krisnominainggolan@gmail.com |          210000 |         |             1 |

  #TC 12-14
  @validasiLimit
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transfer
    Then Tutup pop up transaksi
    Then Menampilkan halaman RTGS
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Lakukan transfer
    Then Tutup pop up transaksi

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                        | nominalTransfer | catatan        | jenisTransfer | infoLimit           |
      | IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601000107303 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | krisnominainggolan@gmail.com |          210000 | validasi limit |             1 | INFO LIMIT TRANSFER |

  #TC 15-18
  @editTransferVarian
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    Then Menampilkan halaman RTGS
    When Pilih tab Edit Transfer <debit>, <bankTujuan>, <rekeningKredit>, <nominalTransfer>
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | nominalTransfer |
      #tabungan close, dormant, freeze
      | IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000009562 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 |          220000 |
		  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601002262565 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
		  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601000519568 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
		  #Curenncy selain IDR
		  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020602000556508 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
		  #		 rekening sumber = tujuan
		  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 095301029803537 | BCA - PT. BANK CENTRAL ASIA Tbk. |     095301029803537 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
		  #		 bank tujuan salah
		  #| IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 095301029803537 |Indonesia |     095301029803537 | GTI1   | krisnominainggolan@gmail.com |          220000 | test catatan2 |             1|
 
 
 
  #TC 19-21
  @validasilimitEditTransfer
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transfer
    Then Tutup pop up transaksi
    Then Menampilkan halaman RTGS
    When Pilih tab Edit Transfer <debit>, <bankTujuan>, <rekeningKredit>, <nominalTransfer>
    Then Tutup pop up transaksi
    Then pilih button logout

    Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | nominalTransfer |
      | IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 020601000107303 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 |          210000 |

  #TC -Checker 24,25,26, 27, TC-Signer 29
  @periksaTransaksi
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow multiple user
    When Login menggunakan maker <client> dan <username> dan <password>
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
			
  #TC- Checker  23 , TC-Signer 30
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

      #TC-Signer 45-46
      @singleUser
  Scenario Outline: Title of your scenario outline
    Given User membuka aplikasi web IBBIZ
    And Menggunakan flow single user
    When Login menggunakan signer dengan <clientSigner> dan <userSigner> dan <passSigner>
    And Pilih <menu> dengan <subMenu>
    And Klik detail <infoLimit> Transfer
    When Input form RTGS dengan <debit>, <bankTujuan>, <rekeningKredit>, <alamat>, <email>, <nominalTransfer>, <catatan>, <jenisTransfer>
    And Lakukan transfer
    And Lakukan konfirmasi pada transaksi dan <pilihAction>
    Then Tutup pop up transaksi
    Then Menampilkan informasi transfer pada <menu>
    And Melakukan pencarian data transaksi melalui kolom search cari <data>
    And Klik cetak untuk melihat struk pembayaran
    Then pilih button logout

      Examples: 
      | client     | username | password | menu     | subMenu | debit           | bankTujuan                       | rekeningKredit | alamat | email                | nominalTransfer | catatan      | jenisTransfer | clientSigner | userSigner | passSigner | data | konfirmasi | pilihAction              | infoLimit           | clientChecker | userChecker | passChecker | verifikasi |
      | IBBSW19143 | usrm1    | P@ssw0rd | TRANSFER | RTGS    | 001901000002560 | BCA - PT. BANK CENTRAL ASIA Tbk. |     0206010037 | GTI    | nainggolan@gmail.com |          210000 | test catatan |             1 | IBBSW19143   | usrs1      | P@ssw0rd   | PRM  | TOLAK      | Ya, Konfirmasi Transaksi | INFO LIMIT TRANSFER | IBBSW19143    | usrc1       | P@ssw0rd    | VERIFIKASI |
      