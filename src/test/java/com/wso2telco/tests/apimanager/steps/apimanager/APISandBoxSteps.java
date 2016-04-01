package com.wso2telco.tests.apimanager.steps.apimanager;



import org.junit.*;

import com.wso2telco.apimanager.pageobjects.apihome.sandbox.SandBoxPage;
import com.wso2telco.tests.apimanager.base.BasicTestObject;
import com.wso2telco.tests.util.data.SandBoxValues;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class APISandBoxSteps extends BasicTestObject {

	@Then("^I should see the Login in apimanager Sandbox page header as \"([^\"]*)\"$")
	public void i_should_see_the_Login_in_apimanager_Sandbox_page_header_as(String arg1) throws Throwable {
		for(String winHandle : driver.getWindowHandles()){
		    driver.switchTo().window(winHandle);
		}
		SandBoxPage sandbox = new SandBoxPage(driver);
	    Assert.assertTrue("Sandbox page did not load properly", sandbox.isSandboxLoginPage(arg1));
	}

	@When("^I enter apimanager Sandbox page username and password for \"([^\"]*)\"$")
	public void i_enter_apimanager_Sandbox_page_username_and_password_for(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterUserName(config.getValue(getEnvironment() + arg1 + "user"));
		sandbox.enterPassword(config.getValue(getEnvironment() + arg1 + "pwd"));
	}

	
	@When("^I click on apimanager Sandbox page login button$")
	public void i_click_on_apimanager_Sandbox_page_login_button() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickLogin();
		Thread.sleep(sleepTime);
	}

	@Then("^I should see the apimanager sandbox index page header as \"([^\"]*)\"$")
	public void i_should_see_the_apimanager_sandbox_index_page_header_as(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		Thread.sleep(sleepTime);
	    Assert.assertTrue("Sandbox Welcome page did not load properly", sandbox.isSandboxWelcome(arg1));
	}

	@When("^I click on apimanager Sandbox page username$")
	public void i_click_on_apimanager_Sandbox_page_username() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickUserName();
	}

	@When("^I click on apimanager Sandbox logout button$")
	public void i_click_on_apimanager_Sandbox_logout_button() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickLogout();
	}

	@When("^I click on numbers dropdown and select manage numbers$")
	public void i_click_on_numbers_dropdown_and_select_manage_numbers() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickNumbers();
		sandbox.selectManageNumbers();
	}
	
	@Then("^I should see the manage numbers page header as \"([^\"]*)\"$")
	public void i_should_see_the_manage_numbers_page_header_as(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		Assert.assertTrue("Sandbox Manage NUmbers page did not load properly", sandbox.isManageNumbers(arg1));
	}
	
	@When("^I clear existing \"([^\"]*)\" from the list$")
	public void i_clear_existing_from_the_list(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clearExistingNumber(arg1);
		Thread.sleep(sleepTime);
	}
	
	@When("^I click on add new button in manage numbers page$")
	public void i_click_on_add_new_button_in_manage_numbers_page() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickOnAddNewNumber();
	}
	
	@When("^I enter \"([^\"]*)\" as number$")
	public void i_enter_as_number(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterNumber(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as number description$")
	public void i_enter_as_number_description(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterDescription(arg1);
	}

	@When("^I enter \"([^\"]*)\" as balance$")
	public void i_enter_as_balance(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterBalance(arg1);
	}
	
	@When("^I click on save button in under actions column$")
	public void i_click_on_save_button_in_under_actions_column() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickSaveNumber();
		Thread.sleep(sleepTime);
	}
	
	@Then("^I should see the \"([^\"]*)\" as added number in the numbers table$")
	public void i_should_see_the_as_added_number_in_the_numbers_table(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		Assert.assertTrue("Number did not show properly", sandbox.isNumberAvailable(arg1));
	}
	
	@When("^I click on API dropdown and select payment$")
	public void i_click_on_API_dropdown_and_select_payment() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickOnApi();
		sandbox.clickOnPayment();
	}
	
	@Then("^I should see payment page header as \"([^\"]*)\"$")
	public void i_should_see_payment_page_header_as(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		Assert.assertTrue("Payment parameters page did not load properly", sandbox.isPaymentParameters(arg1));
	}
	
	@When("^I select \"([^\"]*)\" as transaction status$")
	public void i_select_as_transaction_status(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.selectTransactionStatus(arg1);
	}
	
	@When("^I click save button in payment parameters page$")
	public void i_click_save_button_in_payment_parameters_page() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickOnSavePaymentParameters();
		Thread.sleep(sleepTime);
	}
	
	@When("^I enter \"([^\"]*)\" as end user id$")
	public void i_enter_as_end_user_id(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		String number = "tel:+" + arg1;
		sandbox.enterEndUserId(number);
		SandBoxValues sandboxValues = new SandBoxValues();
		sandboxValues.setSmsUserId(number);
	}
	
	@When("^I select \"([^\"]*)\" as transaction operation status$")
	public void i_select_as_transactio_operation_status(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterTransactionOperationStatus(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as reference code$")
	public void i_enter_as_reference_code(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterReferenceCode(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as the request description$")
	public void i_enter_as_the_request_description(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterRequestDescription(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as currency$")
	public void i_enter_as_currency(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterCurrency(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as request amount$")
	public void i_enter_as_request_amount(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterAmount(arg1);
		SandBoxValues sandboxValues = new SandBoxValues();
		sandboxValues.setAmount(arg1);
	}
	

	@When("^I enter \"([^\"]*)\" as request client correlator$")
	public void i_enter_as_request_client_correlator(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterClientCorrelator(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as notify URL$")
	public void i_enter_as_notify_URL(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterNotifyURL(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as purchase category code$")
	public void i_enter_as_purchase_category_code(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterPurchaseCategoryCode(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as channel$")
	public void i_enter_as_channel(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterChannel(arg1);
	}
	
	@When("^I enter \"([^\"]*)\" as tax amount$")
	public void i_enter_as_tax_amount(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.enterTaxAmount(arg1);
	}
	
	@When("^I click on send request button in payment parameters page$")
	public void i_click_on_send_request_button_in_payment_parameters_page() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		sandbox.clickOnSendRequest();
	}
	
	@When("^I get the request payload$")
	public void i_get_the_request_payload() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		SandBoxValues sandboxValues = new SandBoxValues();
		sandboxValues.setRequestPayload(sandbox.getRequestPayload());
	}

	@When("^I get the response payload$")
	public void i_get_the_response_payload() throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		SandBoxValues sandboxValues = new SandBoxValues();
		sandboxValues.setResponsePayload(sandbox.getRsponsePayload());
	}
	
	@Then("^I should see the request payload containing \"([^\"]*)\"")
	public void i_should_see_the_request_payload_containing_as_amount(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		SandBoxValues sandboxValues = new SandBoxValues();
		String amount = sandboxValues.getAmount();
		String requestPayload = sandboxValues.getRequestPayload();
		sandbox.getValueFromJson(arg1, requestPayload);
		Assert.assertTrue("Amount is not loaded in request", sandbox.isAmountAvailableInRequest(amount));
	}

	@Then("^I should see the response payload containing \"([^\"]*)\"")
	public void i_should_see_the_response_payload_containing_as_amount(String arg1) throws Throwable {
		SandBoxPage sandbox = new SandBoxPage(driver);
		SandBoxValues sandboxValues = new SandBoxValues();
		String amount = sandboxValues.getAmount();
		String responsePayload = sandboxValues.getResponsePayload();
		sandbox.getValueFromJson(arg1, responsePayload);
		Assert.assertTrue("Amount is not loaded in response", sandbox.isAmountAvailableInResponse(amount));
	}

}