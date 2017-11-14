//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 1. define
var name : Optional<String> = nil
var age : Int? = nil

// 2 assign value
name = "jack"
age = 18
print(name)
print(name!) // ----------------------------------------> use ! to force unwrapping

// 3 the way to use optional types
if name != nil{
    print(name!)
}

// 4. optional binding ---------------------------------> this way is more convenient than using !
if let tempName = name {
    print(tempName)
}

// 5. example
let url : NSURL? = NSURL(string: "http://www.google.com")
if let url = url {
    let request = NSURLRequest(URL: url)
}