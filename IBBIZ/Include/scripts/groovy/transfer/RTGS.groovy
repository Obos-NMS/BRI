package transfer
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



class RTGS {
	@Then("Menampilkan halaman RTGS")
	def Menampilkan_halaman_RTGS() {
	}
	@When("Pilih tab Edit Transfer")
	def Pilih_tab_Edit_Transfer() {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Edit Transfer'), [:], FailureHandling.STOP_ON_FAILURE)
	}

	@When("Pilih tab Edit Transfer (.*), (.*), (.*), (.*)")
	def Pilih_tab_Edit_Transfer(String debit, String bankTujuan, String rekeningKredit, String nominalTransfer) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Edit Transfer'), [('debit') : debit, ('bankTujuan') : bankTujuan, ('rekeningKredit') : rekeningKredit, ('nominalTransfer') : nominalTransfer], FailureHandling.STOP_ON_FAILURE)
	}
	@When("Input form RTGS dengan (.*), (.*), (.*), (.*), (.*), (.*), (.*), (.*)")
	def Input_form_RTGS_dengan(String debit, String bankTujuan, String rekeningKredit, String alamat, String email, String nominalTransfer, String catatan, String jenisTransfer) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/RTGS-Input Form Transfer'), [('debit') : debit, ('bankTujuan') : bankTujuan, ('rekeningKredit') : rekeningKredit, ('alamat') : alamat, ('email') : email, ('nominalTransfer') : nominalTransfer, ('catatan') : catatan, ('jenisTransfer') : jenisTransfer], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Pilih transfer berulang setiap (.*)")
	def Pilih_transfer_berulang_setiap(String value) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Transfer Berulang Tanggal'), [('value') : value], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Pilih transfer berulang pada (.*) untuk (.*)")
	def Pilih_transfer_berulang_pada_hari(String value, String hari) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Transfer Berulang Hari'), [('value') : value, ('hari') : hari], FailureHandling.STOP_ON_FAILURE)
	}


	@Then("Menampilkan informasi transfer pada (.*)")
	def Menampilkan_informasi_transfer_pada(String menu) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Informasi Transfer'), [('menu') : menu], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Pada halaman beranda klik button tambah transaksi pada favorite menu RTGS")
	def Pada_halaman_beranda_klik_button_tambah_transaksi_pada_favorite_menu_RTGS() {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Tambah transaksi - RTGS dari beranda'), [:], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Lakukan transfer")
	def Lakukan_transfer() {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Transfer'), [:], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Pilih (.*) terjadwal (.*)")
	def Pilih_tanggal_terjadwal(String tanggal, String jam) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/set tanggal'), [('tanggal') : tanggal, ('jam') : jam], FailureHandling.STOP_ON_FAILURE)
	}

	@Then("pilih button logout")
	def pilih_button_logout() {
		WebUI.callTestCase(findTestCase('General/Logout'), [:], FailureHandling.STOP_ON_FAILURE)
	}

	@When("Login menggunakan signer dengan (.*) dan (.*) dan (.*)")
	def Login_menggunakan_signer_dengan_clientSigner_dan_userSigner_dan_passSigner(String clientSigner, String userSigner, String passSigner) {
		WebUI.callTestCase(findTestCase('General/Login'), [('client') : clientSigner, ('username') : userSigner, ('password') : passSigner], FailureHandling.STOP_ON_FAILURE)
	}

	@And("Signer lakukan (.*) transaksi")
	def Signer_lakukan_konfirmasi_transaksi(String konfirmasi) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Signer_APPROVE'), [('konfirmasi') : konfirmasi], FailureHandling.STOP_ON_FAILURE)
	}
	
	@And("Checker lakukan (.*) transaksi")
	def Checker_lakukan_verifikasi_transaksi(String verifikasi) {
		WebUI.callTestCase(findTestCase('Transfer/RTGS_/Signer_APPROVE'), [('konfirmasi') : verifikasi], FailureHandling.STOP_ON_FAILURE)
	}
	
	@When("Login menggunakan checker dengan (.*) dan (.*) dan (.*)")
	def Login_menggunakan_checker_dengan_clientChecker_dan_userChecker_dan_passChecker(String clientChecker, String userChecker, String passChecker) {
		WebUI.callTestCase(findTestCase('General/Login'), [('client') : clientChecker, ('username') : userChecker, ('password') : passChecker], FailureHandling.STOP_ON_FAILURE)
	}
}
