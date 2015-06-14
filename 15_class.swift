import UIKit

// クラスの定義
class MyClass {
    var msg = "ハロー"
    
    func hello() {
        println(msg)
    }
}

let myObj = MyClass()
myObj.hello()
myObj.msg = "ハーイ！元気？"
myObj.hello()


// イニシャライザ
class MyClass2 {
    let msg:String
    let name:String?
    
    init(msg:String = "ハロー") {
        self.msg = msg
        self.name = nil
    }
    
    init(msg:String, name:String) {
        self.msg = msg
        self.name = name
    }
    func hello() {
        var helloMsg:String
        if let user = name {
            helloMsg = user + "さん。" + msg
        } else {
            helloMsg = msg
        }
        println(helloMsg)
    }
}

let myObj2 = MyClass2(msg: "こんにちは")
myObj2.hello()

let myObj3 = MyClass2(msg: "こんにちは", name: "桜子")
myObj3.hello()


// コンビニエンスイニシャライザ
class MyClass3 {
    let msg:String
    let name:String
    
    init(msg:String, name:String) {
        self.msg = msg
        self.name = name
    }
    
    convenience init(msg:String = "ハロー") {
        self.init(msg:msg, name:"匿名")
    }
    
    func hello() {
        let helloMsg = name + "さん。" + msg
        println(helloMsg)
    }
}

let myObj4 = MyClass3()
let myObj5 = MyClass3(msg: "こんにちは")
let myObj6 = MyClass3(msg: "やあ！", name: "山田")
myObj4.hello()
myObj5.hello()
myObj6.hello()


// クラスプロパティ
class MyGame {
    // Class variables not yet supported
    // class let version:String = "1.0.0"
    // class var userCount:UInt = 3
}

class MyClass4 {
    private struct Property {
        // 静的変数
        static var msg:String = ""
    }
    
    // Computedクラスプロパティ
    class var msg:String {
        get {
            return Property.msg
        }
        set(str) {
            Property.msg = str
        }
    }
}

MyClass4.msg = "Swift面白い！"
let myMsg = MyClass4.msg


// クラスメソッド
class Message {
    class func GoodMorning() -> String {
        return "おはようございます"
    }
}

let msg = Message.GoodMorning()
println(msg)


// Computedプロパティ
class Circle {
    var radius:Double = 1.0
    var area:Double {
        get {
            return radius * radius * M_PI
        }
        set(menseki) {
            radius = sqrt(menseki / M_PI)
        }
    }
}

var myCircle = Circle()
println("半径\(myCircle.radius)")
println("面積\(myCircle.area)")

myCircle.area = 2
println("半径\(myCircle.radius)")
println("面積\(myCircle.area)")


// プロパティオブザーバー
class Player {
    var times = 0
    var level:Int {
        willSet {
            if level != newValue {
                println("\(level) → \(newValue)")
            }
        }
        didSet {
            if oldValue != level {
                ++times
                println("\(times)回目の更新")
            }
        }
    }
    init() {
        level = 0
    }
}

var thePlayer = Player()
thePlayer.level = 10
thePlayer.level = 10
thePlayer.level = 15


// レイジープロパティ
class HomeClass {
    var owner = "asache3"
}

class MyClass5 {
    lazy var home = HomeClass()
    
    func hello() {
        println("ハロー")
    }
    func who() {
        // ここでhomeが初期化される
        println(home.owner)
    }
}


// アクセス権
private class MyClass6 {
    private var msg = "ハロー"
    private func hello() {
        println(msg)
    }
}
