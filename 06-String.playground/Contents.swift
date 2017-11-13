//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 6 String Operation
// String is a struct
//
var strA = "abc";
if strA.isEmpty { // to get info about whether string is empty     or not
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
for c in strA{ // get all letters in string
    print(c)
}

// format string
let min = 8
let sec = 18
String(format : "%d%d", arguments : [min, sec])

// substring
let urlString = "www.google.com"
let header = (urlString as NSString).substring(to: 3)
//let middle = (urlString as NSString).substringWithRange(NSMakeRange(4, 5))
//let footer = (urlString as NSString).substringFromIndex(from: Int)






