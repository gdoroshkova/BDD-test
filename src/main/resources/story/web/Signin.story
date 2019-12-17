Description: Sign in scenario and visual checks;
Meta:
@skip
Scenario: Sign in
Given I am on a page with the URL 'https://trello.com'
When I click on an element by the xpath '//a[@href='/login']'
When I enter 'doroshkovag@ya.ru' in a field by the xpath '//*[@id="user"]'
When I click on an element by the xpath '//*[@id="login"]'
When I click on an element by the xpath '//*[@id="login-submit"]'
When I enter '098_Halk' in a field by the xpath '//*[@id="password"]'
When I click on an element by the xpath '//*[@id="login-submit"]'
Then the page with the URL 'https://trello.com/doroshkovag/boards' is loaded

Scenario: Visual check for main page
Given I am on the main application page
When I click on an element by the xpath '//span[@class="icon-home icon-sm _2aV_KY1gTq1qWc"]'
When I COMPARE_AGAINST baseline with `MainPage`

Scenario: Visual check for templates menu
Given I am on the main application page
When I click on an element by the xpath '//span[@class="icon-template-board icon-sm _2aV_KY1gTq1qWc"]'
When I COMPARE_AGAINST baseline with `Templates`

Scenario: Visual check for board menu
Given I am on the main application page
When I click on an element by the xpath '//span[@class="icon-board icon-sm _2aV_KY1gTq1qWc"]'
When I COMPARE_AGAINST baseline with `Boards`

Scenario: Visual check for create board
Given I am on the main application page
When I click on an element by the xpath '//span[@name="add"]'
When I click on an element by the xpath '//button[@data-test-id="header-create-board-button"]/span[@name="board"]'
When I COMPARE_AGAINST baseline with `CreateBoard`

Scenario: Visual check for log out page
Given I am on the main application page
When I click on an element by the xpath '//span[@class="_24AWINHReYjNBf"]'
When I click on an element by the xpath '//button[@data-test-id="header-member-menu-logout"]'
When I COMPARE_AGAINST baseline with `logout`
