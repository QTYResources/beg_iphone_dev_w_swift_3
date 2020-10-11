import UIKit

protocol Resizable {
    var width: Float { get set }
    var height: Float { get set }
    
    init(width: Float, height: Float)
    func resizeBy(wFactor: Float, hFactor: Float) -> Void
}

class Rectangle: Resizable, CustomStringConvertible {
    var width: Float
    var height: Float
    
    var description: String {
        return "Rectangle, width \(width), height \(height)"
    }
    
    required init(width: Float, height: Float) {
        self.width = width
        self.height = height
    }
    
    func resizeBy(wFactor: Float, hFactor: Float) {
        width *= wFactor
        height *= hFactor
    }
}

let r: Resizable = Rectangle(width: 10, height: 20)

let rect = Rectangle(width: 10, height: 20)
print(rect) // 输出 "Rectangle, width 10.0, height 20.0"
