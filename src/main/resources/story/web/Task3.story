Description: Sign in scenario with composite step and Visual check with nested steps;

Scenario: Sign in
Given I am on a page with the URL 'https://trello.com'
When I click on an element by the xpath '//a[@href='/login']'
When I login
Then the page with the URL 'https://trello.com/doroshkovag/boards' is loaded

Scenario: Visual check for templates menu
Given I am on the main application page
When I click on an element by the xpath '//span[@class="icon-template-board icon-sm _2aV_KY1gTq1qWc"]'
When I find = '1' elements by By.xpath(//div[@class="all-boards"]) and for each element do
|step|
|When I COMPARE_AGAINST baseline with `Templates`|
