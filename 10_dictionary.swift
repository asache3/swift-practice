// 辞書を作る
let sizeTable = ["S":47, "M":52, "L":55]
let numDIc:[Int:String] = [10:"a", 20:"b", 30:"c"]


// 空の辞書
var theUser = [String:Any]()

var theDic:[String:Int] = [:]
if theDic.isEmpty {
    println("theDicは空の辞書です")
} else {
    println(theDic)
}

let aDic = ["a":333, "b":555, "c":999]
println(aDic.count)


// 辞書の値にアクセスする
var members = ["東京":15, "大阪":12, "札幌":9]
let tokyoValue = members["東京"]
let osakaValue = members["大阪"]
let tokyoOsaka = tokyoValue! + osakaValue!
println(tokyoOsaka)

members["大阪"] = 17
println(members)

var dic1 = ["a":1, "b":2, "c":3]
var dic2 = dic1
dic1["b"] = 99
println("dic1は\(dic1)")
println("dic2は\(dic2)")


// 要素を追加する
members["沖縄"] = 14
println(members)


let theKey = "大阪"
let newValue = 22
if let oldValue = members.updateValue(newValue, forKey: theKey) {
    println("\(theKey)の値を\(oldValue)から\(newValue)に更新しました。")
} else {
    println("\(theKey):\(newValue)を追加しました。")
}


// 辞書の要素をすべて取り出す
let tokyometro = ["G":"銀座線", "M":"丸ノ内線", "H":"日比谷線"]
for rosen in tokyometro {
    println(rosen)
}

for (rosenSign, rosenName) in tokyometro {
    println("\(rosenSign)は\(rosenName)です。")
}

for rosenSign in tokyometro.keys {
    print("\(rosenSign)、")
}

let rosenSigns = Array(tokyometro.keys)
println(rosenSigns)

for rosenName in tokyometro.values {
    print("\(rosenName)、")
}

let rosenName = Array(tokyometro.values)
println(rosenName)



// 要素を削除する
var theRace = ["short":20, "half":40, "full":85]
var theKey1 = "short"
if let result = theRace.removeValueForKey(theKey1) {
    println("\(theKey1)は削除しました。値は\(result)でした。")
} else {
    println("\(theKey)はありませんでした。")
}
println(theRace)

theRace["half"] = nil
println(theRace)

theRace.removeAll()
println(theRace)
