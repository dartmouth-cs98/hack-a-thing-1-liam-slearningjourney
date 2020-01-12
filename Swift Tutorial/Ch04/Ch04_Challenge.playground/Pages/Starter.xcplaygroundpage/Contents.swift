/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
 6a. exp is equal to 32
 6b. exp is between 200 and 500
 6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
// 1
var lefthandWeapon: String? = "pie", righthandWeapon: String? = "fist"

// 2
if let leftWeapon = lefthandWeapon, let rightWeapon = righthandWeapon {
    print("You're carrying a \(leftWeapon) in your left hand and a \(rightWeapon) in your right hand.")
} else {
    print("You don't have two weapons.")
}

// 3
var playerExp: [String : Int] = ["Liam" : -3, "Max" : 3, "Mitch" : -6, "Sriram" : 9]

// 4, 5, 6
for (player, XP) in playerExp {
    print("\(player) has \(XP) XP.")
    guard XP > 0 else {
        print("\(player), you have no experience!")
        continue
    }
    switch XP {
    case 32:
        print("32!")
    case 201...500:
        print("Between 200 and 500!")
    case (let localXP) where localXP > 500:
        print("Time to level up!")
    default:
        print("Gain more XP!")
    }
}
