// 配列を作る
let strArray = ["a", "b", "c", "d", "e"]
let colors:[String] = ["red", "blue", "green"]
var numList:Array<Int> = [12, 34, 56, 78, 90]

var theArray = [Int]()
if theArray.isEmpty {
    println("theArrayは空の配列です")
} else {
    println(theArray)
}

let aArray = [11, 22, 33, 44, 55]
println(aArray.count)


// 配列に値を追加・挿入する
var colors2 = ["red", "green"]
colors2.append("yellow")
println(colors2)

var aList = ["a", "b", "c", "d"]
aList.insert("XYZ", atIndex: 2)
println(aList)


// 値を削除する
var colorArray = ["red", "blue", "green", "black", "white"]
var delColor = colorArray.removeAtIndex(2)
println("\(delColor)を削除しました。\(colorArray)")

var delColor2 = colorArray.removeLast()
println("\(delColor2)を削除しました。\(colorArray)")

colorArray.removeAll()
println(colorArray)


// 配列の値にアクセスする
var abcArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
var str1 = abcArray[2]
var newArray = abcArray[4...6]
println(str1)
println(newArray)

var theArray2:[String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i"]
theArray2[2] = "いう"
theArray2[4...6] = ["赤", "白", "黄色"]
println(theArray2)


// 配列をコピーする
var array1 = [1, 2, 3]
var array2 =  array1
array1[0] = 99
println("array1 \(array1)")
println("array2 \(array2)")


// インデックス番号と値を取り出す
let colorList = ["blue", "yellow", "red", "green"]
for (index, value) in enumerate(colorList) {
    println((index, value))
}


// 最初の値と最後の値を取り出す
var emptyArray:[Int] = []
var abcArray2:[String] = ["a", "b", "c", "d", "e"]
println("先頭は \(emptyArray.first)、最後は \(emptyArray.last)")
println("先頭は \(abcArray2.first!)、最後は \(abcArray2.last!)")


// 値を逆順に並べる
let rankList = ["D201", "F211", "D205", "D149", "D442"]
var startList = rankList.reverse()
println("rankList \(rankList)")
println("startList \(startList)")


// 値をソートする
var ageArray = [34, 23, 31, 26, 28, 22]
ageArray.sort{$0<$1}
println(ageArray)

let stringArray = ["orange", "Apple", "lemon", "Peach"]
let sortedStringArray = stringArray.sorted {
    $0.uppercaseString < $1.uppercaseString
}
println(sortedStringArray)


// 値を抽出する
let ageArray2 = [21, 24, 32, 45, 43, 26, 55, 38, 30, 41]
println(ageArray2)
let age30 = ageArray.filter {$0 >= 30}
println(age30)

let age30to39 = filter(ageArray2, {(age:Int) -> Bool in
    return (age>=30)&&(age<40)
})
println(age30to39)


// すべての値で演算を行う
let numbers = [20, 30, 10, 50]
let plusOnes = numbers.map {$0+1}
println(plusOnes)
