import UIKit

// クラスの定義
class MyClass {
    var msg = "Hello"
    
    func hello() {
        println(msg)
    }
}

let myObj = MyClass()
myObj.hello()
myObj.msg = "Hi"
myObj.hello()


// イニシャライザ
class MyClass2 {
    let msg:String
    let name:String?
    
    init(msg:String = "Hello") {
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
            helloMsg = user + msg
        } else {
            helloMsg = msg
        }
        println(helloMsg)
    }
}

let myObj2 = MyClass2(msg: "Hello")
myObj2.hello()

let myObj3 = MyClass2(msg: "Hello", name: "Emily")
myObj3.hello()


// コンビニエンスイニシャライザ
class MyClass3 {
    let msg:String
    let name:String
    
    init(msg:String, name:String) {
        self.msg = msg
        self.name = name
    }
    
    convenience init(msg:String = "Hello") {
        self.init(msg:msg, name:"Anonymous")
    }
    
    func hello() {
        let helloMsg = name + msg
        println(helloMsg)
    }
}

let myObj4 = MyClass3()
let myObj5 = MyClass3(msg: "Hello")
let myObj6 = MyClass3(msg: "Hi!", name: "Yamada")
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

MyClass4.msg = "Swift is fun"
let myMsg = MyClass4.msg


// クラスメソッド
class Message {
    class func GoodMorning() -> String {
        return "Good Morning."
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
println("Radius: \(myCircle.radius)")
println("Area: \(myCircle.area)")

myCircle.area = 2
println("Radius: \(myCircle.radius)")
println("Area: \(myCircle.area)")


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
                println("\(times) times")
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
        println("Hello")
    }
    func who() {
        // ここでhomeが初期化される
        println(home.owner)
    }
}


// アクセス権
private class MyClass6 {
    private var msg = "Hello"
    private func hello() {
        println(msg)
    }
}
