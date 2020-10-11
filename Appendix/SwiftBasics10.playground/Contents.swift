import UIKit

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
    
    var description: String {
        return "Circle of radius \(radius)"
    }
    
    required init() {
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func adjustRadiusByAmount(amount: Double, times: Int = 1) {
        radius += amount * Double(times)
    }
    
    func reset() {
        radius = 1
    }
    
}


class ColoredCircleClass : CircleClass {
    var color: UIColor = UIColor.black
    
    override var description: String {
        return super.description + ", color \(color)"
    }
    
    required init() {
        super.init()
    }
    
    init(radius: Double, color: UIColor) {
        self.color = color
        super.init(radius: radius)
    }
    
    override func reset() {
        super.reset()
        color = UIColor.black
    }
}

var coloredCircle = ColoredCircleClass()
coloredCircle.radius        // 结果： 1
coloredCircle.color         // 结果：black
coloredCircle.description   // 结果："Circle of radius 1.0, color UIExtendedGrayColorSpace 0 1"

coloredCircle = ColoredCircleClass(radius: 20, color: UIColor.red)
coloredCircle.radius        // 结果： 20
coloredCircle.color         // 结果：red
coloredCircle.description   // 结果："Circle of radius 20.0, color UIExtendedSRGBColorSpace 1 0 0 1"
