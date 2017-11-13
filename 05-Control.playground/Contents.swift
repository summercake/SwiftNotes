//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 5. Control Flow
// 5.1 Condition
// 5.1.1 if
let num = 40;
if num > 10 {
    print("num is bigger than 10");
}
if num > 20 { print("num is bigger than 20"); }
num >= 20 ? print("num is equal bigger than 10") : print("num is smaller than 10");


// 5.1.2 guard -----------------------------------------------> syntax candy
// "else" must be used after "guard"
// It only can be used in function
var age = 18
var money = 100
func adultOrNot(age : Int, money : Double){
    
    /**
     if  age >= 18 {
     if money > 0 {
     print("adult game is starting")
     }else{
     print("Go back home")
     }
     }else{
     print("Go back home")
     }
     */
    
    // guard can make code more clear
    guard age >= 18 else{
        print("Go back home")
        return
    }
    guard money > 0 else{
        print("Go back home")
        return
    }
    print("adult game is starting")
}
adultOrNot(age: 18, money: 100)

// 5.1.3 switch
// continue break fallthrough
// "break" can be ignored after "case"
// "case" can use multiple condition
// "case" can use range 1...10 or 1...<10

var v = 10;

repeat{
    v = v + 1;
    if( v == 15 ){
        continue;
    }
    print( "v is \(v)");
}while v < 20;


switch v {
    case 100  :
        print( "v is 100");
        break;
    case 10,15  :
        print( "v is 10 or 15");
    case 5  :
        print( "v is 5");
        break;
    default :
        print( "default case");
}

switch v {
    case 100  :
        print( "v is 100");
        fallthrough;
    case 10,15  :
        print( "v is 10 or 15");
    case 5  :
        print( "v is 5");
    default :
        print( "v case");
}

switch Gender {
    case 0,1: //--------------------------------------------> multiple condition
        print("Human")
    default:
        print("Healing Needed")
}

switch Age {
case 0...18: //---------------------------------------------> range
    print("under age")
default:
    print("adult")
}


// 5.2 Loop
// 5.2.1 for
for index in 1...5 { --------------------------------------> range
    print("\(index) multiply by 5 is : \(index * 5)");
}

for _ in 0...<11{ // ---------------------------------------> _ will not assgin value to variable
    print("smaller than 11")
}

// 5.2.2 while
var indexA = 10;
while indexA < 20
{
    print( "indexA is \(indexA)");
    indexA += 1;
}

// 5.2.3 repeat...while
var indexB = 15;
repeat{
    print( "indexB is \(indexB)");
    indexB += 1;
}while indexB < 20;


