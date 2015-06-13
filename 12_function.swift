import UIKit

// 関数
func plus(a:Double, b:Double) -> Double {
    return a + b
}

var ans = plus(5, 6)
print(ans)

func sum(numbers:Double...) -> Double {
    var total:Double = 0
    for num in numbers {
        total += num
    }
    return total
}

let ans2 = sum(4,3,5,2,8,6)
println(ans2)

func message(who:String = "お客") -> String {
    return who + "様、こんにちは"
}

var msg1 = message()
var msg2 = message(who: "田中")
println("msg1 \(msg1)")
println("msg2 \(msg2)")


// 引数を変数宣言する
func price(var yen:Int) -> Int {
    let tax = 1.08
    yen = Int(floor(Double(yen)*tax))
    return yen
}

let ans3 = price(1250)
println(ans3)


// 引数に外部引数名をつける
func bmi(weight kg:Double, height cm:Double) -> Double {
    if cm == 0 { return -1 }
    var result = kg/pow(cm*0.01, 2)
    result = round(result*10)/10.0
    return result
}

let bmiResult = bmi(weight: 56.5, height: 166)
println(bmiResult)


// 引数や戻り値が配列の関数
func arrayByInt(#array:Array<Int>, num:Int) -> Array<Int> {
    var result = Array<Int>()
    for value in array {
        result.append(value * num)
    }
    return result
}

let ans4 = arrayByInt(array: [1,2,3], 3)
println(ans4)


// 複数の戻り値がある関数
func result(#kokugo:Int, sansu:Int, eigo:Int) -> (total:Int, average:Double) {
    let total = kokugo + sansu + eigo
    var average = Double(total)/3
    average = round(average*10)/10
    return (total, average)
}

let exam = result(kokugo: 65, 68, 72)
println("合計\(exam.total) 平均\(exam.average)")


// 関数のオーバーロード
func calc(#a:Int, b:Int) -> Int {
    return a+b
}

func calc(#c:Int, d:Int) -> Int {
    return c*d
}

func calc(#a:Int, b:Int, c:Int) -> Int {
    return (a+b)*c
}

var ans5 = calc(a: 2, 3)
var ans6 = calc(c: 2, 3)
var ans7 = calc(a: 2, 3, 4)
println(ans5)
println(ans6)
println(ans7)


// ジェネリックな関数
func makeArray<T>(items:T ...) -> [T] {
    var array = [T]()
    for item in items {
        array += [item]
    }
    return array
}

let nums = makeArray(3,5,7,2,8)
let colors = makeArray("red", "blue", "green")
println(nums)
println(colors)
