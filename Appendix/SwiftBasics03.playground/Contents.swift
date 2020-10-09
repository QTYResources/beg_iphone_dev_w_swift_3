import UIKit

//var integers = [1, 2, 3]
//var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ]

//var integers: [Int] // [Int] 表示 Int 型的数组
//integers = [1, 2, 3]
//
//var empty: [String] = []
//
//integers[0]     // 1
//integers[1] // 3
//days[3] // "Wednesday"
//
//integers[0] = 4 // [4, 2, 3]
//days[3] = "WEDNESDAY"   // 用 "WEDNESDAY" 替换 "Wednesday"

//var integers = [1, 2, 3]
//integers[1..<3] // 将元素 1 和 2 作为一个数组。表达式结果是 [2, 3]
//integers[1 ..< 3] = [4]   // 用 [4] 替换元素 1 和 2。结果是 [1, 4]
//
//integers = [1, 2, 3]
//integers[0...1] = [5, 4]    // 用 [5, 4] 替换元素 0 和 1。结果是 [5, 4, 3]

//var integers = [1, 2, 3]
//integers.count  // 3
//integers[1..<3] = [4]
//integers.count  // 2

//var integers = [1, 2, 3]
//integers.append(4)  // 结果是 [1, 2, 3, 4]
//integers.insert(-1, at: 0)  // 结果是 [-1, 1, 2, 3, 4]

//var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
//days.remove(at: 3); // 移除”Wednesday"后返回给调用对象
//days.removeSubrange(0..<4)  // 留下["Friday", "Saturday"]
//days.removeAll(keepingCapacity: false)  // 留下一个空数组

//let integers = [1, 2, 3]    // 常量数组
//integers = [4, 5, 6]    // 错误：不能替换数组
//integers[0] = 2 // 错误：不能给数组中的元素重新赋值
//integers.removeAll(keepingCapacity: false)  // 错误：不能修改内容

//var integers = [1, 2, 3]
//var integersCopy = integers // 创建 integers 的副本
//integersCopy[0] = 4 // integers没有被改动
//integers    // [1, 2, 3]
//integersCopy    // [4, 2, 3]

//var integers = [1, 2, 3]
//integers.contains(2)    // true
//integers.contains(4)    // false

//let integers = [1, 2, 3]
//integers.firstIndex(of: 3)   // 结果是 2

//let integers = [1, 2, 3]
//integers.firstIndex(of: 5)   // 结果是没有找到

//var dict = ["Red": 0, "Green": 1, "Blue": 2]

//var dict: [String: Int]
//dict = ["Red": 0, "Green": 1, "Blue": 2]

//let value = dict["Red"] // 结果是0，对应键 Red 的值
//
//dict["Yellow"] = 3  // 添加键名为 Yellow 的新值
//dict["Red"] = 4 // 更新键名为 Red 的值

//var dict = ["Red": 0, "Green": 1, "Blue": 2]
//dict.removeValue(forKey: "Red") // 移除键名为 Red 的值
//dict.removeAll()    // 清空所有键值映射

//let fixedDict = ["Red": 0, "Green": 1, "Blue": 2]
//fixedDict["Yellow"] = 3 // 不合语法
//fixedDict["Red"] = 4    // 不合语法
//fixedDict = ["Blue", 7] // 不合语法
//fixedDict.removeValue(forKey: "Red")    // 不合语法

//var dict = ["Red": 0, "Green": 1, "Blue": 2]
//dict.count  // 3

//var dict = ["Red": 0, "Green": 1, "Blue": 2]
//var dictCopy = dict
//dictCopy["Red"] = 4 // 不会影响 dict 的内容
//dict    // ["Red": 0, "Green": 1, "Blue": 2]
//dictCopy    // ["Red": 4, "Green": 1, "Blue": 2]

//let s1 = Set([1, 2, 3])
//let s2: Set<Int> = [1, 2, 3]
//
//s1.contains(1)  // 真
//s1.contains(4)  // 假
//s1.count    // 3

//var s1 = Set([1, 2, 3]) // [2, 3, 1]，注意集合中不会关心顺序
//s1.insert(4)    // [2, 3, 1, 4]
//s1.remove(1)    // [2, 3, 4]
//s1.removeAll()

let s: NSString = "Red,Green,Blue"
let components = s.components(separatedBy: ",") // 调用该 NSString 方法
components

let d = NSDictionary()

//let e = d as Dictionary

let e = d as! [String: String]
