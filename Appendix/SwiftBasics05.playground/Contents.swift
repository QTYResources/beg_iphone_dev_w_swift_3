import UIKit

//let random = arc4random_uniform(10)
//if random < 5 {
//    print("Hi")
//} else {
//    print("Ho")
//}

//if random < 5 { // 括号不是必需的
//}
//if (random < 5) {   // 不过也可以这样使用
//}

//if random < 5
//    print("Hi") // 无效：必须在花括号中
//else
//    print("Ho") // 无效：必须在花括号中

//let random = arc4random_uniform(10)
//random < 5 ? print("Hi") : print("Ho")

//let random = arc4random_uniform(10)
//print(random < 5 ? "Hi" : "Ho")

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//let color = dict[0]
//if let color = color {  // 只有当 color 不为 nil 时才会执行
//    print(color)    // "Red"
//}

//let dict = [0: "Red", 1: "Green", 2: "Blue", 3: "Green", 4: "Yellow"]
//let color1 = dict[Int(arc4random_uniform(6))]
//let color2 = dict[Int(arc4random_uniform(6))]
//if let color1 = color1, let color2 = color2 {   // 只有当两个值都不为 nil 时才会执行
//    print("color: \(color1), color2: \(color2)")
//}

//let dict = [0: "Red", 1: "Green", 2: "Blue", 3: "Green", 4: "Yellow"]
//let color1 = dict[Int(arc4random_uniform(6))]
//let color2 = dict[Int(arc4random_uniform(6))]
//if let color1 = color1, let color2 = color2, color1 == color2 {    // 只有当两个颜色相同时才会执行
//    print("color: \(color1), color2: \(color2)")
//}

//let dict = [0: "Red", 1: "Green", 2: "Blue", 3: "Green", 4: "Yellow"]
//let color1 = dict[Int(arc4random_uniform(6))]
//let color2 = dict[Int(arc4random_uniform(6))]
//if dict.count > 3, let color1 = color1, let color2 = color2, color1 == color2 {    // 只有当两个颜色相同时才会执行
//    print("color: \(color1), color2: \(color2)")
//}

//for var i = 0; i < 10; i += 1 {
//    print(i)
//}

//for i in 0..<10 {
//    print(i)
//}

//for i in stride(from: 10, to: 0, by: -2) {
//    print(i)
//}

//let strings = ["A", "B", "C"]
//for string in strings {
//    print(string)
//}

//let d = [0: "Red", 1: "Green", 2: "Blue"]
//for key in d.keys {
//    print("\(key) -> \(String(describing: d[key]))")
//}

//let d = [0: "Red", 1: "Green", 2: "Blue"]
//for (key, value) in d {
//    print("\(key) -> \(value)")
//}

//var i = 10
//while i > 0 {
//    print(i)
//    i -= 1
//}
//
//var j = 10
//repeat {
//    print(j)
//    j -= 1
//} while j > 0

//let value = 11
//switch value {
//    case 2, 3, 5, 7, 11, 13, 17, 19:
//        print("Count is prime and less than 20")
//
//    case 20...30:
//        print("Count is between 20 and 30")
//
//    default:
//        print("Greater than 30")
//}

let value = 11
//switch (value) {
//case 2:
//case 3: // 不合语法，上一个 case 是空的
//    print("Value is 2 or 3")
//default:
//    print("Value is neither 2 or 3")
//}

//switch (value) {
//case 2, 3: // 正确，获取数量2或者3
//    print("Value is 2 or 3")
//default:
//    print("Value is neither 2 or 3")
//}

switch (value) {
case 2: fallthrough
case 3: 
    print("Value is 2 or 3")
default:
    print("Value is neither 2 or 3")
}
