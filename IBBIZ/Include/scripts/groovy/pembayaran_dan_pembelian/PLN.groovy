package pembayaran_dan_pembelian
import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject

import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.checkpoint.CheckpointFactory
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testcase.TestCaseFactory
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testdata.TestDataFactory
import com.kms.katalon.core.testobject.ObjectRepository
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

import internal.GlobalVariable

import org.openqa.selenium.WebElement
import org.openqa.selenium.WebDriver
import org.openqa.selenium.By

import com.kms.katalon.core.mobile.keyword.internal.MobileDriverFactory
import com.kms.katalon.core.webui.driver.DriverFactory

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.testobject.ConditionType
import com.kms.katalon.core.testobject.TestObjectProperty

import com.kms.katalon.core.mobile.helper.MobileElementCommonHelper
import com.kms.katalon.core.util.KeywordUtil

import com.kms.katalon.core.webui.exception.WebElementNotFoundException

import cucumber.api.java.en.And
import cucumber.api.java.en.Given
import cucumber.api.java.en.Then
import cucumber.api.java.en.When

class PLN {

	@Given("User membuka aplikasi web IBBIZ")
	def User_membuka_aplikasi_web_IBBIZ() {
		WebUI.callTestCase(findTestCase('General/Buka applikasi IBBIZ'), [:], FailureHandling.STOP_ON_FAILURE)
	}
	@And("Menggunakan flow multiple user")
	def Menggunakan_flow_multiple_user() {
	}
	
	@And("Menggunakan flow single user")
	def Menggunakan_flow_single_user() {
	}

	@When("Login menggunakan maker (.*) dan (.*) dan (.*)")
	def Login_menggunakan_maker_client_dan_username_dan_password(String client, String username, String password) {
		WebUI.callTestCase(findTestCase('General/Login'), [('client'):client, ('username'):username, ('password'):password], FailureHandling.STOP_ON_FAILURE)
	}
	@And("Pilih (.*) dengan (.*)")
	def Pilih_menu_dengan(String menu, String subMenu) {
		WebUI.callTestCase(findTestCase('Menu Pembayaran dan Pembelian/Menu pembelian dan pembayaran'), [('menu') : menu, ('subMenu') : subMenu], FailureHandling.STOP_ON_FAILURE)
	}
	@And("Pilih sub menu PLN")
	def Pilih_sub_menu_PLN() {
		WebUI.callTestCase(findTestCase('Menu Pembayaran dan Pembelian/Sub Menu'), [:], FailureHandling.STOP_ON_FAILURE)
	}


	@And("Pilih Rekening (.*) dengan (.*) dan (.*)")
	def Pilih_Rekening_debit_dengan_newID_dan_jenisTransaksi(String debit, String newID, String jenisTransaksi) {
		WebUI.callTestCase(findTestCase('From Maker/Input New Form Maker'), [('debit') : debit, ('newID') : newID, ('jenisTransaksi'):jenisTransaksi ], FailureHandling.STOP_ON_FAILURE)
	}


	@And("Pilih Rekening (.*) dan (.*) dan (.*)")
	def Pilih_Rekening_debit_dan_currentID_dan_jenisTransaksi(String debit, String currentID, String jenisTransaksi) {
		WebUI.callTestCase(findTestCase('From Maker/Input Current Form Maker'), [('debit') : debit, ('currentID') : currentID, ('jenisTransaksi'):jenisTransaksi ], FailureHandling.STOP_ON_FAILURE)
	}


	@And("Simpan ID Pelanggan dengan nama (.*)")
	def Simpan_ID_Pelanggan_dengan_nama_alias(String alias) {
		WebUI.callTestCase(findTestCase('From Maker/Simpan ID Pelanggan'), [('alias') : alias], FailureHandling.STOP_ON_FAILURE)
	}


