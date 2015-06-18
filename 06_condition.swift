import UIKit

// if文
let tokuten = arc4random_uniform(100) + 1
if tokuten < 30 {
    println("Bad")
} else if tokuten < 80 {
    println("Good")
} else {
    println("Great")
}
println("\(tokuten) points")


// switch文
let theColor = "green"
switch theColor {
    case "red", "yellow":
        println("Be careful")
    case "green":
        println("Comfortable")
    case "gray":
        println("Under suspension")
default:
    println("Other")
}
println(theColor)

let size1 = (6, 11)
switch size1 {
case (0, 0):
    println("Both are 0")
case(5...10, 5...10):
    println("Regulation size")
case(let width, 5...10):
    println("Width \(width) is irregular.")
case(5...10, let height):
    println("Height \(height) is irregular.")
default:
    println("Both are irregular.")
}

let size2 = (45, 40, 100)
switch size2 {
case let (width, height, _) where (width >= 60) || (height >= 60):
    println("Irregular: Either is more than 60.")
case let (_, _, weight) where (weight > 80):
    println("Irregular: Weight is more than 80.")
default:
    println("Regulation size")
}


// fallthrough
var abc:(a:Bool, b:Bool, c:Bool) = (false, false, false)
let fall = "b"
switch fall {
    case "a":
        abc.a = true
        fallthrough
    case "b":
        abc.b = true
        fallthrough
    case "c":
        abc.c = true
        fallthrough
default:
    println(abc)
}
