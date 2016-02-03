Feature: Validate Transaction Log 


#MIIFE_RTC_111 is covered by this scenario
@Smoke
Scenario Outline: Check if Transaction Log is loaded accurately
Given I am in apimanager
When I click on apimanager login
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertype>" 
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertype>" at the top right corner of the page
When I click on apimanager Manage 
Then I should see the apimanager Manager page header as "Manager"
When I enter apimanager Manager page admin username credentials
And I click on apimanager Manager page login button
Then I should see the apimanager Manager Home page header as "Home"
And I should see apimanager Manager Home Billing Workflow Blacklist Whitelist tabs
When I click on apimanager Manager page Billing and Metering tab
Then I should see apimanager Manager Total API Traffic page header as "<apiiTrafficPageHeader>"
When I click on Transaction log menu item
Then I should see apimanager Manager Transaction Log page header as "<transactionLogPageHeader>"
When I enter "<fromDate>" as Transaction Log from date
And I enter "<toDate>" as Transaction Log to date
And I click on Transaction Log operator drop down
And I select "<operator>" as Transaction Log operator
And I click on Transaction Log service provider drop down
And I select "<serviceProvider>" as the Transaction Log service provider
And I click on Transaction Log API drop down
And I select "<API>" as Transaction Log API
And I click on Transaction Log Status drop down
And I select "<status>" as Transaction Log Status
And I click on Download report button
#validate downloaded excel sheet
Then download excel sheet


Examples:
| usertype|
|LOGOUT   |