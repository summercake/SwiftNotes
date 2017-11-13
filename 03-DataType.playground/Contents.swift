//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 4. Data Type -----------------------------------> Swift is a strongly-typed language
// Different Type can not calculate
// There is no implicit conversion



// 4.1 Int
// 4.1.1 Int8 Int16 Int32 Int64 -------------------> Those have +- symbol
// 4.1.2 UInt UInt8 UInt16 UInt32 UInt64 ----------> Those don't have +- symbol
var intType : Int = 1;
var uIntType : UInt = 2;

// 4.2 Float
//     The decimal default precision of swift is double
// 4.2.1 Float : Single Precision
// 4.2.2 Double : Double Precision
var floatType : Float = 1.1;
var doubleType : Double = 2.2;
var sum4 = Double(floatType) + doubleType;

// 4.3 Bool ---------------------------------------> Swift 没有非0即真
var boolNum = 1;
var boolValue = boolNum > 0 ? "true" : "false";
print(boolValue);

// 4.4 String
var stringType = "Hello Swift";
print(stringType);

// 4.5 Char
var charType = "a";
print(charType);

// 4.6 Optionals
//     It means null or some value
var optionlInt1 = Int?.self;
var optionlInt2 = Optional<Int>.self;

// 4.6.1 force unwrapping
var myString1:String?;
myString1 = "Hello, Swift!";
if myString1 != nil {
    print(myString1!);
}else{
    print("myString1 is nil");
}
// 4.6.2 auto unwrapping
var myString2:String!;
myString2 = "Hello, Swift!"
if myString2 != nil {
    print(myString2)
}else{
    print("myString2 is nil")
}

// 4.6.3 optional binding
var myString3:String?
myString3 = "Hello, Swift!"
if let yourString = myString3 {
    print("your string is - \(yourString)")
}else{
    print("your string is null")
}

// 4.7 typealias : assign another name for type
typealias int = Int;
typealias double = Double;

// 4.8 Type Safe
//     No implicit conversion in swift; you must use explicit conversion in swift;
var num1 = 1;
var num2 = 2.5;
var num3 = Double(num1) + num2;
var num4 = num1 + Int(num2);
