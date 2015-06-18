// 構造体 struct
struct ColorBox {
    var width:Int
    var height:Int
    var color:String
}

struct WhiteBox {
    var width:Int = 100
    var height:Int = 100
    let color:String = "white"
}

var redBox = ColorBox(width: 120, height: 100, color: "red")
var theBox = WhiteBox()
println((redBox.width, redBox.height, redBox.color))
println((theBox.width, theBox.height, theBox.color))

redBox.width = 90
redBox.color = "blue"
println("Width: \(redBox.width), Height: \(redBox.height), Color: \(redBox.color)")


// イニシャライザのある構造体
struct Box {
    let width:Int
    let height:Int
    let size:String
    
    init(width:Int, height:Int) {
        self.width = width
        self.height = height
        
        if(width+height) < 250 {
            size = "M"
        } else {
            size = "L"
        }
    }
}

let box1 = Box(width: 120, height: 80)
let box2 = Box(width: 150, height: 120)
println("box1 size is \(box1.size)")
println("box2 size is \(box2.size)")


// 関数がある構造体
struct Lot {
    var kosu:Int
    var tanka:Int
    
    func price() -> Int {
        return kosu * tanka
    }
}

let lot4 = Lot(kosu: 4, tanka: 780)
let price4 = lot4.price()
println("\(price4) Yen")


// subscriptを定義した構造体
struct Stock {
    var name:String
    var data:[String:Int] = [:]
    
    init(name:String) {
        self.name = name
    }
    
    subscript(color:String, size:Double) -> Int {
        get {
            let key = color + size.description
            if let value = data[key] {
                return value
            } else {
                return 0
            }
        }
        
        set {
            let key = color + size.description
            data[key] = newValue
        }
    }
}

var addixStock = Stock(name: "addix")
addixStock["green", 25.0] = 3
addixStock["green", 25.0] += 1
println(addixStock["green", 25.0])
