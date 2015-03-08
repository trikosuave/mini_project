Feature: Web Server Created by CloudFormation for the Mini Project
  As a Developer
  I would like my web server provisioned correctly
  so I can impress my potential future employer and co-workers

  Scenario: Is the proper version of Apache installed?
    When I run `/usr/sbin/httpd -v`
    Then the output should contain "2.2.29"
  
  Scenario: Is apache running?
    When I run `/sbin/service httpd status`
    Then the output should contain "running"
  
  Scenario: Is apache hosting the proper content?
    When I run `/usr/bin/curl http://localhost`
    Then the output should contain "Automation for the People"
