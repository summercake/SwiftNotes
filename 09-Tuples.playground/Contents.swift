//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// array
let array = ["why", 18, 1.88]
array[0]
array[1]

// dictionary
let dict = ["name" : "jack", "age" : 18, "height" : 1.88]

// tuple
// Normally, it used for return value of method
let tuple = ("jack", 18, 1.88)
tuple.0
tuple.1
tuple.2

// tuple members with alias
let tup = (name : "why", age : 18, height : 1.88)
tup.name
tup.age
tup.height

// tuple special format
let (name, age, height) = ("jack", 18, 1.88)
print(name)
print(age)
print(height)
