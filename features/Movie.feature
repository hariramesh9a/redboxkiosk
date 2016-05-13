Feature: Test Redbox Kiosk
  1. Kiosk should allow to draw a movie if its available and give a success message and movie qty reduce by 1 and users qty increase by 1
  2. Kiosk should throw an error if you enter a movie which is not available
  3. When the movie is rented out movie count decreases in the kiosk and increases for the user
  4. Put movie back

  Scenario: Draw a Movie from Kiosk
    Given Kiosk has movies available
    When Customer selects a movie to withdraw
    Then Kiosk should successfully let the user Rent the movie
    And Kiosks move qty should be rreduced by one
    And Users movie qty should be increased by one

