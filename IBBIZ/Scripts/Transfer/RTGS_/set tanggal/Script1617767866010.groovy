import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject

import java.sql.Date

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

WebUI.click(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/div_Tanggal'))

WebUI.click(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/input_Tanggal_schdate'))

WebUI.click(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/td_7'))

//WebUI.setText(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/td_7'), tanggal.toString())

//WebUI.sendKeys(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/td_7'), Keys.chord(Keys.CONTROL, 'v'))

//WebUI.click(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/td_7'))

//WebUI.sendKeys(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/input_Tanggal_schdate'), Keys.chord('2021-04-19', Keys.ENTER), FailureHandling.STOP_ON_FAILURE)

////value = jam.toString()
WebUI.click(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/div_Pukul'))

WebUI.click(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/input_Pukul_schtime'))

WebUI.click(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/a_0800'))

//WebUI.click(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/a_0800'), jam.toString())

//WebUI.sendKeys(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/a_0800'), Keys.chord(Keys.CONTROL, Keys.INSERT))


//WebUI.setText(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/a_0800'), jam.toString())


//
////WebUI.click(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/a_0800', [('value') : "$value"]))
//
//WebUI.setText(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/a_0800'), jam.toString())
//
//WebUI.sendKeys(findTestObject('Transfer/RTGS-Terjadwal/Page_iBBIZ BRI/a_0800'), Keys.chord(Keys.ENTER), FailureHandling.STOP_ON_FAILURE)
//

//WebUI.doubleClick(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/input_Tanggal_schrecur1'))

//WebUI.setText(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/input_Tanggal_schrecur1'), tanggal.toString())

//WebUI.click(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/input_Start Date_schrecur2'))
//
//WebUI.click(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/span_Apr'))
//
//WebUI.setText(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/input_Start Date_schrecur2'), '2021-0')
//
//WebUI.click(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/input_End Date_schrecur3'))
//
//WebUI.click(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/span_May'))
//
//WebUI.click(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/input_End Date_schrecur3'))
//
//WebUI.setText(findTestObject('Transfer/set tanggal/Page_iBBIZ BRI/input_End Date_schrecur3'), '2021-0')

