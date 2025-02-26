package pages;


public class HomePage extends BasePage {
    public HomePage() {
        super(driver);
    }

    public void navigateToBank() {
        navigateTo("https://www.globalsqa.com/angularJs-protractor/BankingProject/#/login");
    }
}
