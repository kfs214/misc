//
//  ViewController.swift
//  iPrime
//
//  Created by 牛島一樹 on 2018/07/03.
//  Copyright © 2018年 牛島一樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var qNum = 1

    @IBOutlet weak var question: UILabel!
    override func viewDidLoad() {
        var hp = 10
        super.viewDidLoad()
        for _ in 0..<arc4random_uniform(5){
            qNum *= 2
        }
        for _ in 0..<arc4random_uniform(5){
            qNum *= 3
        }
        for _ in 0..<arc4random_uniform(5){
            qNum *= 5
        }
        for _ in 0..<arc4random_uniform(5){
            qNum *= 7
        }

        question.text = String(qNum)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func two() {
        if qNum % 2 == 0{
            qNum /= 2
            question.text = String(qNum)
        }
    }
    @IBAction func three() {
        if qNum % 3 == 0{
            qNum /= 3
            question.text = String(qNum)
        }
    }
    @IBAction func five() {
        if qNum % 5 == 0{
            qNum /= 5
            question.text = String(qNum)
        }
    }
    @IBAction func seven() {
        if qNum % 7 == 0{
            qNum /= 7
            question.text = String(qNum)
        }
    }
    @IBAction func neXT() {
        viewDidLoad()
    }
    
}

