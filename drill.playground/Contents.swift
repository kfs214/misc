//計算ドリルを作ろう
import UIKit

print("四則演算の練習をしましょう")
var com = 10000
while com != 12345678{
    com = 10000
    var random = [Int(arc4random_uniform(4))]

    if random[0] == 0{ //足し算
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(random[1]+random[2]))
        print("\(random[1])+\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int(readLine()!)!
        }
        print("正解です")

    }else if random[0] == 1{       //引き算
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(arc4random_uniform(UInt32(random[1]))))
        random.append(Int(random[1]-random[2]))
        print("\(random[1])-\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int (readLine()!)!
        }
        print("正解です")

    }else if random[0] == 2{       //掛け算
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(arc4random_uniform(10)))
        random.append(Int(random[1]*random[2]))
        print("\(random[1])×\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int (readLine()!)!
        }
        print("正解です")

    }else if random[0] == 3{       //割り算
        random.append(0)
        random.append(Int(arc4random_uniform(100)))
        random.append(Int(arc4random_uniform(100)))
        random[1] = random[2] * random [3]
        print("\(random[1])÷\(random[2])")
        while com != random[3]{
            print("解答を入力してください。")
            com = Int (readLine()!)!
        }
        print("正解です")

    }
    
    print("\n終了コマンドは”12345678です”")
    com = Int(readLine()!)!
}
