//クラスの拡張
class Human {
    let name:String
    var log:Double = 0.0
    
    init(name:String) {
        self.name = name
    }
    
    func walk(km:Double) {
        log += km
        println("Walk \(log)km!")
    }
    func kmlog() {
        println("Go \(log)km.")
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
        println("Fly \(km)km!")
    }
    // メソッドのオーバーライド
    override func walk(km: Double) {
        if isHyperMode {
            log += km*10
            println("Walk \(km)kmx10 times!")
        } else {
            super.walk(km)
        }
    }
}

let myHero = Hero(name: "Kent", heroName: "Superman")
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
        println("Hello")
    }
}

class Message {
    final func hello() {
        println("Hello")
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
        println("Hit")
    }
    
    func miss() {
        total /= 2
        println("Miss!")
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
        println("Hello, \(name)")
    }
}

extension MyClass2 {
    func thankYou() {
        println("Thank you \(name)")
    }
}

let myObj = MyClass2(name: "Endo")
myObj.hello()
myObj.thankYou()
