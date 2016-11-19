//
//  ViewController.swift
//  password
//
//  Created by Lilico Isomata on 2016/06/25.
//  Copyright © 2016年 Lilico Isomata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //結果表示ラベル
    @IBOutlet var resultLabel1: UILabel!//右1
    @IBOutlet var resultLabel2: UILabel!//右2
    @IBOutlet var resultLabel3: UILabel!//右3
    @IBOutlet var resultLabel4: UILabel!//右4
    @IBOutlet var resultLabel5: UILabel!//右5
    @IBOutlet var resultLabel6: UILabel!//右6
    
    
    //カウント用ラベル
    
    //@IBOutlet var countLabel: UILabel!
    
    //探し出す数字
    
    var password = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel1.text = "?"
        resultLabel2.text = "?"
        resultLabel3.text = "?"
        resultLabel4.text = "?"
        resultLabel5.text = "?"
        resultLabel6.text = "?"
        
        
        //countLabel.text = "0"
        
        //Random int between 0 and 1000000 - 1
        
        password = Int(arc4random_uniform(1000000))
        
        //password =
        
    }
    
    @IBAction func start() {
        print("押した？")
        //0 - 9999までのループ
        for i in 0 ..< 1000000 {
            
            // countLabelにカウント中の文字を表示する
            
           // countLabel.text = String(i)
            
           
            //カウントが一瞬で終わらないように処理を遅延させている
            
            NSRunLoop.mainRunLoop()
                .runUntilDate(NSDate(timeIntervalSinceNow: 0.000001))
            
            
            
                
            var digits = [Int]() // passwordのそれぞれの位ごとの配列の準備（宣言）
            
            var num = i
            for j in 0 ..< 6 {
                digits.append(num % 10) // j桁目の数字
                    
                num /= 10
            }
            //ラベルに何番目のdigits（配列）が入るかを指定
            resultLabel1.text = String(digits[0])
            resultLabel2.text = String(digits[1])
            resultLabel3.text = String(digits[2])
            resultLabel4.text = String(digits[3])
            resultLabel5.text = String(digits[4])
            resultLabel6.text = String(digits[5])
                
                
                //当たりの処理終了
            
            if i == password {
              break
            }
            
                
                
            
        }
    }
    
    @IBAction func reset() {
        
        resultLabel1.text = "?"
        resultLabel2.text = "?"
        resultLabel3.text = "?"
        resultLabel4.text = "?"
        resultLabel5.text = "?"
        resultLabel6.text = "?"
    
    password = 0
        
    }


    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
}

