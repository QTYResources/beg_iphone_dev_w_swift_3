import UIKit

//struct CircleStruct {
//    var radius: Double
//
//    func getArea() -> Double {
//        return Double.pi * radius * radius
//    }
//
//    func getCircumference() -> Double {
//        return 2 * Double.pi * radius
//    }
//
//}
//
//var circleStruct = CircleStruct(radius: 10)
//
//let r = circleStruct.radius // 读取 radius 属性，结果等于 10
//circleStruct.radius = 2 * r // 半径乘以 2
//
//var newCircleStruct = circleStruct  // 复制结构体
//newCircleStruct.radius = 32         // 只影响副本
//newCircleStruct.radius              // 新值：32
//circleStruct.radius                 // 旧值：20

//let constantCircleStruct = CircleStruct(radius: 5)
//constantCircleStruct.radius = 10    // 无效： constantCircleStruct是常量

struct CircleStruct {
    var radius: Double = 1
    
    init() {
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func getArea() -> Double {
        return Double.pi * radius * radius
    }

    func getCircumference() -> Double {
        return 2 * Double.pi * radius
    }
    
}

let circleStructDefault = CircleStruct()
circleStructDefault.radius  // 结果是 1

circleStructDefault.getArea()   // 返回 area
circleStructDefault.getCircumference()  // 返回 circmference
