#User Story 1
Feature: User Registration
    As a new user I want to open an account with the Planetarium so I can save my celestial findings

    Background: Registration Starting Actions
        Given   the user is on the login page
        When    the user clicks the register link

    #Happy Path
    Scenario: Users can register a new account with valid credentials
    #TODO: make sure to use valid username/password in step implementation
        When    the user provides a valid username
        And     the user provides a valid password
        And     the user submits the credentials
        Then    the user should get a browser alert saying "Account created successfully"
        And     the user should be redirected to the login page

    #Sad Path
    Scenario Outline: Users can not register a new account with invalid credentials
        When    the user provides a invalid username "<username>"
        And     the user provides a invalid password "<password>"
        And     the user submits the credentials
        Then    the user should get a browser alert saying "<alert>"
        And     user should stay on registration page

    Examples:
        |                username               |                 password              |           alert          |
        |    Batman                             |    Krypton-was_2000		            |    Invalid username      |
        |    Bane                               |    Krypton-was_2000		            |    Invalid username      |
        |    wonder_woman_for_the_DC_theming    |    Krypton-was_2000		            |    Invalid username      |
        |    2face                              |    Krypton-was_2000		            |    Invalid username      |
        |    joker!!!!!!?)                      |    Krypton-was_2000		            |    Invalid username      |
        |    Super_man-2001	                    |    b0Ts	                            |    Invalid password      |
        |    Super_man-2001	                    |    AlfredIsTheBestButlerToExist111	|    Invalid password      |
        |    Super_man-2001	                    |    3atman	                            |    Invalid password      |
        |    Super_man-2001	                    |    A1fredIsTheBestButlerToExist!!	    |    Invalid password      |
        |    Super_man-2001	                    |    batman1	                        |    Invalid password      |
        |    Super_man-2001	                    |    BATMAN1	                        |    Invalid password      |
        |    Super_man-2001	                    |    Robin	                            |    Invalid password      |