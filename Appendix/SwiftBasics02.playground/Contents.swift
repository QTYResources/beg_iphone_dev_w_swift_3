import UIKit

//print(Int8.max) // 127
//print(Int8.min) // -128
//print(Int32.max)    // 2 147 483 647
//print(Int32.min)    // -2 147 483 648
//print(UInt32.max)    // 4 294 967 295
//
//let decimal = 123   // 值是 123
////let octal = O077    // 八进制 77 = 十进制 63, 已不再支持
//let hex = 0x1234    // 十六进制 1234 = 十进制 4660
//let binary = 0b1010 // 二进制 1010 = 十进制 10
//
//let v = -1_234  // 与 -1234 相同
//let w = 12_34_56    // 与 123 456 相同

//let a = 1.23    // 这个变量被推断为 Double 类型
//let b: Float = 1.23 // 强制定义为 Float 类型
//
//let c = 1.23e2  // 实际值是 123.0
//let d = 1.23e-1 // 实际值是 0.123
//let e = 1.23E-2 // 与 1.23e-2 相同

//let f:Float = 0.123456789123    // 0.1234568
//let g:Double = 0.123456789123   // 0.123456789123
//let g:Double = 0.12345678912345678  // 0.1234567891234568

//let f:Float = 123456789123456   // 不确定的：1.234568e+14
//let g:Double = 123456789123456  // 精确的：23456789123456
//let h:Double = 12345678912345678    // 不精确的：1.234567891234568e+16

//let a = 123
//let b = 0.456
//let c = Double(a) + b
//let c = a + b

//let a: CGFloat = 123
//let b: Double = 456
//let c = a + CGFloat(a)  // 运算结果是 CGFloat 类型

//let a: CGFloat = 123
//let b: Double = 456
//let c = Double(a) + b   // 运算结果是 Double 类型

1 + 0.5 // 实际值是 1.5

//let a = Int.max
//let b = 1
//let c = Int.max + b

//let a = Int.max
//let b = 1
//let c = a &+ b

//let a = 4
//let b = a << 2  // 结果是 16
//let c = b >> 1 // 结果是 8

//let a = -4
//let b = a << 2  // 结果是 -16
//let c = b >> 1  // 结果是 -8

//let a = 7   // 值0b111
//let b = 3   // 值 0b011
//let c = a & b   // 结果是 0b011 = 3

//let a = 7   // 值0b111
//let b = 3   // 值0b011
//let c = a | b   // 结果是 0b111 = 7

//let a = 7   // 值0b111
//let b = 3   // 值0b011
//let c = a ^ b   // 结果是 0b100 = 4

//var a = 10
//a += 20     // a = a + 20 的简略写法，结果 = 30
//
//var b = 7
//b &= 3  // b = b & 3 的简略写法，结果 = 3

//let a = 0b1001
//let b = ~a  // -10

//let str = "Hello, playground"
//
//let quotes = "Contains \"quotes\""
//
//let backslash = "\\"    // 结果是 \
//print(backslash)
//
//let atSigns = "@\u{40}" // 结果是@@
//
//let specialChars = "Line1\nLine2\tTabled"
//print(specialChars)
//
//print("The value of pi is \(Double.pi)")    // 输出 "The value of pi is 3.141592653589793"
//
//// 代码输出："Area of a circle of radius 3.0 is 28.274333882308138"
//let r = 3.0
//print("Area of a circle of radius \(r) is \(Double.pi * r * r)")

//let s = "That's one small step for man, " +
//        "one giant leap for mankind"
//print(s)    // That's one small step for man, one giant leap for mankind
//
//let s1 = "String one"
//let s2 = "String two"
//let s3 = "String " + "one"
//s1 == s2    // false：字符串不同
//s1 != s2    // true：字符串不同
//s1 == s3    // true：字符串包含相同的字符
//
//s3.count    // 10
//
//s3.utf16.count  // 10

//let s = "Hello"
//for c in s {
//    print(c)
//}

//let c: Character = "s"
//var s = "Book"  // 因为要修改它，所以使用 var 关键字
////s += c      //  错误，不符合语法
//s.append(c) // "Books"

//var s1 = "Book"
//var s2 = s1 // s2 现在是 s1 的副本
//s2 += "s"   // 在 s2 后面添加字符，s1 没有变化
//s1
//s2

//var b = true    // 推断出 Bool 类型
//var b1: Bool
//b1 = false

//var a = 100
//var b = 200
//var c = a
//
//a == c  // true
//a == b  // false
//a != b  // true
//a > b   // false
//a < b   // true
//a >= c  // true

//let a = "AB"
//let b = "C"
//let c = "CA"
//let d = "AB"
//a == b  // false - 字符串的内容不同
//a == d  // true - 字符串的内容相同
//a != c  // true - 字符串的内容不同
//a > b   // false: 根据字母排列顺序
//b < c   // true: 都以 c 开头，但字符串 c 比 b 要长

//var a = 100
//var b = 200
//a == b  // false
//!(a == b)   // !false == true

//var a = 100
//var b = 200
//var c = 300
//
//a < b && c > b  // true：两个表达式都进行了判断
//a < b || c > b  // true：第二个表达式没有进行判断
//a > b && c > b  // false：第二个表达式没有进行判断

//enum DaysOfWeek {
//    case Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
//}

//enum DaysOfWeek {
//    case Sunday
//    case Monday
//    case Tuesday
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//}
//
//
//var day = DaysOfWeek.Sunday // 变量 day 被推断为 DaysOfWeek 类型
//
//day = .Friday   // 请注意句号 "." 是必须的
//
//enum Status {
//    case OK
//    case ERROR(String)
//}
//
//let status = Status.OK
//let failed = Status.ERROR("That does not compute")

//enum DaysOfWeek : Int {
//    case Sunday = 0
//    case Monday
//    case Tuesday
//    case Wednesday
//    case Thursday
//    case Friday
//    case Saturday
//}

enum DaysOfWeek : Int {
    case Sunday = 0
    case Monday // 1
    case Tuesday    // 2
    case Wednesday  // 3
    case Thursday   // 4
    case Friday = 20    // 20
    case Saturday   // 21
}

var day = DaysOfWeek.Saturday
let rawValue = day.rawValue // 结果是 21， DaysOfWeek.Saturday.rawValue 是有效的

enum ResultType : String {
    case SUCCESS = "Success"
    case WARNING = "Warning"
    case ERROR = "Error"
}

let s = ResultType(rawValue: "Error")

let result = ResultType(rawValue: "Error")

//enum {
//    NSUserDomainMask = 1,
//    NSLocalDomainMask = 2,
//    NSNetworkDomainMask = 4,
//    NSAllDomainsMask = 0x0fff,
//};
//Typedef NSUInteger NSSearchPathDomainMask;