	@Then("Tutup pop up transaksi")
	def Tutup_pop_up_transaksi() {
		WebUI.callTestCase(findTestCase('Konfirmasi Transaksi/Tutup pop up transaksi'), [:], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Input lebih dari 12 digit inputan pada kolom (.*)")
	def Input_lebih_dari_12_digit_inputan_pada_kolom_idPelanggan(String idPelanggan) {
	}

	@And("Klik button Bayar")
	def Klik_button_Bayar() {
		WebUI.callTestCase(findTestCase('From Maker/Bayar'), [:], FailureHandling.STOP_ON_FAILURE)
	}

	@Then("Mendapat response gagal")
	def Mendapat_response_gagal() {
	}

	@And("Pada halaman konfirmasi Select (.*)")
	def Pada_halaman_konfirmasi_Select(String nominalTransaksi) {
		WebUI.callTestCase(findTestCase('Konfirmasi Transaksi/Konfirmasi - Nominal Transaksi'), [('nominalTransaksi') : nominalTransaksi], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Lakukan konfirmasi pada transaksi dan (.*)")
	def Lakukan_konfirmasi_pada_transaksi_dan_pilihAction(String pilihAction) {
		WebUI.callTestCase(findTestCase('Konfirmasi Transaksi/Pilih YA pada Konfirmasi Transaksi'), [('pilihAction') : pilihAction], FailureHandling.STOP_ON_FAILURE)
	}

	@When("Menampilkan informasi pembayaran dengan (.*)")
	def Menampilkan_informasi_pembayaran_dengan_menu(String menu) {
		WebUI.callTestCase(findTestCase('Informasi Pembayaran/Informasi Pembayaran'), [('menu') : menu], FailureHandling.STOP_ON_FAILURE)
	}
	@And("Klik cetak untuk melihat struk pembayaran")
	def Klik_cetak_untuk_melihat_struk_pembayaran() {
		WebUI.callTestCase(findTestCase('Informasi Pembayaran/Cetak pembayaran'), [:], FailureHandling.STOP_ON_FAILURE)
	}
	@Then("Tutup aplikasi")
	def Tutup_aplikasi() {
	}
	@And("Lakukan (.*) pada halaman favorit menu beranda")
	def Lakukan_transaksi_pada_halaman_favorit_menu_beranda(String transaksi) {
		WebUI.callTestCase(findTestCase('Beranda/Beranda - Tambah Transaksi'), [('transaksi') : transaksi], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Lakukan (.*) pada menu beranda")
	def Lakukan_permintaanBaru_pada__menu_beranda(String permintaanBaru) {
		WebUI.callTestCase(findTestCase('Beranda/Beranda-permintaan baru'), [('permintaanBaru') : permintaanBaru], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Edit beranda (.*)")
	def Tambahkan_fitur_favorite_dari_edit_beranda_menu(String menu) {
		WebUI.callTestCase(findTestCase("Beranda/Edit Beranda"), [('menu') : menu], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Tambahkan (.*) yang akan ditampilkan di beranda")
	def Tambahkan_Personalisasi_beranda_yang_akan_ditampilkan_di_beranda(String personalisasiBeranda) {
		WebUI.callTestCase(findTestCase("Beranda/Personalisasi Beranda"), [('personalisasiBeranda') : personalisasiBeranda], FailureHandling.STOP_ON_FAILURE)
	}

	@Then("Menampilkan 5 data transaksi pada fitur (.*) PLN")
	def Menampilkan_5_data_transaksi_pada_fitur_favorit_PLN(String favorit) {
		WebUI.callTestCase(findTestCase("Beranda/Beranda - Tambah Transaksi"), [('favorit') : favorit], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Menambahkan fitur PLN menjadi fitur favorite")
	def Menambahkan_fitur_PLN_menjadi_fitur_favorite() {
	}
	@Then("Menampilkan 5 data transaksi pada fitur PLN pada beranda")
	def Menampilkan_5_data_transaksi_pada_fitur_PLN_pada_beranda() {
	}

	@When("Klik button tambah transaksi pada favorite menu PLN")
	def Klik_button_tambah_transaksi_pada_favorite_menu_PLN() {
	}

	@And("Melakukan pencarian data transaksi melalui kolom search cari (.*)")
	def Melakukan_pencarian_data_transaksi_melalui_kolom_search_cari_data(String data) {
		WebUI.callTestCase(findTestCase('Informasi Pembayaran/Pencarian Informasi dan Pembayaran'), [('data') : data], FailureHandling.STOP_ON_FAILURE)
	}
	@Then("Berhasil menampilkan data yang telah dicari")
	def Berhasil_menampilkan_data_yang_telah_dicari() {
	}

	@And("Klik detail (.*) Transfer")
	def Klik_detail_infoLimit_Transfer(String infoLimit) {
		WebUI.callTestCase(findTestCase('From Maker/Info Limit Transfer'), [('infoLimit') : infoLimit], FailureHandling.STOP_ON_FAILURE)
	}
	@And("Klik detail (.*) Transaksi")
	def Klik_detail_infoLimit_Transaksi(String infoLimit) {
		WebUI.callTestCase(findTestCase('From Maker/Info Limit Transaksi'), [('infoLimit') : infoLimit], FailureHandling.STOP_ON_FAILURE)
	}
	
}