//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 11 Function

// 1. no return no parameters
func about() -> Void{
    print("iPhone7")
}
func About(){
    print("iPhone7")
}
about()
About()

// 2. has return no parameters
func readMessage() -> String{
    return "A u ready?"
}
print(readMessage())

// 3. has parameters no return
func callPhone(phoneNum:String){
    print("phone number is \(phoneNum)")
}
callPhone("110 + 911")

// 4. has returns and parameters
func sum(num1:Int,num2:Int)->Int{
    return num1 + num2
}
sum(11, num2: 22)

// Parameter
// internal parameter : the parameter exists inside of function; and in the default condition, all parameters are internal parameters
// external parameter : the parameter exists outside of function; and in the default condition, those paramethers behind second one are external parameters
func sum2(num1 num1 : Int, num2 : Int) -> Int{
    return num1 + num2
}
sum2(num1: 11, num2: 22)

// default parameter
func coffee(coffeeName : String = "Dark") -> String {
    return "your \(coffeeName) coffee is ready"
}
coffee()

// changable parameter
func sum3(num : Int...) -> Int{
    var result = 0;
    for n in num {
        result += n
    }
    return result
}

// pointer parameter
var m = 20
var n = 30

func swapData (inout m : Int, inout n : Int){
    let temp = m
    m = n
    n = temp
}
swapData(&m, n: &n)
print("m : \(m), n : \(n)")

// nested function
func test(){
    func demo(){
        print("demo")
    }
    print("test")
    demo()
}
test()


//func sumFun(a : Int, b : Int) -> Int{
//    return a + b;
//}
//print(sumFun(2,b:2));
//
//func strFun() -> String{
//    return "Hello Beautie!!!"
//}
//print(strFun());
//
//func douFun(a:Double) {
//    print(a);
//}
//douFun(3.14);
//
//func changable<N>(members:N...){
//    for i in members{
//        print(i);
//    }
//}
//changable(1,2,3,4,5);
//
//func calcDecrement(forDecrement total: Int) -> () -> Int {
//    var overallDecrement = 0
//    func decrementer() -> Int {
//        overallDecrement -= total
//        return overallDecrement
//    }
//    return decrementer
//}
//let decrem = calcDecrement(forDecrement: 30)
//print(decrem())