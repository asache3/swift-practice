// 辞書を作る
let sizeTable = ["S":47, "M":52, "L":55]
let numDIc:[Int:String] = [10:"a", 20:"b", 30:"c"]


// 空の辞書
var theUser = [String:Any]()

var theDic:[String:Int] = [:]
if theDic.isEmpty {
    println("theDic is empty")
} else {
    println(theDic)
}

let aDic = ["a":333, "b":555, "c":999]
println(aDic.count)


// 辞書の値にアクセスする
var members = ["Tokyo":15, "Osaka":12, "Sapporo":9]
let tokyoValue = members["Tokyo"]
let osakaValue = members["Osaka"]
let tokyoOsaka = tokyoValue! + osakaValue!
println(tokyoOsaka)

members["Osaka"] = 17
println(members)

var dic1 = ["a":1, "b":2, "c":3]
var dic2 = dic1
dic1["b"] = 99
println("dic1 is \(dic1)")
println("dic2 is \(dic2)")


// 要素を追加する
members["Okinawa"] = 14
println(members)


let theKey = "Osaka"
let newValue = 22
if let oldValue = members.updateValue(newValue, forKey: theKey) {
    println("Update \(theKey) from \(oldValue) to \(newValue).")
} else {
    println("\(theKey): Add \(newValue)")
}


// 辞書の要素をすべて取り出す
let tokyometro = ["G":"Ginza", "M":"Marunouchi", "H":"Hibiya"]
for rosen in tokyometro {
    println(rosen)
}

for (rosenSign, rosenName) in tokyometro {
    println("\(rosenSign) is \(rosenName).")
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
    println("Delete \(theKey1). Value is \(result).")
} else {
    println("No \(theKey).")
}
println(theRace)

theRace["half"] = nil
println(theRace)

theRace.removeAll()
println(theRace)
