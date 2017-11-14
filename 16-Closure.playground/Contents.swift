//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// closure syntax
let studname = { print("Swift 闭包实例。") }
studname()

let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let result = divide(200, 20)
print (result)

// closure expression
let names1 = ["AT", "AE", "D", "S", "BE"]

// if need to sort array, the closure params must be (String, String) -> Bool。
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversed1 = names1.sort(backwards)

print(reversed1)

// closure params abbreviation
let names2 = ["AT", "AE", "D", "S", "BE"]

var reversed2 = names2.sort( { $0 > $1 } )
print(reversed2)

// operator function
let names3 = ["AT", "AE", "D", "S", "BE"]

var reversed3 = names3.sort(>)
print(reversed3)