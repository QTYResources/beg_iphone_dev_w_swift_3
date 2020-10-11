import UIKit

//init(contentsOfFile path: String, encoding enc: UInt) throws

//let s = String(contentsOfFile: "XX", encoding: String.Encoding.utf8)

//let s = try? String(contentsOfFile: "XX", encoding: String.Encoding.utf8)

//if let s = try? String(contentsOfFile: "XX", encoding: String.Encoding.utf8) {
//    print("Content loaded")
//} else {
//    print("Failed to load contents of file")
//}

//let s = try! String(contentsOfFile: "XX", encoding: String.Encoding.utf8)

//do {
//    let s = try String(contentsOfFile: "XX", encoding: String.Encoding.utf8)
//    print("Loaded content \(s)")
//} catch {
//    print(error)
//}

//func calcThirdSide(_ side1: Double, side2: Double, angle: Double) -> Double {
//    return sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle))
//}
//
//let side3 = calcThirdSide(3, side2: 4, angle: Double.pi / 2)
//print(side3)

enum TriangleError: Error {
    case SideInvalid(reason: String)
    case AngleInvalid(reason: String)
}

//func calcThirdSide(_ side1: Double, side2: Double, angle: Double) throws -> Double {
//    return sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle))
//}
//
//do {
//    let side3 = try calcThirdSide(3, side2: 4, angle: Double.pi / 2)
//    print(side3)
//} catch {
//    print(error)
//}


//func calcThirdSide(_ side1: Double, side2: Double, angle: Double) throws -> Double {
//    if side1 <= 0 {
//        throw TriangleError.SideInvalid(reason: "Side 1 must be >= 0, not \(side1)")
//    }
//    return sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle))
//}
//
//do {
//    let side3 = try calcThirdSide(-1, side2: 4, angle: Double.pi / 2)
//    print(side3)
//} catch {
//    print(error)
//}

//func calcThirdSide(_ side1: Double, side2: Double, angle: Double) throws -> Double {
//    if side1 <= 0 {
//        throw TriangleError.SideInvalid(reason: "Side 1 must be >= 0, not \(side1)")
//    }
//
//    if side2 <= 0 {
//        throw TriangleError.SideInvalid(reason: "Side 2 must be >= 0, not \(side2)")
//    }
//
//    if angle < 0 {
//        throw TriangleError.AngleInvalid(reason: "Angle must be >= 0, not \(angle)")
//    }
//
//    if angle >= Double.pi {
//        throw TriangleError.AngleInvalid(reason: "Angle must be <= π, not \(angle)")
//    }
//
//    return sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle))
//}


func calcThirdSide(_ side1: Double, side2: Double, angle: Double) throws -> Double {
    guard side1 > 0 else {
        throw TriangleError.SideInvalid(reason: "Side 1 must be >= 0, not \(side1)")
    }
    
    guard side2 > 0 else {
        throw TriangleError.SideInvalid(reason: "Side 2 must be >= 0, not \(side2)")
    }
    
    guard angle >= 0 else {
        throw TriangleError.AngleInvalid(reason: "Angle must be >= 0, not \(angle)")
    }
    
    guard angle < Double.pi else {
        throw TriangleError.AngleInvalid(reason: "Angle must be <= π, not \(angle)")
    }
    
    return sqrt(side1 * side1 + side2 * side2 - 2 * side1 * side2 * cos(angle))
}

//do {
//    let side3 = try calcThirdSide(-1, side2: 4, angle: Double.pi / 2)
//    print(side3)
//} catch let e as TriangleError {
//    print(e)
//}


//do {
//    let side3 = try calcThirdSide(-1, side2: 4, angle: Double.pi / 2)
//    print(side3)
//} catch TriangleError.SideInvalid(let reason) {
//    print("Caught invalid side: \(reason)")
//} catch {
//    print("Caught \(error)")
//}

//do {
//    let side3 = try calcThirdSide(-1, side2: 4, angle: Double.pi / 2)
//    print(side3)
//} catch {   // 无效，它必须是最后一个 catch 代码块
//    print("Caught \(error)")
//} catch TriangleError.SideInvalid(let reason) {
//    print("Caught invalid side: \(reason)")
//}

do {
    let side3 = try calcThirdSide(-1, side2: 4, angle: Double.pi / 2)
    print(side3)
} catch TriangleError.SideInvalid(let reason) {
    print("Caught invalid side: \(reason)")
} catch TriangleError.AngleInvalid(let reason) {
    print("Caught invalid side: \(reason)")
}
