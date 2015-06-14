class Human {
    let name:String
    var log:Double = 0.0
    
    init(name:String) {
        self.name = name
    }
    
    func walk(km:Double) {
        log += km
        println("\(log)km歩きます！")
    }
    func kmlog() {
        println("\(log)km進みました。")
    }
}

class Hero:Human {
    let heroName:String
    var isHyperMode:Bool = false
    
    init(name:String, heroName:String) {
        self.heroName = heroName
        super.init(name: name)
    }
    
    func fly(km:Double) {
        log += km
        println("\(km)km飛びます！")
    }
    // メソッドのオーバーライド
    override func walk(km: Double) {
        if isHyperMode {
            log += km*10
            println("\(km)kmx10倍歩きます！")
        } else {
            super.walk(km)
        }
    }
}

let myHero = Hero(name: "クラークケント", heroName: "スーパーマン")
println(myHero.name)
println(myHero.heroName)

myHero.isHyperMode = false
myHero.walk(3)

myHero.isHyperMode = true
myHero.walk(3)

myHero.fly(40)
myHero.kmlog()


// 継承やオーバーライドを制限する
final class MyClass {
    func hello() {
        println("ハロー")
    }
}

class Message {
    final func hello() {
        println("ハロー")
    }
}


// プロトコル
protocol GameProtocol {
    var gamePoint:Int { get }
    func hit()
    func miss()
}

class MyGame:GameProtocol {
    private var total = 0
    
    var gamePoint:Int {
        get {
            return total
        }
    }
    
    func hit() {
        total += 10
        println("ヒットしました")
    }
    
    func miss() {
        total /= 2
        println("ミスった！")
    }
}

let myGameObj = MyGame()
myGameObj.hit()
println(myGameObj.gamePoint)
myGameObj.miss()
println(myGameObj.gamePoint)


// エクステンション
class MyClass2 {
    var name:String
    init(name:String) {
        self.name = name
    }
    
    func hello() {
        println("ハロー、\(name)さん")
    }
}

extension MyClass2 {
    func thankYou() {
        println("\(name)さん、ありがとう")
    }
}

let myObj = MyClass2(name: "遠藤")
myObj.hello()
myObj.thankYou()
