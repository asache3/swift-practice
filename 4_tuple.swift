// タプルを作る
let product1 = ("Swift", 2014)
let product2:(String, Int) = ("Swift", 2014)


// タプルの値を取り出す
let (price1, tax1) = (1000, 80)
println(price1 + tax1)

let (price2, _) = (1000, 80)
println(price2)


// タプルの値にインデックス番号でアクセスする
let kingaku3 = (1000, 80)
let price3 = kingaku3.0
let tax3 = kingaku3.1
println(price3 + tax3)

var user1 = ("鈴木", 29)
user1.1 = 30
println(user1)


// ラベル付きのタプルを作る
let kingaku4 = (price4:100, tax4:80)
let seikyugaku = kingaku4.price4 + kingaku4.tax4
println(seikyugaku)


// タプルを値に持つ変数を宣言する
var user2:(name:String, age:Int, isPass:Bool)
user2.name = "高田"
user2.age = 23
user2.isPass = true
println(user2)
