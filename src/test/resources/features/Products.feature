Feature: Products

  Background:
    Given User already logged in
    And User click "Store" -> "Product" from menu


  Scenario: Verify that user can create new product
    When User click Add Product button
    And User send "!'^+%&/()=?" to "<field>"
      | Product Name EN        |
      | Product Name AR        |
      | Product Description EN |
      | Product Description AR |
      | Country Of Origin      |
      | SKU                    |

    And User select "Kilogram" from Weight Unit
    And User select "Centimeter" from Length Unit
    And User send "10" to "<field>"
      | Weight |
      | Length |
      | Width  |
      | Height |

    And User select "Beauty" from Product Category
    And User send "10" to "<field>"
      | Price                |
      | Sale Price           |
      | Available Quantity   |
      | Daily Quantity Limit |

    And User select "Available" from Availability
    And User select "display Available Quantity to Customers" from Display Availability Quantity
    And User click Submit button
    Then Verify that product is added

