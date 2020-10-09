import UIKit

//var dict: [String: Int]
//dict = ["Red": 0, "Green": 1, "Blue": 2]
//let value = dict["Red"]
//
//let yellowValue = dict["Yellow"]
//
//var color = "Red"

//color = nil

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//color = dict[0]   // 不合语法：dict[0] 的值是可选字符串，color 不是可选值

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//var color: String?  // "String?" 表示可选型 String
//color = dict[0] // 语法允许
//print(color)    // 会输出什么内容？Optional("Red")
//
//let actualColor = color!    // color! 表示对可选值进行拆包

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//let color = dict[4]
//let actualColor = color!

//if color != nil {
//    let actualColor = color!
//}

//if let actualColor = color {
//    // 只有当 color 不为 nil 时才会执行。可以修改 actualColor 的值
//    print(actualColor)
//}

//if var actualColor = color {
//    // 只有当 color 不为 nil 时才会执行。可以修改 actualColor 的值
//    print(actualColor)
//}

//if var color = color {
//    // 只有当 color 不为 nil 时才会执行。可以修改 actualColor 的值
//    print(color) // 指向的是存放拆包后值的新变量
//}

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//let color = dict[0]
//if var color = color {
//    // 只有当原始的 color 不为 nil 时才会执行
//    print(color)    // "Red"
//    color = "Green" // 为本地变量重新赋值
//}   // 已经超出了新 color 变量的有效范围
//color   // 指向了原来的值 Red

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//let color = dict[4]
//let actualColor = color ?? "Blue"

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//let actualColor = dict[4] ?? "Blue"

//enum ResultType : String {
//    case SUCCESS = "Success"
//    case WARNING = "Warning"
//    case ERROR = "Error"
//}
//let result = ResultType(rawValue: "Invalid")

//let dict = [0: "Red", 1: "Green", 2: "Blue"]
//
//var color: String!  // 注意感叹号 !
//color = dict[0] // 为可选值赋上字符串 "Red"
//print(color!)    // 自动拆包可选值

//let d = NSDictionary(objects: ["Red", "Green", "Blue"], forKeys: [0 as NSCopying, 1 as NSCopying, 2 as NSCopying])

//let color = d[1]    // 得到一个封包了字符串 "Green" 的可选值

//let color = d[1] as! String

//let d = NSDictionary(objects: [0, 1, 2], forKeys: [0 as NSCopying, 1 as NSCopying, 2 as NSCopying])
//let value = d[1] as! String

//if let value = d[1] as? String {    // 如果 d 的类型不是 String?，as? 就会返回 nil
//    print("OK") // 符合预期，可以正常使用值
//} else{
//    print("Incorrect types")    // 如果 d 的类型不是 [Int: String] 就会执行这里的代码
//}

//if d is [Int: String] { // 如果字典 d 是有 Int 映射到 String，结果就是 true
//    print("Is [Int: String]")
//} else {
//    print("Incorrect type")
//}

//let s = "Fred"
//let n = s as NSString
//
//let label = UILabel()
//let view = label as UILabel

let view: UIView = UILabel()
let label = view as! UILabel
