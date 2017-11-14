//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// define a class
class Person : NSObject{
    
    // property
    var age : Int = 0
    
    //override
    override func setValue(value: AnyObject?, forKey key: String) {
        
    }
}

// create object
let p = Person()

// assign value to property
p.age = 20
p.setValuesForKeysWithDictionary(["age" : 18])
print(p.age)


