// クロージャ
let myFunc = {(a:Int, b:Int) -> Int in
    return a + b
}

let ans = myFunc(1, 2)
println(ans)


// クロージャを引数で受け取る関数
let numbers = [4, 7, 2, 9]
let array1 = map(numbers, {(let v:Int) -> Int in
    return v*2
})
println(array1)

let array2 = map(numbers){(let v:Int) -> Int in
    return v*2
}

let array3 = map(numbers){v in v*2}
let array4 = map(numbers){$0*2}


// sorted()関数での比較方法をクロージャで指定する
let stringArray = ["orange", "Apple", "lemon", "Peach"]
let sortedStringArray1 = stringArray.sorted {
    $0.uppercaseString < $1.uppercaseString
}
println(sortedStringArray1)

let sortedStringArray2 = sorted(stringArray, {(s1:String, s2:String) -> Bool in
    return(s1.uppercaseString < s2.uppercaseString)
})
println(sortedStringArray2)


// クロージャを受け取る関数を作る
func dicMap(var dic:Dictionary<String, Int>, closure:(String,Int)->(String,Int)) -> Dictionary<String, Int> {
    
    for(key, value) in dic {
        let(theKey, newValue) = closure(key, value)
        dic[theKey] = newValue
    }
    return dic
}

let abcDic = ["a":3, "b":4, "c":9]
let result = dicMap(abcDic){(key:String, value:Int) -> (String,Int) in
    return (key, value*2)
}
println(result)


// クロージャ間で共有・保持できる変数
func battery(capacity:Int) -> (Int) -> Int {
    var stock = capacity
    func use(volume:Int) -> Int {
        if (stock>volume) {
            stock -= volume
        } else {
            stock = 0
        }
        return stock
    }
    return use
}

let battery100 = battery(100)
var restStock = battery100(60)
println(restStock)
restStock = battery100(30)
println(restStock)
restStock = battery100(20)
println(restStock)
