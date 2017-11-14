//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 8 Dictionary
// imutable
let dict1 : [String : NSObject] = ["name" : "jack", "age" : 18, "height" : 1.86]
let dict2 : [String : Any] = ["name" : "jack", "age" : 18, "height" : 1.86]
let dict3 : [String : AnyObject] = ["name" : "jack", "age" : 18, "height" : 1.86]
let dict4 : Dictionary<String, NSObject> = ["name" : "jack", "age" : 18, "height" : 1.86]

// mutable
var dictM1 = [String:NSObject]()
var dictM2 = [String:AnyObject]()

// add
dictM1["name"] = "Jack"
dictM1["age"] = 18
dictM1["height"] = 1.88
dictM1["weight"] = 95

// remove
dictM1.removeValueForKey("weight")

// get
var name = dictM1["name"]

for key in dictM1.keys{
    print(key)
}

for value in dictM1.values{
    print(value)
}

for (key, value) in dictM1{
    print("\(key) : \(value)")
}

// merge
for (key, value) in dictM1{
    dictM2[key] = value
}






//var dic : [Int : String] = [1:"Cat",2:"Dog",3:"Pig"];
//dic[2] = "Human";
//dic.removeValue(forKey: 0);
//for (key, value) in dic {
//    print("\(key) :  \(value)");
//}
//if dic.isEmpty {
//    print("This is an empty dictionary");
//}else{
//    print("\(dic.count)");
//}

