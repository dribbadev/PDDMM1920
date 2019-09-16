import UIKit

let whereIsWaldo = ["Whitebeard", "Wood", "Whitebeard", "Wilma", "Wilma", "Wood", "Whitebeard", "Whitebeard", "Wilma", "Wilma", "Odlaw", "Wilma", "Wood", "Whitebeard", "Whitebeard", "Whitebeard", "Whitebeard", "Wenda", "Wood", "Wood", "Wood", "Wilma", "Whitebeard", "Wilma", "Whitebeard", "Wenda", "Wenda", "Whitebeard", "Odlaw", "Odlaw", "Wenda", "Wenda", "Wood", "Whitebeard", "Whitebeard", "Odlaw", "Wilma", "Whitebeard", "Waldo", "Odlaw"]

/* Ex1. Implement a Where is Waldo algorithm.
    - Show the user the position of Waldo in the array.
    - Show the user how many of every characters are in the array (Sorted by number of appearances)
    - User for-in loops rather than regular for loops.
    - Structure the code as good as you can.
 */

/* We define the variables we need for our execution */
var waldoIdxPosition: Int?
let waldo: String = "Waldo"
var allCharacters: [String: Int] = [String: Int]()

/* We look for the position of Waldo */
/* We also look for the recurrence of all the other characters */
for (idx, character) in whereIsWaldo.enumerated() {
    if character == waldo {
        waldoIdxPosition = idx
    }
    
    if allCharacters[character] == nil {
        allCharacters[character] = 1
    } else {
        allCharacters[character]! += 1
    }
}

/* We show the user the position of Waldo */
if let position = waldoIdxPosition {
    print("I found Waldo!!! He is on position: \(waldoIdxPosition!)📍\n")
} else {
    print("Ouch... Waldo is not here...❌")
}

/* We sort the characters from higher ocurrance to lower. */
let sortedCharacters = allCharacters.sorted {
    $0.1 > $1.1
}

/* We print the sorted characters and we show if singular/plural */
for character in sortedCharacters {
    print(character.value == 1 ? "There is \(character.value) \(character.key) in the array." : "There are \(character.value) \(character.key) in the array.")
}
