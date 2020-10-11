import UIKit

//class CircleClass {
//    var radius: Double = 1
//
//    init() {
//    }
//
//    init(radius: Double) {
//        self.radius = radius
//    }
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

//class CircleClass {
//    var radius: Double = 1
//
//    var area: Double {
//        return Double.pi * radius * radius
//    }
//
//    var circumference: Double {
//        return 2 * Double.pi * radius
//    }
//
//    init() {
//    }
//
//    init(radius: Double) {
//        self.radius = radius
//    }
//
//}

//class CircleClass {
//    var radius: Double = 1
//
//    var area: Double {
//        get {
//            return Double.pi * radius * radius
//        }
//    }
//
//    var circumference: Double {
//        get {
//            return 2 * Double.pi * radius
//        }
//    }
//
//    init() {
//    }
//
//    init(radius: Double) {
//        self.radius = radius
//    }
//
//}

//class CircleClass {
//    var radius: Double = 1
//
//    var area: Double {
//        get {
//            return Double.pi * radius * radius
//        }
//
//        set {
//            radius = sqrt(newValue / Double.pi)
//        }
//    }
//
//    var circumference: Double {
//        get {
//            return 2 * Double.pi * radius
//        }
//
//        set {
//            radius = newValue / (2 * Double.pi)
//        }
//    }
//
//    init() {
//    }
//
//    init(radius: Double) {
//        self.radius = radius
//    }
//
//}

class CircleClass {
    var radius: Double = 1 {
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }
    
    var area: Double {
        get {
            return Double.pi * radius * radius
        }
        
        set {
            radius = sqrt(newValue / Double.pi)
        }
    }
    
    var circumference: Double {
        get {
            return 2 * Double.pi * radius
        }
        
        set {
            radius = newValue / (2 * Double.pi)
        }
    }
    
    init() {
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func adjustRadiusByAmount(amount: Double, times: Int = 1) {
        radius += amount * Double(times)
    }
    
}

var circleClassDefault = CircleClass()  // 设定默认半径
circleClassDefault.radius               // 结果是 1
var circleClass = CircleClass(radius: 10)   // 直接设定半径
circleClass.radius                      // 结果是 10

//var newCircleClass = circleClass    // 不会复制
//newCircleClass.radius = 32          // 只有一个副本，因此检查两个引用...
//newCircleClass.radius               // ......更改是可见的。结果是 32
//circleClass.radius                  // 结果是 32
//
//circleClass.area
//circleClass.circumference
//
//circleClass.radius = 10     // 有效： 半径设为 10
//circleClass.radius          // 结果： 10.0
//circleClass.radius = -1     // 无效：didSet代码会拒绝赋值
//circleClass.radius          // 结果： 10.0

circleClass.adjustRadiusByAmount(amount: 5, times: 3)
circleClass.radius  // 结果 = 10 + 3 * 5 = 25
circleClass.adjustRadiusByAmount(amount: 5) // times 的默认值是 1
circleClass.radius  // 结果 = 30

var optionalCircle: CircleClass?

//optionalCircle = CircleClass(radius: 15)

//optionalCircle!.radius    // 崩溃吧应用！

if optionalCircle != nil {
    optionalCircle!.radius
}

var radius = optionalCircle?.radius
//print(radius)

if let radius = optionalCircle?.radius {
    print("radius = \(radius)")
}

optionalCircle?.adjustRadiusByAmount(amount: 5, times: 3)
optionalCircle?.radius
