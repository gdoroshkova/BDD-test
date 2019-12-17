Description: Sign Up scenario using examples table and expression
Meta:
@skip
Scenario: Sign up
Given I am on the main application page
When I click on an element by the xpath '//a[@data-analytics-event="clickedSignupHeaderButton"]'
When I enter `<email>` in the registration form
When I click on an element by the xpath '//*[@id="signup"]'
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
Examples:
|email|password|
|123@ya.ru|654_Halina|
|#{generate(Internet.emailAddress)}|#{generate(regexify'awsderfgtyh234780{10}')}|
