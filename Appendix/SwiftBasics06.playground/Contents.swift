import UIKit

//func areaOfRectangle(width: Double, height: Double) -> Double {
//    return width * height
//}
//
//func hello() {
//    print("Hello, world")
//}
//
//let area = areaOfRectangle(width: 20, height: 10)

//func areaOfRectangle(width w: Double, height h: Double) -> Double {
//    return w * h
//}
//
//let area = areaOfRectangle(width: 20, height: 10)
//
//func separateWords(str: String, delimiter: String = " ") -> [String] {
//    return str.components(separatedBy: delimiter)
//}
//
//let result = separateWords(str: "One small step")
//print(result)   // ["One", "small", "step"]

//func separateWords(str: String, _ delimiter: String = " ") -> [String] {
//    return str.components(separatedBy: delimiter)
//}
//
//let result = separateWords(str: "One, Two, Three", ".") // delimiter 是必需的
//print(result)   // ["One, Two, Three"]

//func areaOfRectangle(_ w: Double, _ h: Double) -> Double {
//    return w * h
//}
//
//let area = areaOfRectangle(20, 10)

var operation: (Double) -> Double

func doubleMe(number: Double) -> Double {
    return 2 * number
}

operation = doubleMe

operation(2)    // 结果是 4

func quadrupleMe(number: Double) -> Double {
    return 4 * number
}
operation = quadrupleMe
operation(2)    // 结果是 8

func compareInts(_ first: Int, _ second: Int) -> Bool {
    return first < second
}

var values = [12, 3, 5, -4, 16, 18]
//let sortedValues = values.sorted(by: compareInts)
//sortedValues // 结果：[-4, 3, 5, 12, 16, 18]

//values.sort(by: compareInts)
values // 结果：[-4, 3, 5, 12, 16, 18]

//let sortedValues = values.sorted(by: {(first: Int, second: Int) -> Bool in
//    return first < second
//})

//let sortedValues = values.sorted() {    // 闭包现在位于括号外
//    (first: Int, second: Int) -> Bool in
//        return first < second
//}

//let sortedValues = values.sorted() {
//    first, second in    // Swift 可以推断出参数类型和返回类型
//        return first < second
//}

//let sortedValues = values.sorted() { return $0 < $1 }

//let sortedValues = values.sorted() { $0 < $1 }

func getInterestCalculator(rate: Double) -> (Double, Int) -> Double {
    let calculator = {
        (amount: Double, years: Int) -> Double in rate * amount * Double(years)
    }
    return calculator
}

let calculator = getInterestCalculator(rate: 0.05)
calculator(100.0, 2)    // 结果是 10: 100 美元在利率为 5% 时的 2 年利息
