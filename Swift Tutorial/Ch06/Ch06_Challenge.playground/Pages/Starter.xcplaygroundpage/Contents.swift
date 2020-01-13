/*:
 # Chapter Challenge: Inventory Management
 ---
 
 ### Tasks
 1. Create a class called **Item** and declare properties for **name**, **price**
 2. Declare a default initializer and set the instance properties
 3. Create a struct called **BonusEffect** and declare an integer property named **bonus**
 4. Add an optional **BonusEffect** property to **Item** named **secret**
 5. Create a new class called **Inventory** with an Items array property named **storedItems**
 6. Declare a default initializer that takes in an array of Items and assigns them to **storedItems**
 7. Create a **BonusEffect** and two **Ite** instances and assign the bonus effect as one items **secret**
 8. Create an **Inventory** instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items **bonus** value
 
 [Previous Topic](@previous)
 
 */
// 1, 2, 4
class Item {
    var name: String
    var price: Double
    var secret: BonusEffect?
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
}

// 3
struct BonusEffect {
    var bonus: Int
}

// 5, 6
class Inventory {
    var storedItems: [Item]
    
    init(items: [Item]) {
        storedItems = items
    }
}

// 7
var bonus1 = BonusEffect(bonus: 10)
var item1 = Item(name: "hammer", price: 100)
var item2 = Item(name: "wand", price: 300)
item2.secret = bonus1

// 8
var inventory = Inventory(items: [item1, item2])
if let item2Bonus = inventory.storedItems[1].secret?.bonus {
    print("The bonus of \(inventory.storedItems[1].name) is \(item2Bonus)")
}
