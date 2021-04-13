import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.WebUI.keyword.WebUIBuiltInKeywords as WebUI
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testng.keyword.TestNGBuiltinKeywords as TestNGKW
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.webui.keyword.internal.WebUIAbstractKeyword
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import com.kms.katalon.entity.global.GlobalVariableEntity

import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'nav.debit.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.click(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/span_Rekening Debit'))

WebUI.setText(findTestObject('Object Repository/Halaman Bayar/Page_iBBIZ BRI/span_Masukkan ID Pelanggan'), debit.toString())

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'debit.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.sendKeys(findTestObject('Object Repository/Halaman Bayar/Page_iBBIZ BRI/span_Masukkan ID Pelanggan'), Keys.chord(Keys.ENTER))

WebUI.selectOptionByValue(findTestObject('Object Repository/Form-maker/Page_iBBIZ BRI/select_PLN Pasca BayarPLN Pra Bayar'), jenisTransaksi.toString(), true)

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'prabayar.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.click(findTestObject('Object Repository/Form-maker/Page_iBBIZ BRI/b'))

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'NEW ID Pelanggan.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.setText(findTestObject('Object Repository/Form-maker/Page_iBBIZ BRI/input_CETAK_select2-search__field'), newID.toString())

WebUI.sendKeys(findTestObject('Object Repository/Form-maker/Page_iBBIZ BRI/input_CETAK_select2-search__field'), Keys.chord(
        Keys.ENTER))
