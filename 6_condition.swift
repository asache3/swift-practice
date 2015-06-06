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
