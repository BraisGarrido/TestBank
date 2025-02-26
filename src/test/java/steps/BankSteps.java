package steps;

import io.cucumber.java.en.Given;
import pages.HomePage;

public class BankSteps {
    HomePage landingPage = new HomePage();

    @Given(value = "Open web")
    public void navigateToBank() {
        landingPage.navigateToBank();
    }
}
