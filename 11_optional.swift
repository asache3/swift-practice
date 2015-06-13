// オプショナル
var msg:String? = "ハロー"
println(msg)
msg = nil

var msg1:Optional<String> = "ハロー"
var newMsg = msg1! + "ワールド"
println(newMsg)

var count:Int?
let value = 250 * (count ?? 2)
println("\(value)円です。")


// オプショナルバインディング
var sum = 0
var dic:[String:Int?] = ["a":23, "b":nil, "c":10, "d":nil]
for (_, value) in dic {
    if let num = value {
        sum += num
    }
}
println("数値の合計は\(sum)")


// オプショナルチェイニング
class Player {
    var magic:Magic? = Magic()
}

class Magic {
    var spell:String = "puipui"
}

var user:Player = Player()
var spell = user.magic?.spell as String!
println(spell)
