import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testng.keyword.TestNGBuiltinKeywords as TestNGKW
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.selectOptionByValue(findTestObject('New Folder/Konfirmasi Transaksi Maker/Page_iBBIZ BRI/select_- Select Option -Rp 20.000Rp 50.000R_c9c4d3'), nominalTransaksi.toString(), true)

WebUI.sendKeys(findTestObject('New Folder/Konfirmasi Transaksi Maker/Page_iBBIZ BRI/select_- Select Option -Rp 20.000Rp 50.000R_c9c4d3'), Keys.chord(
	Keys.ENTER))

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'nominal.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(1)
