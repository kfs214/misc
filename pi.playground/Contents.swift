//: Playground - noun: a place where people can play
//円周率計算機
//ソースコードにπが出てくる以上、茶番でしかないのか……？

import UIKit
var n: Double = 96000000   //n角形
var cr = Double.pi / n   //直角三角形のθ
var ins = sin(cr) * n    //内接するn角形
var out = tan(cr) * n   //外接するn角形
print("\(ins)~\(out)")
