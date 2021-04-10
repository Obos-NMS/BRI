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
import com.kms.katalon.core.webui.driver.DriverFactory
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.webui.keyword.internal.WebUIKeywordMain
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

//import org.openqa.selenium.WebElement as WebElement
//import com.kms.katalon.core.webui.keyword.internal.WebUIKeywordMain

import org.openqa.selenium.WebDriver as WebDriver
import java.util.List
import org.openqa.selenium.By
import org.openqa.selenium.By.ByCssSelector
import org.openqa.selenium.WebDriver
import org.openqa.selenium.WebElement
import org.openqa.selenium.remote.RemoteWebDriver
import org.openqa.selenium.remote.RemoteWebElement

WebUI.openBrowser('')

WebUI.navigateToUrl('http://ibbiz-web-newdev.apps.ocp-dev.bri.co.id/')

WebUI.doubleClick(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input_Login ke akun anda_corpid'))

WebUI.setText(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input_Login ke akun anda_corpid'), 'IBBDAC0794')

WebUI.setText(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input_Login ke akun anda_userid'), 'usrm2')

WebUI.setEncryptedText(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input_Login ke akun anda_password'), 
    'iFGeFYmXIrUhQZHvW7P22w==')

WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/button_Login'))

WebUI.maximizeWindow()

//WebUI.scrollToElement(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/a_EDIT BERANDA'), 0)
WebUI.scrollToPosition(0, 0)

WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/a_EDIT BERANDA'))

WebUI.delay(2)

//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_-'))

//WebDriver driver = DriverFactory.getWebDriver()

//ArrayList<WebElement> fields = driver.findElements(By.cssSelector('span.btn.btn-md.btn-notif-flat.w-full'))

//println(fields.size())
WebUI.delay(3)

String js = 'return document.querySelectorAll(".badge badge-delete float-right").length;'

int count = WebUI.executeJavaScript(js, null)

println(count)

//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_DO Pertamina-'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_-'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_-'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_-'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_-'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/a_Pembayaran  Pembelian'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input__btn btn-primary'))
//
//WebUI.doubleClick(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input__btn btn-primary'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input__btn btn-primary'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_Briva'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_Kliring'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/span_-'))
//
//WebUI.click(findTestObject('Object Repository/edit beranda/Page_iBBIZ BRI/input__btn btn-primary'))

