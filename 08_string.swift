import UIKit

// String
let message = "Hi"
let hello = String("Hello")
println(hello)

let str = "あいうえお12345ABcde"
let num = count(str)
println(num)

let entries = 24
let staff = 3
let str1 = "Entries \(entries)."
let str2 = "\(entries + staff) including staffs."
println(str1 + str2)


// Stringの比較
let str3 = "SWIFT"
if (str3 == "Swift") {
    println("Match with Swift")
} else if (str3.lowercaseString == "swift") {
    println("Match wigh case ignored")
} else {
    println("Different")
}


// Stringと数値を変換する
let kakaku:String = "240"
let kosu:String = "2"
let kingaku = kakaku.toInt()! * kosu.toInt()!
println("\(kingaku) Yen")

let r = 120
let pai = "3.14"
let ensyu:Float = Float(2*r) * (pai as NSString).floatValue
println("Circumferential: \(ensyu)")

let weight = 135.5
let package = 10.2
let str4 = "Content " + weight.description + " gram"
let str5 = "Including package, " + (weight + package).description + "gram"
println(str4 + "\n" + str5)


// String.Index
let str6 = "あいうえおカキクケコ"
let word = "うえお"
let range:Range? = str6.rangeOfString(word)
if let theRange = range {
    let start:String.Index = theRange.startIndex
    let end:String.Index = theRange.endIndex
    println("range \(range!) is \(str6[theRange])")
    println("start \(start) is \(str6[start])")
    println("end \(end) is \(str6[end])")
    println("start..<end is \(str[start..<end])")
} else {
    println("\(word) was not found.")
}

let str7 = "あいうえおカキクケコ"
let start = advance(str7.startIndex, 4)
let end = advance(start, 3)
let pickupStr = str7[start..<end]
println(pickupStr)

let str8 = "あいうえおカキクケコ"
let toIndex = (str8 as NSString).substringToIndex(4)
let fromIndex = (str8 as NSString).substringFromIndex(5)
let range2:NSRange = NSMakeRange(3, 5)
let withRange = (str8 as NSString).substringWithRange(range2)
println("toIndex \(toIndex)")
println("fromIndex \(fromIndex)")
println("withRange \(withRange)")


// Stringを検索する
let str9 = "神奈川県茅ヶ崎市東海岸 1-2-3"
let findIndex = find(str9, "県")
if findIndex != nil {
    let address1 = str9[str9.startIndex...findIndex!]
    println("address1: \(address1)")
    var start2 = findIndex?.successor()
    var end2 = str9.endIndex
    let address2 = str9[start2!..<end2]
    println("address2: \(address2)")
}


// Stringの接頭辞と接尾辞
let itemList = ["a-1-S", "n-9-M", "n-2-S"]
var markAdi:[String] = []
var sizeS:[String] = []
for item in itemList {
    if item.hasPrefix("a") {
        markAdi.append(item)
    }
    if item.hasSuffix("S") {
        sizeS.append(item)
    }
    println(markAdi)
    println(sizeS)
}


// Stringの挿入と削除
var abc:NSMutableString = "ABCDE"
abc.appendString("123")
abc.insertString("auieo", atIndex: 3)
println(abc)

var str10:NSMutableString = "ABCDE12345"
let delRange = NSMakeRange(1, 4)
str10.deleteCharactersInRange(delRange)
println(str10)
