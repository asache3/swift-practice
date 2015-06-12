import UIKit

// String
let message = "ハロー"
let hello = String("ハロー")
println(hello)

let str = "あいうえお12345ABcde(^_^)"
let num = count(str)
println(num)

let entries = 24
let staff = 3
let str1 = "参加者\(entries)人。"
let str2 = "スタッフを含めると\(entries + staff)人です。"
println(str1 + str2)


// Stringの比較
let str3 = "SWIFT"
if (str3 == "Swift") {
    println("Swiftと完全一致")
} else if (str3.lowercaseString == "swift") {
    println("大文字小文字を区別しなければ同じ")
} else {
    println("全然違う")
}


// Stringと数値を変換する
let kakaku:String = "240"
let kosu:String = "2"
let kingaku = kakaku.toInt()! * kosu.toInt()!
println("\(kingaku)円")

let r = 120
let pai = "3.14"
let ensyu:Float = Float(2*r) * (pai as NSString).floatValue
println("円周の長さは\(ensyu)")

let weight = 135.5
let package = 10.2
let str4 = "内容量" + weight.description + "グラム"
let str5 = "容器の重さを含めると" + (weight + package).description + "グラム"
println(str4 + "\n" + str5)


// String.Index
let str6 = "あいうえおカキクケコ"
let word = "うえお"
let range:Range? = str6.rangeOfString(word)
if let theRange = range {
    let start:String.Index = theRange.startIndex
    let end:String.Index = theRange.endIndex
    println("rangeの\(range!)は\(str6[theRange])")
    println("startの\(start)番は\(str6[start])")
    println("endの\(end)番は\(str6[end])")
    println("start..<endの範囲は、\(str[start..<end])")
} else {
    println("「\(word)」は見つかりませんでした。")
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
let itemList = ["adi-123-S", "nik-90-M", "adi-33x-M", "nor-dee2-S"]
var markAdi:[String] = []
var sizeS:[String] = []
for item in itemList {
    if item.hasPrefix("adi") {
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
abc.insertString("あいうえお", atIndex: 3)
println(abc)

var str10:NSMutableString = "ABCDE12345"
let delRange = NSMakeRange(1, 4)
str10.deleteCharactersInRange(delRange)
println(str10)
