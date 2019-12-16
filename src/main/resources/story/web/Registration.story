Description: Sign up scenarios;


Scenario: Sign up by examples table using
Given I am on the main application page
When I click on an element by the xpath '//a[@data-analytics-event="clickedSignupHeaderButton"]'
When I enter <email> in a field by the xpath '//*[@id="email"]'
When I click on an element by the xpath '//*[@id="signup"]'
When I enter <password> in a field by the xpath '//*[@id="password"]'
When I click on an element by the xpath '//*[@id="signup-submit"]'

Examples:
|email|password|
|123@ya.ru|654_Halina|
|#{generate(Internet.emailAddress)}|#{generate(regexify 'awsderfgtyh234780{10}')}|

