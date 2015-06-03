import UIKit

// 定数 
let tax8:Double = 0.08
let theLanguage:String = "Swift"
let now = NSDate()
let logoCOLOR = UIColor(red:0.16, green:0.73, blue:0.61, alpha:1)
let mens:Int = 100, womens:Int = 200

// 変数
var theYear:Int = 2014
var id:String, size:Double
theYear = 1999
id = "123A"
size = 23.5

// 型キャスト
let tax = 0.08
var tanka = 120
var kosu = 3
var price = Double(tanka * kosu) * (1 + tax)
var intPrice = Int(price)
println(intPrice)
