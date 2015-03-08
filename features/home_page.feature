Feature: Viewer visits the homepage
  In order to know the web server deployed
  As a web page viewer
  I want to see a homepage with content and a title

  Scenario: View home page
    Given I am on the home page
    Then I should see "Automation for the People"

  Scenario: View home page title
    Given I am on the home page
    Then I should see "Patrick Ryan's Mini Project" in the title
