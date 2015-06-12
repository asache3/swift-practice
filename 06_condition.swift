import UIKit

// if文
let tokuten = arc4random_uniform(100) + 1
if tokuten<30 {
    println("がんばりましょう")
} else if tokuten<80 {
    println("合格です")
} else {
    println("素晴らしい！")
}
println("\(tokuten)点でした")


// switch文
let theColor = "green"
switch theColor {
    case "red", "yellow":
        println("赤と黄色は注意")
    case "green":
        println("緑は快適")
    case "gray":
        println("グレイは停止中")
default:
    println("その他は順調")
}
println(theColor)

let size1 = (6, 11)
switch size1 {
case (0, 0):
    println("幅高さともに0です")
case(5...10, 5...10):
    println("規定サイズです")
case(let width, 5...10):
    println("幅\(width)が規格外です")
case(5...10, let height):
    println("高さ\(height)が規格外です")
default:
    println("幅高さともに規定外です")
}

let size2 = (45, 40, 100)
switch size2 {
case let (width, height, _) where (width>=60)||(height>=60):
    println("規定外：幅高さのどちらかが60以上")
case let (_, _, weight) where (weight>80):
    println("規定外：重さ80以上")
default:
    println("規定サイズ内")
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
