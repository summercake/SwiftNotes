//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Student : NSObject{
    
    // Define properties
    
    // 1. Stored Property ------------------------------------------> used for store data
    var age : Int = 0
    var name : String? = nil
    var mathScore : Double = 0
    var chineseScore : Double = 0
    
    // 2. Computed Property ----------------------------------------> used for realizing some action
    var averageScore : Double {
        return (mathScore + chineseScore)/2
    }
    
    // 3. Type Property --------------------------------------------> normally used for singleton
    static var courseCount : Int = 0
    
    // define method -----------------------------------------------> not recommended
    func getAverageScore() -> Double {
        return (mathScore + chineseScore)/2
    }
}

let stu = Student()
stu.age = 10
stu.name = "jack"
stu.mathScore = 88
stu.chineseScore = 59
if let name = stu.name{
    print(name)
}

let averageScore = stu.getAverageScore()