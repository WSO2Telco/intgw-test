Feature: Validate Monthly Invoice

# TC covering by this TC - MIIFE_RTC_105, MIIFE_RTC_116, MIIFE_RTC_117, MIIFE_RTC_118, MIIFE_RTC_119, MIIFE_RTC_122, MIIFE_RTC_144, MIIFE_RTC_145, MIIFE_RTC_146

@Smoke
Scenario Outline: Check if Monthly Invoice Northbound is loaded with data accurately based on different charge type
Given I am in apimanger carbon login page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2 API Manager Home"
When I click on identity server Main tab
And I click on identity server Resources Browse link
Then I should see the identity server Resources Browse page header as "Browse"
When I search rate card by providing "/_system/governance/apimgt/applicationdata/nb-rate-card.xml" location
And I upload "nb-rate-card.xml" rate card file from "/NB/1/" location
When I close the browser
And I am in apimanager
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
Then I should see apimanager Manager Total API Traffic page header as "<apiTrafficPageHeader>"
When I click on Monthly Invoice NB menu item
Then I should see apimanager Manager Monthly Invoice page header as "<monthlyInvoicePageHeader>"
When I select "<year>" as Monthly Invoice Year
And I select "<month>" as Monthly Invoice Month
And I select "<serviceProvider>" as the Monthly Invoice service provider
And I click on generate button
Then I validate "AutInvSP3_AutInvSP3_app1" "payment" and "Charge" for "Usage Charge" value as "Rs 32.00"
And I validate total amount "AutInvSP3_AutInvSP3_app1" application for "Usage Charge" column value as "Rs 62.00"
And I validate "AutInvSP3_AutInvSP3_app2" "smsmessaging" and "Retrive SMS" for "Usage Charge" value as "Rs 0.00"
And I validate total amount "AutInvSP3_AutInvSP3_app2" application for "Usage Charge" column value as "Rs 10.00"
And I validate "AutInvSP3_AutInvSP3_app2" "smsmessaging" and "Query SMS Delivery" for "Credit" value as "Rs 0.00"
And I validate total amount "AutInvSP3_AutInvSP3_app2" application for "Credit" column value as "Rs 0.00"
And I validate "AutInvSP3_AutInvSP3_app2" "payment" and "Charge" for "Usage Charge" value as "Rs 32.00"
And I validate total amount "AutInvSP3_AutInvSP3_app2" application for "Usage Charge" column value as "Rs 62.00"
And I validate "AutInvSP3_AutInvSP3_app2" "payment" and "Refund" for "Usage Charge" value as "Rs 0.00"
And I validate total amount "AutInvSP3_AutInvSP3_app2" application for "Usage Charge" column value as "Rs 62.00"
And I validate "AutInvSP3_AutInvSP3_app2" "ussd" and "Send USSD    " for "Usage Charge" value as "Rs 10.00    "
And I validate total amount "AutInvSP3_AutInvSP3_app2" application for "Usage Charge" column value as "Rs 62.00"


Examples:
| usertype|apiTrafficPageHeader|monthlyInvoicePageHeader     |year|month|serviceProvider|
|QA17LOG  |Total API Traffic   |Monthly Invoice - Northbound |2016|March|AutInvSP3      |


#MIIFE_RTC_105
@Smoke
Scenario Outline: Check if Monthly Invoice Southbound is loaded with data accurately based on different charge type
Given I am in apimanger carbon login page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2 API Manager Home"
When I click on identity server Main tab
And I click on identity server Resources Browse link
Then I should see the identity server Resources Browse page header as "Browse"
When I search rate card by providing "/_system/governance/apimgt/applicationdata/sb-rate-card.xml" location
And I upload "sb-rate-card.xml" rate card file from "/SB/" location
When I close the browser
And I am in apimanager
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
Then I should see apimanager Manager Total API Traffic page header as "<apiTrafficPageHeader>"
When I click on Monthly Invoice SB menu item
Then I should see apimanager Manager Monthly Invoice page header as "<monthlyInvoicePageHeader>"
When I select "<year>" as Monthly Invoice Year
And I select "<month>" as Monthly Invoice Month
And I select "<serviceProvider>" as the Monthly Invoice service provider
And I click on generate button
Then I validate "admin_payment_test1" "payment" "DIALOG" and "Charge" for "Usage Charge" value as "Rs 213.60"
And I validate total amount for "Usage Charge" column value as "Rs 62.00"


Examples:
| usertype|apiTrafficPageHeader|monthlyInvoicePageHeader     |year|month|serviceProvider|
|QA17LOG  |Total API Traffic   |Monthly Invoice - Southbound |2016|March|AutInvSP3      |


