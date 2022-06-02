Feature: Products

  Background:
    Given User already logged in
    And User click "Store" -> "Product" from menu

  @wip
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
    And User select "Display Available Quantity to Customers" from Display Availability Quantity
    And User click Submit button
    Then Verify that product is added

  Scenario: Verify that user CAN NOT create product with empty Product Name EN

  Scenario: Verify that user CAN NOT create product with empty Product Name AR

  Scenario: Verify that user CAN NOT create product with empty Product Description EN

  Scenario: Verify that user CAN NOT create product with empty Product Description AR

  Scenario: Verify that user CAN NOT create product without selecting Product Category

  Scenario: Verify that user CAN NOT create product with empty Price

  Scenario: Verify that user CAN NOT create product with Price value 0

  Scenario: Verify that user CAN NOT send string value to Weight text box

  Scenario: Verify that user CAN NOT send string value to Length text box

  Scenario: Verify that user CAN NOT send string value to Width text box

  Scenario: Verify that user CAN NOT send string value to Height text box

  Scenario: Verify that user CAN NOT send string value to Available Quantity text box

  Scenario: Verify that user CAN NOT send string value to Daily Quantity Limit text box

  Scenario: Verify that user can delete the product that already created

  Scenario: Verify that user can edit the product that already created

  Scenario: Verify that user can search the product using Thumbnail

  Scenario: Verify that user can search the product using Product Category

  Scenario: Verify that user can search the product using Product Price

  Scenario: Verify that user can search the product using Sold Quantity

  Scenario: Verify that user can search the product using Available Quantity

  Scenario: Verify that user can search the product using Actions