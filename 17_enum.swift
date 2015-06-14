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
            return "優勝"
        case .Silver:
            return "準優勝"
        case .Bronse:
            return "準々優勝"
        case .Four, .Five:
            return "入賞"+String(self.rawValue)+"位"
        }
    }
}

let myRank = Prize.Bronse
println(myRank.description())
