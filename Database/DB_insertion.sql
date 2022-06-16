use `OCPizzaDB`;

INSERT INTO `Address` (`streetNumber`, `streetName`, `additional`, `zipCode`, `city`, `country`, `comments`)
VALUES
("3", "rue de la galaxy", "quelque part dans l'univers", "67000", "Strasbourg", "France", NULL),
("9", "boulevard de Mercury", NULL, "67000", "Vancouver", "France", NULL),
("12", "rue de la paix", "face à l'hotel", "67000", "Grenoble", "France", NULL),
("16", "route de la soie", NULL, "67000", "Nancy", "France", NULL),
("24", "rue de l'infini", "traverser le multivers", "67000", "Strasbourg", "France", "attention à la folie du multivers");



INSERT INTO `Customer` (`firstName`, `lastName`, `email`, `phoneNumber`, `password`)
VALUES
("Freddie", "Mercury", "queen@mail.com", "+1 213 947 3545", "123Freddie"),
("Michael", "Jackson", "moonwalk@mail.com", "+1 213 937 3500", "123Michael"),
("John", "Lenon", "beatles@mail.com", "+1 213 547 3546", "123John"),
("Stevie", "Wonder", "stevie@mail.com", "+1 213 947 3574", "123Stevie"),
("Riley", "B.King", "b.b.king@mail.com", "+1 213 944 3597", "123Riley");


INSERT INTO `OpeningHours` (`day`, `openingHour`, `closingHour`, `isOpen`)
VALUES
("monday", "11:30:00", "23:00:00", true),
("tuesday", "11:30:00", "23:00:00", true),
("wednesday", "11:30:00", "23:00:00", true),
("thursday", "11:30:00", "23:00:00", true),
("friday", "11:30:00", "23:00:00", true),
("saturday", "11:30:00", "23:00:00", true),
("sunday", "11:30:00", "23:00:00", false);


INSERT INTO `Restaurant` (`name`, `Address_id`)
VALUES
("OC Pizza - place de la galaxy", 1),
("OC Pizza - place de la paix", 3),
("OC Pizza - place Mercury", 2);


INSERT INTO `Order` (`timestamp`, `status`, `deliveryMethod`, `paymentMethod`, `isPaid`, `Customer_id`, `Restaurant_id`, `Address_id`)
VALUES
(NOW(), "pending", "onSite", "onsite_cash", false, 2, 1, 1),
(NOW(), "processing", "HomeDelivery", "online_creditCard", true, 1, 2, 4),
(NOW(), "readyForPickUp_Paid", "onSite", "onsite_cash", false, 3, 3, 3),
(NOW(), "delivered", "HomeDelivery", "online_paypal", true, 4, 3, 5);


INSERT INTO `Billing` (`amount`, `Order_id`)
VALUES
(21.00, 1),
(08.00, 2),
(16.00, 3),
(29.00, 4);


INSERT INTO `InventorySystem` (`Restaurant_id`)
VALUES
(1),
(2),
(3);


INSERT INTO `Stock` (`name`, `quantity`, `unit`, `InventorySystem_id`)
VALUES
("farine", 50.75, "kilo", 1),
("sauce", 30, "litre", 1),
("mozzarella", 10.5, "kilo", 1),
("levure", 600, "gramme", 1),
("peperoni", 3.6, "kilo", 1),
("farine", 24.2, "kilo", 2),
("sauce", 50, "litre", 2),
("mozzarella", 20, "kilo", 2),
("levure", 200, "gramme", 2),
("peperoni", 0, "kilo", 2),
("farine", 35.5, "kilo", 3),
("sauce", 12, "litre", 3),
("mozzarella", 5, "kilo", 3),
("levure", 1000, "gramme", 3),
("peperoni", 10.5, "kilo", 3);


INSERT INTO `Ingredient` (`name`, `unit`, `Stock_id`)
VALUES
("farine", "gramme", 1),
("sauce", "militilitre", 2),
("mozzarella", "gramme", 3),
("levure", "gramme", 4),
("peperoni", "gramme", 5);


INSERT INTO `Item` (`name`, `description`, `price`)
VALUES
("Pizza Peperoni", "Pizza with delicious slices of smoked Peperoni", 12.00),
("Pizza Margherita", "Pizza with tomato sauce, Thym and Mozza", 6.00),
("Pizza Double Mozza", "Pizza with tomato sauce, Thym and double portion of Mozza", 8.00),
("Coca", NULL, 1.00),
("Icetea", NULL, 1.00);


INSERT INTO `RestaurantMenu` (`Restaurant_id`)
VALUES
(1),
(2),
(3);


INSERT INTO `Recipe` (`name`, `instructions`, `Item_id`)
VALUES
("Pizza Peperoni", "1/We do this. 2/We do that. 3/And voila", "1"),
("Pizza Margherita", "1/We do this. 2/We do that. 3/And voila", "2"),
("Pizza Double Mozza", "1/We do this. 2/We do that. 3/And voila", "3");


INSERT INTO `Staff` (`firstName`, `lastName`, `email`, `phoneNumber`, `password`, `position`, `Restaurant_id`)
VALUES
("Elon", "Musk", "tesla@mail.com", "+1 213 947 3545", "taralala", "host", 1),
("Jeff", "Bezos", "amazon@mail.com", "+1 213 947 3545", "taralala", "chef", 1),
("Warren", "Buffett", "hathway@mail.com", "+1 213 947 3545", "taralala", "deliveryMan", 1),
("Tony", "Robbins", "giant@mail.com", "+1 213 947 3545", "taralala", "deliveryMan", 1),
("Garfield", "LeChat", "eat_sleep@mail.com", "+1 213 947 3545", "taralala", "Admin", 1);


INSERT INTO `Order_has_Item` (`Order_id`, `Item_id`, `quantity`)
VALUES
(1, 1, 1),
(1, 3, 1),
(1, 4, 1),
(2, 3, 1),
(3, 3, 2),
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(4, 4, 1),
(4, 5, 2);

INSERT INTO `Recipe_has_Ingredient` (`Recipe_id`, `Ingredient_id`, `amount`)
VALUES
(1, 1, 200),
(1, 2, 60),
(1, 4, 3),
(1, 5, 50),
(2, 1, 200),
(2, 2, 60),
(2, 3, 60),
(2, 4, 3),
(3, 1, 200),
(3, 2, 60),
(3, 3, 100),
(3, 4, 3);


INSERT INTO `RestaurantMenu_has_Item` (`RestaurantMenu_id`, `Item_id`)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 1),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 4),
(3, 5);


INSERT INTO `Customer_has_Address` (`Customer_id`, `Address_id`)
VALUES
(1, 2),
(2, 4),
(3, 4),
(3, 5),
(5, 1);


INSERT INTO `Restaurant_has_OpeningHours` (`Restaurant_id`, `OpeningHours_id`)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7);
