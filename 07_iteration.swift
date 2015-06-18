import UIKit

// for-inループ
for num in 1...10 {
    print("\(num),")
}

for _ in 1...15 {
    let num = arc4random_uniform(100)
    print("\(num),")
}

let numList = [3, 2, 6, 5, 8]
var sum = 0
for num in numList {
    sum += num
}
println("Sum: \(sum)")

let sizelist = ["S", "M", "L"]
print("Descending order: ")
for(var i=sizelist.count ; i>0; i--) {
    let size = sizelist[i-1]
    print("\(size), ")
}


// whileループ
var tickets = 5
var power = 30
while (tickets > 0) && (power < 100) {
    tickets--
    power += 20
}
println("Power: \(power), Ticket: \(tickets)")


// do-while文
var a:UInt32, b:UInt32, c:UInt32
var total:UInt32
do {
    a = arc4random_uniform(13)+1
    b = arc4random_uniform(13)+1
    c = arc4random_uniform(13)+1
    total = a + b + c
} while (total != 21)
println("\(a), \(b), \(c)")


// ループにラベルを付ける
xloop:for x in 0...5 {
    yloop:for y in 0...5 {
        if (x<y) {
            print("\n")
            continue xloop
        }
        print((x,y))
    }
}
