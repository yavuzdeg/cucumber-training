package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;
/*
This will run the feature files
@RunWith is used to run the java class. This is a Cucumber-JUnit annotation
@CucumberOptions is used to add features, glue, plugins, tags, dryRun. This is a Cucumber-JUnit annotation
-features : points to the path of the features folder
-glue     : points to the path of the stepdefinitions folder
-tag      : this marks which feature files to run.Tags can be given any value
-dryRun = true : Run tests without browser to check if there is missing step definition.
dryRun=true is only used to check if anything is missing in the step definition class
-dryRun = false: Run tests on the browser. To run tests we should make dryRun false.

*/
@RunWith(Cucumber.class)
@CucumberOptions(
//        html = TYPE OF THE REPORTS
//        target= REPORT FOLDER
//        default-cucumber-reports= REPORT NAME
        plugin = {
                "html:target/default-cucumber-reports",
                "json:target/json-report/cucumber.json",
                "junit:target/xml-report/cucumber.xml",
                "rerun:target/failedRerun.txt"
        },
        features = "./src/test/resources/features",
        glue = "stepdefinitions",
        tags = "@google_search",
        dryRun = false
)
public class Runner {
}

