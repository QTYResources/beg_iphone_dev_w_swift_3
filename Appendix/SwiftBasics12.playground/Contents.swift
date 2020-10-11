import UIKit

extension UIColor {
    class func randomColor() -> UIColor {
        let red = CGFloat(Double((arc4random() % 256)) / 255)
        let green = CGFloat(Double((arc4random() % 256)) / 255)
        let blue = CGFloat(Double((arc4random() % 256)) / 255)
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }
}

let randomColor = UIColor.randomColor()
