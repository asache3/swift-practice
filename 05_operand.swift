import UIKit

// 算術演算子
let a = 1 + 3 * 2
let b = 10 / (4 - 2)
let c = 5 % 3
let d = -11 % 4
let e = 5 % 1.6

let ans1 = 2 + 10/4
print(ans1)

let ans2 = 2.0 + 10/4
print(ans2)


//インクリメント、デクリメント
var f1 = 0
var g1 = ++f1
println("f1の値は\(f1), g1の値は\(g1)")

var f2 = 0
var g2 = f2++
println("f2の値は\(f2), g2の値は\(g2)")


// 論理演算子
let h = true
let i = false
println("h AND i => \(h && i)")
println("h OR i => \(h || i)")
println("NOT h => \(!h)")


// 代入演算子
var j = 5
let k = 10
j += k + 2
println(j)


// 三項演算子
let l = arc4random_uniform(100)
let m = arc4random_uniform(100)
let bigger = (l>m) ? l : m
println("lは\(l) mは\(m) biggerは\(bigger)")


// レンジ演算子
for i in (1..<5) {
    println("\(i)回目")
}

for i in (1...5) {
    println("\(i)回目")
}


// 演算子のオーバーロード
let num = 1 + 2
let name = "田中" + "一郎"
let colors = ["red", "blue"] + ["white", "black"]
println(num)
println(name)
println(colors)
