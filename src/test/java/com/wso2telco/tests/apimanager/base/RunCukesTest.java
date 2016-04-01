package com.wso2telco.tests.apimanager.base;
import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)

@CucumberOptions(plugin = { "pretty","html:target/cucumber-html-report","json:target/cucumber-report.json" },
		 features = {

		"src/test/resources/feature/MIIFE_RTC_002.feature"
		//"src/test/resources/feature/publisher.feature"
				
},
glue={
		"com.wso2telco.tests.apimanager.base",
		"com.wso2telco.tests.apimanager.steps.apimanager",
		"com.wso2telco.tests.apimanager.steps.apipublisher",
		"com.wso2telco.tests.apimanager.steps.idserver"
},
tags = //"@smoke"
{
		"@Smoke" 
}
)
public class RunCukesTest {

}