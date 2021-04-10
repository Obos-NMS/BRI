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


WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/a_Edit Transfer'))

WebUI.takeFullPageScreenshot((((GlobalVariable.Screenshoot + GlobalVariable.todaysDate) + '/') + GlobalVariable.nowTime + '/') + 'norek pengirim.png', FailureHandling.STOP_ON_FAILURE); WebUI.delay(2)

WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/a_'))

WebUI.click(findTestObject('Transfer/RTGS-Input Form Transfer/Page_iBBIZ BRI/span_Pilih no rekening pengirim'))

WebUI.setText(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/input_TRANSFER_select2-search__field'), debit.toString())

WebUI.sendKeys(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/input_TRANSFER_select2-search__field'), 
    Keys.chord(Keys.ENTER))

WebUI.click(findTestObject('Transfer/RTGS-Input Form Transfer/Page_iBBIZ BRI/span_Nama Bank'))

WebUI.setText(findTestObject('Transfer/RTGS-Input Form Transfer/Page_iBBIZ BRI/input_Next_select2-search__field'), bankTujuan.toString())

WebUI.sendKeys(findTestObject('Transfer/RTGS-Input Form Transfer/Page_iBBIZ BRI/input_Next_select2-search__field'),
	Keys.chord(Keys.ENTER))


WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/span_0206010037 - PRM KUTIP DUAN'))

//WebUI.click(findTestObject('Transfer/RTGS-Input Form Transfer/Page_iBBIZ BRI/span_Masukkan no rekening penerima'))

WebUI.setText(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/input_TRANSFER_select2-search__field'), rekeningKredit.toString())

WebUI.sendKeys(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/input_TRANSFER_select2-search__field'), 
    Keys.chord(Keys.ENTER))

WebUI.setText(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/input_Nominal Transfer_amount'), nominalTransfer.toString())

WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/button_TRANSFER'))

//WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/button_TRANSFER'))
//
//WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/span_'))
//
//WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/button_INFO LIMIT TRANSFER'))
//
//WebUI.click(findTestObject('Object Repository/Transfer/Edit Transfer/Page_iBBIZ BRI/span_'))
//
