//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 16 Enum
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
