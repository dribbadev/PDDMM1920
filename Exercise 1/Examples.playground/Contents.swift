import UIKit

var string = "This is a string" // Declaración de variable implícita
var sString: String = "This is also a string" // Declaración de variable explícita

var number = 0
var iNumber: Int = 0

var double: Double = 0.0

var array: [String] = ["One", "Two", "Three"]
var emptyArray = [String]()

var dictionary = ["elementOne": 1, "elementTwo": 2]
dictionary["elementThree"] = 3

let constant = 3
//var notDefintedNumber



var whatIsThis: String?
print(whatIsThis)

whatIsThis = "This is Sparta"

// Optional Binding
if let iKnowWhatIsThat = whatIsThis {
    print(iKnowWhatIsThat)
}
print(whatIsThis!)

/* while */
while (true) { }

/* for loop */
for idx in 1...3 { }
for idx in 1..<3 { }

/* for-in loop */
for element in array {}

/* switch */
switch constant {
case 3:
    print("The variable is 3!!")
default:
    print("The variable is not 3 :(")
}

/* if / if else*/
if constant == 3 { }
else { }

/* ternary operator */
let constantIsThree: String = constant == 3 ? "Is three!" : "Not three!"
