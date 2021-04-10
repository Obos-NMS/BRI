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


WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'norek pengirim.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.scrollToPosition(0, 0)

WebUI.selectOptionByValue(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/select_Tanggal                             _b0cb03'), value.toString(), true)

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'norek pengirim.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.selectOptionByValue(findTestObject('Transfer/Transfer Berulang/Page_iBBIZ BRI/select_Pilih Hari                          _b2fa57'), hari.toString(), true)

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'norek pengirim.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.click(findTestObject('Transfer/Transfer Berulang/Page_iBBIZ BRI/input_Start Date_schrecur2'))

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'norek pengirim.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.click(findTestObject('Transfer/Transfer Berulang/Page_iBBIZ BRI/span_May'))

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'norek pengirim.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.click(findTestObject('Transfer/Transfer Berulang/Page_iBBIZ BRI/input_End Date_schrecur3'))


WebUI.click(findTestObject('Transfer/Transfer Berulang/Page_iBBIZ BRI/span_May'))

