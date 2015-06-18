// 列挙型 enum
enum Direction:Int {
    case forward = 1
    case backword
    case right
    case left
}

println(Direction.forward)
println(Direction(rawValue: 3))
println(Direction.forward.rawValue)
println(Direction.backword.rawValue)


enum Prize:Int {
    case Gold = 1, Silver, Bronse, Four, Five
    
    func description() -> String {
        switch self {
        case .Gold:
            return "First"
        case .Silver:
            return "Second"
        case .Bronse:
            return "Third"
        case .Four, .Five:
            return String(self.rawValue)
        }
    }
}

let myRank = Prize.Bronse
println(myRank.description())
