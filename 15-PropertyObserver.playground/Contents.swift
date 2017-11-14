//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person : NSObject {
    //property observer
    var name : String?{
        willSet { // -------------------------------------> to get info before property change
            print(name)
            print(newValue) // ---------> newValue is a system variable
        }
        didSet{ // ---------------------------------------> to get info after property change
            print(name)
            print(oldValue) // ---------> newValue is a system variable
        }
    }
}

class MyCell : UITableViewCell{
    var person : Person?
}
let p = Person()
p.name = "jack"
p.name = "mike"