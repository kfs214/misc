//
//  FirstViewController.swift
//  iMath
//
//  Created by 牛島一樹 on 2018/07/05.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
    var x = [Int(arc4random_uniform(18)), Int(arc4random_uniform(18))]
    var rate = [0, 0]
    var trueReplied = false

    @IBOutlet weak var x1: UITextField!
    @IBOutlet weak var x2: UITextField!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var rateIndicater: UILabel!
    @IBOutlet weak var trueFalseIndicater: UILabel!
    @IBAction func trueFalse() {
        if Int(x1.text!) != nil && Int(x2.text!) != nil && x1.text != "" && x2.text != ""{
            let ansSet: Set = [Int(x1.text!)!, Int(x2.text!)!]
            let xSet: Set = [x[0], x[1]]
            if trueReplied == false{
                if ansSet == xSet{
                    trueFalseIndicater.text = "True"
                    rate[1] += 1
                    trueReplied = true
                }else{
                    trueFalseIndicater.text = "False"
                }
                rate[0] += 1
            }
            rateIndicater.text = "True : \(rate[1]) / \(rate[0])"
        }
    }
    @IBAction func next() {
        main()
        trueFalseIndicater.text = ""
        x1.text = ""
        x2.text = ""
        trueReplied = false
    }
    
    func pm(x: Int) -> String{
        var y = ""
        if x == 0{
            return y
        }else if x < 0{
            y = String(x)
            return y
        }else{
            y = "+"
            y += String(x)
            return y
        }
    }
   
    
    func main(){
        repeat{
        x = [Int(arc4random_uniform(18)), Int(arc4random_uniform(18))]
        }while x[0] == x[1]
        
        x[0] = 9 - x[0]
        x[1] = 9 - x[1]
        let b = -x[0] - x[1]
        let c = x[0] * x[1]
        if b == 1{
            question.text = "+x " + pm(x: c) + " = 0"
        }else if b == -1{
            question.text = "-x " + pm(x: c) + " = 0"
        }else if b != 0{
                question.text = pm(x: b) + "x " + pm(x: c) + " = 0"
        }else{
            question.text = pm(x: c) + " = 0"
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        main()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

