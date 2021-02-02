Feature: Performing a Google Search

              As a user on the Google search page
              I want to search for Selenium-Webdriver
    Because I want to learn more about it

        Background:
            Given I open the url "https://google.com"

        @Verbose
        Scenario Outline: Searching for term "<searchItem>"
             When I set "<searchItem>" to the inputfield "[name=q]"
              And  I press "Enter"
             Then I expect that element "#search" becomes displayed

        Examples:
                  | searchItem         |
                  | Selenium Webdriver |
                  | Docker             |
                  | atlasid tech       |