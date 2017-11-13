//: Playground - noun: a place where people can play

import UIKit

var str = "Hello Playground!"
print(str);

// 1. constant
let Pi = 3.1415926;
let Revenue = 50000;
let name = "Jack Ma";
let Str1 : String = "Hi Beautie";
let numConst : Int = 1;


// 2. variable
var a = 5;
var b = 6;
var c = 7, d = 8;
var sum = a+b+c+d;
print(sum);
var aa : Int = 100;
var bb : Double = 200.0;


// 4. Data Type -----------------------------------> Swift is a strongly-typed language
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

// 4.3 Bool
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

// 5. Control Flow
// 5.1 if
let num = 40;
if num > 10 {
    print("num is bigger than 10");
}
if num > 20 { print("num is bigger than 20"); }
num >= 20 ? print("num is equal bigger than 10") : print("num is smaller than 10");

// 5.2 loop
// 5.2.1 for
for index in 1...5 {
    print("\(index) multiply by 5 is : \(index * 5)");
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

// 5.2.4 switch
//       continue break fallthrough
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
    break;
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
    fallthrough;
case 5  :
    print( "v is 5");
    fallthrough;
default :
    print( "v case");
}

// 6 String Operation
var strA = "abc";
if strA.isEmpty { // to get info about whether string is empty 	or not
    print( "strA is empty" );
} else {
    print( "strA is not empty" );
}
var count = strA.count; // get the length of string
var newStrA = strA.utf8; // get utf8 encoding
var unicode = strA.unicodeScalars; //get unicode
"abc" == "abcd" ? true : false; // to know whether two string is same
var combinStr = "Hello" + " " + "Beautie"; // connect two strings
var bigStr = "\(combinStr) \(strA)"; // insert string to others

// 7 Array
var arr = [Int](repeating:0,count:3);
print(arr);
var array : [Int] = [1,2,3,4];
array[2] = 9;
array.append(12);
array += [1024];
for item in array {
    print(item);
}

var intsA = [Int](repeating: 2, count:2);
var intsB = [Int](repeating: 1, count:3);
var intsC = intsA + intsB;
for item in intsC {
    print(item);
}
if intsC.isEmpty {
    print("This is an empty array");
}else{
    print("\(intsC.count)");
}

// 8 Dictionary
var dic : [Int : String] = [1:"Cat",2:"Dog",3:"Pig"];
dic[2] = "Human";
dic.removeValue(forKey: 0);
for (key, value) in dic {
    print("\(key) :  \(value)");
}
if dic.isEmpty {
    print("This is an empty dictionary");
}else{
    print("\(dic.count)");
}

// 9 Function
func sumFun(a : Int, b : Int) -> Int{
    return a + b;
}
print(sumFun(a:2,b:2));

func strFun() -> String{
    return "Hello Beautie!!!"
}
print(strFun());

func douFun(a:Double) {
    print(a);
}
douFun(a : 3.14);

func changable<N>(members:N...){
    for i in members{
        print(i);
    }
}
changable(members: 1,2,3,4,5);

func calcDecrement(forDecrement total: Int) -> () -> Int {
    var overallDecrement = 0
    func decrementer() -> Int {
        overallDecrement -= total
        return overallDecrement
    }
    return decrementer
}
let decrem = calcDecrement(forDecrement: 30)
print(decrem())


// 10 Closures
let closureExample = { print("This is an example of closure")};
closureExample();

let divide = {(val1:Int,val2:Int)->Int in return val1/val2}
divide(4,2);

let names = ["AT", "AE", "D", "S", "BE"]
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
var reversedA = names.sorted(by: backwards)
print(reversedA)

var reversedB = names.sorted( by: { $0 > $1 } )
print(reversedB)

var reversedC = names.sorted(by: >)
print(reversedC)
var reversedD = names.sorted() { $0 > $1 }
print(reversedD)

// 11 Enum
enum daysOfWeek {
    case Sunday
    case Monday
    case TUESDAY
    case WEDNESDAY
    case THURSDAY
    case FRIDAY
    case Saturday
}
var weekDays = daysOfWeek.FRIDAY;
weekDays = .Saturday;
enum Month : Int{
    case January = 1,
    February,
    March,
    April,
    May,
    June,
    July,
    August,
    September,
    October,
    November,
    December
}
let mon = Month.June.rawValue;

// 12 Struct
struct markStruct{
    var mark1: Int
    var mark2: Int
    var mark3: Int
    
    init(mark1: Int, mark2: Int, mark3: Int){
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
}
print("Good Score:")
var marks = markStruct(mark1: 98, mark2: 96, mark3:100)
print(marks.mark1)
print(marks.mark2)
print(marks.mark3)

print("Bad Score:")
var fail = markStruct(mark1: 34, mark2: 42, mark3: 13)
print(fail.mark1)
print(fail.mark2)
print(fail.mark3)

// 13 Class
class studentMarks {
    var mark1 = 300
    var mark2 = 400
    var mark3 = 900
}
let scores = studentMarks()
print("score \(scores.mark1)")

let mark = studentMarks()
print("Mark1 is \(mark.mark1)")
print("Mark2 is \(mark.mark2)")
print("Mark3 is \(mark.mark3)")

class SampleClass: Equatable {
    let myProperty: String
    init(s: String) {
        myProperty = s
    }
}
func ==(lhs: SampleClass, rhs: SampleClass) -> Bool {
    return lhs.myProperty == rhs.myProperty
}

let spClass1 = SampleClass(s: "Hello")
let spClass2 = SampleClass(s: "Hello")

if spClass1 === spClass2 {
    print("Same")
}

if spClass1 !== spClass2 {
    print("Not Same")
}







