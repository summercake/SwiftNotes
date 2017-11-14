//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person : NSObject{
    var name : String?
    var age : Int = 0;
    
    // self define constructor 1
    init(name : String, age : Int) {
        super.init()
        self.name = name
        self.age = age
        print("init")
    }
    
    // self define constructor 2
    init(dict : [String : AnyObject]) {
        print("dict")
        //self.name = dict["name"] as? String ---------------------------> self.name is String?, so it doesn't need to use !
        //self.age = (dict["age"] as? Int)! -----------------------------> self.age is Int, so it needs to use !
        if let tempName = dict["name"] as? String {
            self.name = tempName
        }
        if let tempAge = dict["age"] as? Int {
            self.age = tempAge
        }
    }
    
    // override base class constructor
    override init() {
        super.init() // --------------------------------------------------> it can be ignored
        print("override init")
    }
}

let p = Person()
let p1 = Person()
let p2 = Person()
let p3 = Person(name : "jack", age : 18)
let p4 = Person(dict : ["name" : "jack", "age" : 18, "height" : 1.88])
