// 関数を変数に代入して使う
func calc(#tanka:Int, kosu:Int) -> Int {
    return tanka * kosu
}

let myCalc = calc
let kingaku = myCalc(tanka: 280, 4)
println(kingaku)


// 関数オブジェクトを引数にする
func hello(user:String) -> String {
    return ("\(user)さん、ハロー")
}

func bye(user:String) -> String {
    return ("\(user)さん、バイ！")
}

func command(someFunc:String -> String, user:String) -> String {
    let msg = someFunc(user)
    return msg
}

let cmds = [hello, bye]
let msg1 = command(cmds[0], "田中")
let msg2 = command(cmds[1], "佐藤")
println(msg1)
println(msg2)


// 関数を戻り値にする
func priceFunc(#age:Int) -> (Int) -> Int {
    func kidsPrice(#kosu:Int) -> Int {
        return 400 * kosu
    }
    
    func adultPrice(#kosu:Int) -> Int {
        return 600 * kosu
    }
    
    if age<12 {
        return kidsPrice
    } else {
        return adultPrice
    }
}

let age10Func = priceFunc(age: 10)
var price = age10Func(2)
println(price)
let age16Func = priceFunc(age: 16)
price = age16Func(2)
println(price)
