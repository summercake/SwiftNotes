//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 7 Array
// define array
// methods : removeAll, removeAtIndex, count, append, insert
// if the type of two array are different, this two can not be merged
let ar : Array<String> = ["jack","mike","John"] // --------------------------------------> imutable
let array : [Int] = [1,2,3,4]; // -------------------------------------------------------> imutable

var arrM = Array<String>(arrayLiteral: "China","USA","Russian") // ----------------------> mutable
var arrayM = [String](arrayLiteral: "China","USA","Russian") // -------------------------> mutable

let arr = [Int](repeating:0,count:3);
print(arr);

arrayM[2] = "Canada";
arrayM.append("UK");
arrayM += ["India"];
arrayM.insert("Korean", at: arrayM.count)
for item in arrayM {
    print(item);
}

for i in 0..<arrayM.count{
    print(arrayM[i])
}

for i in 0..<2 {
    print(arrayM[i])
}

var intsA = [Int](repeating: 2, count:2);
var intsB = [Int](repeating: 1, count:3);
var intsC = intsA + intsB; // -----------------------------------------------------------> merge


for item in intsC {
    print(item);
}
if intsC.isEmpty {
    print("This is an empty array");
}else{
    print("\(intsC.count)");
}
