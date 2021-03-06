Feature: Validate if user successfully signup to store

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-41 : Service provider signs up with all mandatory information to consume APIs
Given I am in identity server page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2Telco Hub Home"
When I click on identity server Main tab
And I click on identity server Configuration Users and Roles List link
Then I should see ids Configuration menu with first item as "Users and Roles"
When I click identity server User Management Users link
Then I should see ids User Management Users page header as "Users"
When I clear existing users "<usertype>"
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button 
Then I should see the apimanager Sign-up for a new account success pop up with "User added successfully. You can now sign into the API store using the new user account".
When I click on apimanager Sign-up for a new account success pop up ok button
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertype>"
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertype>" at the top right corner of the page
Examples:
|usertype |LastName   |FirstName   |Email	            |Country |Land_Phone |
|LOGOUT	  |AuxTestLast|AuxTestFirst|AuxTest123@gmail.com|Srilanka|2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-42 : Service provider is not able to sign up without username provided
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button 
Then I should see the username validation failure prompt with "Please enter at lease 5 characters"
Examples:
|usertype |LastName   |FirstName   |Email	            |Country |Land_Phone|
|LOGOUT	  |AuxTestLast|AuxTestFirst|AuxTest123@gmail.com|Srilanka|2324434   |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-43 : Service provider is not able to sign up without password provided
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button 
Then I should see the password validation failure prompt with "Enter a more secure password"
Then I should see the retype password validation failure prompt with "Confirm Password"
Examples:
|usertype|LastName   |FirstName   |Email	           |Country	|Land_Phone |
|LOGOUT	 |AuxTestLast|AuxTestFirst|AuxTest123@gmail.com|Srilanka|2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-44 : Service provider is not able to sign up without lastname provided
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button 
Then I should see the lastname validation failure prompt with "This field is required."
Examples:
|usertype|LastName   |Email	              |Country |Land_Phone |
|LOGOUT	 |AuxTestLast|AuxTest123@gmail.com|Srilanka|2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-45 : Service provider is not able to sign up without firstname provided
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button
Then I should see the firstname validation failure prompt with "This field is required."
Examples:
|usertype |FirstName   |Email	            |Country |Land_Phone |
|LOGOUT	  |AuxTestFirst|AuxTest123@gmail.com|Srilanka|2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-46 : Service provider is not able to sign up without email provided
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button
Then I should see the email validation failure prompt with "This field is required."
Examples:
|usertype  |LastName   |FirstName   |Country	|Land_Phone |
|LOGOUT	   |AuxTestLast|AuxTestFirst|Srilanka   |2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-47 :: Version : 1 :: Service provider is not able to sign up using invalid email address
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on apimanager Sign-up for a new account submit button
Then I should see the email validation failure prompt with "Invalid email address"
Examples:
|usertype  |LastName   |FirstName   |Email	   |Country	|Land_Phone |
|LOGOUT	   |AuxTestLast|AuxTestFirst|AuxTest123|Srilanka|2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-48 : Service provider is not able to sign up using a password that doesn't match minimum requirements
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter invalid value to apimanager Sign-up for a new account Password as "<Password>"
And I enter invalid value to apimanager Sign-up for a new account Re type Password as "<Password>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button
Then I should see the password validation failure prompt with "Enter a more secure password"
Examples:
| usertype  |Password   |LastName   |FirstName   |Email	              |Country |Land_Phone |
|LOGOUT		|asd		|AuxTestLast|AuxTestFirst|AuxTest123@gmail.com|Srilanka|2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-49 : Service provider is not able to sign up using existing username
Given I am in identity server page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2Telco Hub Home"
When I click on identity server Main tab
And I click on identity server Configuration Users and Roles List link
Then I should see ids Configuration menu with first item as "Users and Roles"
When I click identity server User Management Users link
Then I should see ids User Management Users page header as "Users"
When I clear existing users "<usertype>"
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on apimanager Sign-up for a new account submit button
Then I should see the apimanager Sign-up for a new account success pop up with "User added successfully. You can now sign into the API store using the new user account".
When I click on apimanager Sign-up for a new account success pop up ok button
Then I should see the apimanager "Login" pop up
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on link that given to expand optional fields.
And I Enter Country as "<Country>"
And I Enter Land Phone as "<Land_Phone>"
And I click on apimanager Sign-up for a new account submit button
Then I should see the apistore error pop up with "User name already exists"
And I click on apistore error pop up ok button
Examples:
|usertype      |LastName   |FirstName   |Email	             |Country	|Land_Phone |
|SUBSCRIBERAPP |AuxTestLast|AuxTestFirst|AuxTest123@gmail.com|Srilanka  |2324434    |

@InternalGateway @ExternalGateway 
Scenario Outline: HUB-50 : Service provider signs up without providing optional information
Given I am in identity server page
When I enter identity server username credentials
And I click on identity server sign in
Then I should see the ids Home page header as "WSO2Telco Hub Home"
When I click on identity server Main tab
And I click on identity server Configuration Users and Roles List link
Then I should see ids Configuration menu with first item as "Users and Roles"
When I click identity server User Management Users link
Then I should see ids User Management Users page header as "Users"
When I clear existing users "<usertype>"
Given I am in apimanager
When I click on apimanager sign-up button
Then I should see the apimanager sign-up for a new account form as "Create your Account"
When I enter apimanager Sign-up for a new account username for "<usertype>"
And I enter apimanager Sign-up for a new account Password for "<usertype>"
And I enter apimanager Sign-up for a new account Re-type password for "<usertype>"
And I enter apimanager Sign-up for a new account Last name as "<LastName>"
And I enter apimanager Sign-up for a new account First name as "<FirstName>"
And I enter apimanager Sign-up for a new account Email as "<Email>"
And I click on apimanager Sign-up for a new account submit button 
Then I should see the apimanager Sign-up for a new account success pop up with "User added successfully. You can now sign into the API store using the new user account".
When I click on apimanager Sign-up for a new account success pop up ok button
Then I should see the apimanager "Login" pop up
When I enter apimanager Login username and password for "<usertype>"
And I click on apimanager Login pop up login button
Then I should see apimanager "<usertype>" at the top right corner of the page
Examples:
|usertype       |LastName   |FirstName   |Email	              |
|APPCREATE   	|AuxTestLast|AuxTestFirst|AuxTest123@gmail.com|