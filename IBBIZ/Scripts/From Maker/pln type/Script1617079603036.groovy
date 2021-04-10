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

WebUI.openBrowser('')

WebUI.navigateToUrl('http://ibbiz-web-newdev.apps.ocp-dev.bri.co.id/')

WebUI.doubleClick(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/input_Login ke akun anda_corpid'))

WebUI.setText(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/input_Login ke akun anda_corpid'), 'IBBSW19143')

WebUI.setText(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/input_Login ke akun anda_userid'), 'usrm1')

WebUI.selectOptionByValue(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/select_PLN Pasca BayarPLN Pra Bayar'), 
    'prabayar', true)

WebUI.selectOptionByValue(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/select_PLN Pasca BayarPLN Pra Bayar'), 
    'pascabayar', true)

WebUI.selectOptionByValue(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/select_PLN Pasca BayarPLN Pra Bayar'), 
    'prabayar', true)

WebUI.selectOptionByValue(findTestObject('Object Repository/Bayar/Page_iBBIZ BRI/select_PLN Pasca BayarPLN Pra Bayar'), 
    'pascabayar', true)

