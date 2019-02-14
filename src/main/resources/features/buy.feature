Feature: Buy products
    As a manager
    I want to manage inventory stock levels
    So that we know when we need to reorder stock.

Background:
    Given a product Bread with quantity 10 price 50.00
    And a product Jam with quantity 5 price 20.00
    And a product Butter with quantity 2 price 10.00

Scenario: Buy from stock product
    When I buy Bread with quantity 2
    Then total should be 100.00
    Then there's 8 items of Bread left

Scenario: Buy and empty stock
    When I buy Jam with quantity 5
    Then total should be 100.00
    Then there's 0 items of Jam left